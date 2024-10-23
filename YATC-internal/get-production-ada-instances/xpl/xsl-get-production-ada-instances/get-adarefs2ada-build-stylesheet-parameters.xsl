<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.dkk_rnl_hwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This stylesheet takes an <yatci:build*> element as input and produces a JSON map with all the 
       parameters to be passed to the build stylesheet.
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

    <xsl:mode on-no-match="fail"/>

    <xsl:import href="../../../../YATC-shared/xsl/build-stylesheet-parameters.xsl"/>

    <!-- ================================================================== -->

    <xsl:template match="/" as="map(*)">

        <xsl:variable name="additional-build-stylesheet-parameters" as="map(*)">
            <xsl:map>
                <!-- The following information is not in all build elements. Use empty strings if not there: -->
                <xsl:map-entry key="'adaWorkingSetDirectory'" select="string(/yatci:*/yatci:ada-working-set[1]/@directory)"/>
                <xsl:map-entry key="'outputDirectory'" select="string(/yatci:*/yatci:output[1]/@directory)"/>
            </xsl:map>
        </xsl:variable>
        
        <xsl:sequence select="map:merge((yatcs:basic-build-parameters-map(/*), $additional-build-stylesheet-parameters))"/>

    </xsl:template>

</xsl:stylesheet>
