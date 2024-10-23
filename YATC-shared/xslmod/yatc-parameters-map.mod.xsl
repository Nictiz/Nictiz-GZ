<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.p5y_tm4_dwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This module extends the functionality of yatc-parameters.mod.xsl for use in XSLT 3. 
       It can return the parameters as a more easily accessible map construct.
       
       Depends on:
       - general.mod.xsl
       - href.mod.xsl
       - yatc-system.mod.xsl
       - yatc-parameters.mod.xsl
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

    <xsl:function name="yatcs:get-combined-parameters-map" as="map(*)">
        <!-- This function returns the parameters, as computed by yatcs:get-combined-parameters(), as a map. -->
        <xsl:param name="callerStaticBaseUri" as="xs:string">
            <!-- The static base URI for which the set of active parameters must be computed. -->
        </xsl:param>
        <xsl:param name="hrefAdditionalParameterDocuments" as="xs:string*">
            <!-- The href-s of any additional parameter files you want to add. These files do not need to be accessible, 
                 the function checks this.  -->
        </xsl:param>

        <xsl:variable name="parameters" as="element(yatcs:parameters)" select="yatcs:get-combined-parameters($callerStaticBaseUri, $hrefAdditionalParameterDocuments)"/>
        <xsl:map>
            <xsl:for-each select="$parameters/yatcs:parameter">
                <xsl:map-entry key="string(@name)" select="yatcs:value ! string(.)"/>
            </xsl:for-each>
        </xsl:map>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:get-combined-parameters-map" as="map(*)">
        <!-- Single parameter version of yatcs:get-combined-parameters-map#2 -->
        <xsl:param name="callerStaticBaseUri" as="xs:string">
            <!-- The static base URI for which the set of active parameters must be computed. -->
        </xsl:param>

        <xsl:sequence select="yatcs:get-combined-parameters-map($callerStaticBaseUri, ())"/>
    </xsl:function>

</xsl:stylesheet>
