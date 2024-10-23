<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ct4_k5q_5wb" xmlns:yatcs-td="https://nictiz.nl/ns/YATC-shared/text-document" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Processes any macro expansions in a YATC text document (<macro> definition elements and $MACRO macro references).
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

    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/simple-macros.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:template match="(yatcs-td:text-document | yatcs-td:section)[exists(yatcs-td:macro)]">
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="false" select="map{}" tunnel="true"/>
        
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="yatcs-td:* except yatcs-td:macro">
                <xsl:with-param name="macroMap" as="map(xs:string, xs:string)" select="local:macro-definitions-to-map($macroMap, yatcs-td:macro)" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="text()[contains(., $yatcs:simpleMacroStartCharacter)]">
        <!-- This piece of text might have a macro inside. -->
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="false" select="map{}" tunnel="true"/>
        
        <xsl:value-of select="local:expand-macros-in-text(., $macroMap)"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="@*[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="false" select="map{}" tunnel="true"/>
        <xsl:attribute name="{node-name(.)}" select="local:expand-macros-in-text(., $macroMap)"/>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:function name="local:macro-definitions-to-map" as="map(xs:string, xs:string)">
        <xsl:param name="existingMacroMap" as="map(xs:string, xs:string)"/>
        <xsl:param name="macroDefinitions" as="element(yatcs-td:macro)*"/>
        
        <xsl:choose>
            <xsl:when test="empty($macroDefinitions)">
                <xsl:sequence select="$existingMacroMap"/>
            </xsl:when>
            <xsl:otherwise>
                <!-- Put the first <macro> element in the map and use this to expand the rest (recursive): -->
                <xsl:variable name="firstMacroElement" as="element(yatcs-td:macro)" select="$macroDefinitions[1]"/>
                <xsl:variable name="firstMacroElementValueRaw" as="xs:string" select="string($firstMacroElement/@value) "/>
                <xsl:variable name="firstMacroElementValue" as="xs:string" select="if (normalize-space($firstMacroElementValueRaw) eq '') then string($firstMacroElement/@default) else $firstMacroElementValueRaw"/>
                <xsl:variable name="firstMacroElementMap" as="map(xs:string, xs:string)" select="map{$yatcs:simpleMacroStartCharacter || string($firstMacroElement/@name): local:expand-macros-in-text($firstMacroElementValue, $existingMacroMap)}"/>
                <xsl:variable name="newMacroMap" as="map(xs:string, xs:string)" select="map:merge(($existingMacroMap, $firstMacroElementMap), map{'duplicates': 'use-last'})"/>
                <xsl:sequence select="local:macro-definitions-to-map($newMacroMap, subsequence($macroDefinitions, 2))"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:expand-macros-in-text" as="xs:string">
        <xsl:param name="in" as="xs:string"/>
        <xsl:param name="macroMap" as="map(xs:string, xs:string)"/>

        <xsl:sequence select="yatcs:expand-simple-macros($in, $macroMap, false())"/>
    </xsl:function>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <!--<xsl:function name="local:map-out" as="xs:string">
        <xsl:param name="map" as="map(xs:string, xs:string)"/>
        <xsl:sequence select="string-join(for $k in map:keys($map) return $k || '=' || $map($k), '; ')"/>
    </xsl:function>-->
    
</xsl:stylesheet>
