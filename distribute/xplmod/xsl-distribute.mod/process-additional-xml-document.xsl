<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.dvs_4gq_bzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet processes an additional XML document in a distribution. It takes care
       of any simple macro substitutions in this document.
       
       The input is the <additional-xml-document> element from the distribution data. 
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

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/simple-macros.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL VARIABLES: -->

    <xsl:variable name="hrefSource" as="xs:string?" select="xs:string(/*/@_href-source)"/>
    <xsl:variable name="substitutionsMap" as="map(xs:string, xs:string)" select="parse-json(/*/@_substitutions-map)"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <!-- Find out where to fond the source document: -->
        <xsl:variable name="rootElement" as="element()">
            <xsl:choose>
                <xsl:when test="exists($hrefSource)">
                    <xsl:sequence select="doc($hrefSource)/*"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:sequence select="/*/*[1]"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:apply-templates select="$rootElement"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="text()[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:value-of select="yatcs:expand-simple-macros(string(.), $substitutionsMap, false())"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@*[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:attribute name="{node-name(.)}" select="yatcs:expand-simple-macros(string(.), $substitutionsMap, false())"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="comment()[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:comment select="yatcs:expand-simple-macros(string(.), $substitutionsMap, false())"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->


    <xsl:template match="processing-instruction()[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:processing-instruction name="{local-name(.)}" select="yatcs:expand-simple-macros(string(.), $substitutionsMap, false())"/>
    </xsl:template>

</xsl:stylesheet>
