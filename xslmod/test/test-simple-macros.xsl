<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.xzn_qkp_pzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       test-simple-macros.xsl
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

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:include href="../general.mod.xsl"/>
    <xsl:include href="../simple-macros.mod.xsl"/>

    <!-- ================================================================== -->

    <xsl:variable name="macros" as="map(xs:string, xs:string)" select="map{'$A': 'AAAA/$B', '$B': '$A/$TEST/BBB', '$TEST': 'xxx'}"/>
    <xsl:variable name="in" as="xs:string" select="'$$B=$B'"/>

    <xsl:template match="/">
        <simple-macros-test>
            <in>{$in}</in>
            <out>{yatcs:expand-simple-macros($in, $macros, false())}</out>
        </simple-macros-test>
        
        
    </xsl:template>
    
    

</xsl:stylesheet>
