<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ot4_z1x_5wb" xmlns:c="http://www.w3.org/ns/xproc-step" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Processes a directory list with text documents into a simple linear list with full references.
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

    <xsl:mode on-no-match="shallow-skip"/>
    
    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ================================================================== -->

    <xsl:template match="/*">
        <text-documents>
            <xsl:apply-templates/>
        </text-documents>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="c:file">
        
        <xsl:variable name="hrefSource" as="xs:string" select="yatcs:href-concat(ancestor-or-self::c:*/@xml:base)"/>
        
        <xsl:variable name="baseName" as="xs:string" select="yatcs:href-name-noext(@name)"/>
        <xsl:variable name="targetName" as="xs:string" select="$baseName || '.md'"/>
        <xsl:variable name="targetDir" as="xs:string" select="$hrefSource => yatcs:href-path() => yatcs:href-path()"/>
        <xsl:variable name="hrefTarget" as="xs:string" select="yatcs:href-concat(($targetDir, $targetName))"/>
        
        <text-document name="{$baseName}" source="{$hrefSource}" target="{$hrefTarget}"/>
    </xsl:template>
    
</xsl:stylesheet>
