<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" exclude-result-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This stylesheet is a stand-alone driver for the yatcs:get-combined-parameters#2 function in ../xslmod/yatc-parameters.mod.xsl.
       It returns the parameters as a JSON map construct. This is useful in XProc stylesheets to get the parameters on board in
       an (XProc) map variable.
    -->
    <!-- ======================================================================= -->
    <!--
    Copyright © Nictiz
    
    This program is free software; you can redistribute it and/or modify it under the terms of the
    GNU Lesser General Public License as published by the Free Software Foundation; either version
    2.1 of the License, or (at your option) any later version.
    
    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    See the GNU Lesser General Public License for more details.
    
    The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
    -->
    <!-- ======================================================================= -->
    <!-- SETUP: -->

    <xsl:output method="json" encoding="UTF-8"/>

    <xsl:include href="../xslmod/general.mod.xsl"/>
    <xsl:include href="../xslmod/href.mod.xsl"/>
    <xsl:include href="../xslmod/yatc-system.mod.xsl"/>
    <xsl:include href="../xslmod/yatc-parameters.mod.xsl"/>
    <xsl:include href="../xslmod/yatc-parameters-map.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <xsl:param name="callerStaticBaseUri" as="xs:string" required="false" select="static-base-uri()">
        <!-- The static base URI of the location from where the set of parameters must be computed. -->
    </xsl:param>

    <xsl:param name="hrefAdditionalParameterDocuments" as="xs:string*" required="no" select="()">
        <!-- Optional href-s of additional parameter documents to take into account. -->
    </xsl:param>

    <!-- ================================================================== -->

    <xsl:template match="/" as="map(*)">
        <xsl:variable name="staticBaseUriNormalized" as="xs:string" select="yatcs:href-protocol-add(yatcs:href-canonical($callerStaticBaseUri), $yatcs:protocol-file, false())"/>
        <xsl:sequence select="yatcs:get-combined-parameters-map($staticBaseUriNormalized, $hrefAdditionalParameterDocuments)"/>
    </xsl:template>

</xsl:stylesheet>
