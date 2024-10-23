<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.rbc_rtd_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet takes a distribution data file as input and pre-processes 
       all the distribution related macros.
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

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/simple-macros.mod.xsl"/>

    <xsl:mode on-no-match="shallow-copy"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <xsl:param name="distributionVersion" as="xs:string?" required="yes"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <!-- All standard defined macro keys: -->
    <xsl:variable name="local:macroDistributionName" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DISTRIBUTIONNAME'"/>
    <xsl:variable name="local:macroDistributionVersion" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DISTRIBUTIONVERSION'"/>
    <xsl:variable name="local:macroDateTimeISO" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DATETIMEISO'"/>
    <xsl:variable name="local:macroDate" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DATEFULL'"/>
    <xsl:variable name="local:macroDateCompact" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DATECOMPACT'"/>
    <xsl:variable name="local:macroTime" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'TIMEFULL'"/>
    <xsl:variable name="local:macroTimeCompact" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'TIMECOMPACT'"/>
    <xsl:variable name="local:macroTimeShort" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'TIMESHORTFULL'"/>
    <xsl:variable name="local:macroTimeShortCompact" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'TIMESHORTCOMPACT'"/>
    
    <xsl:variable name="local:macroAllPredefined" as="xs:string+" select="($local:macroDistributionName, $local:macroDistributionVersion, $local:macroDateTimeISO, $local:macroDate, $local:macroDateCompact, $local:macroTime, $local:macroTimeCompact, $local:macroTimeShort, $local:macroTimeShortCompact)"/>
    
    <xsl:variable name="local:current-dateTime" as="xs:dateTime" select="current-dateTime()"/>

    <!-- ======================================================================= -->
    <!-- TRAVERSE AND PROCESS ALL MACROS: -->

    <xsl:template match="/*:distribute-data">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="macroMap" as="map(xs:string, xs:string)" tunnel="true">
                    <xsl:call-template name="macros-to-map">
                        <xsl:with-param name="additionalMacros" as="map(xs:string, xs:string)">
                            <xsl:map>
                                <xsl:map-entry key="$local:macroDistributionVersion" select="string($distributionVersion)"/>
                                <xsl:map-entry key="$local:macroDateTimeISO" select="string($local:current-dateTime)"/>
                                <xsl:map-entry key="$local:macroDate" select="format-dateTime($local:current-dateTime, '[Y0001]-[M01]-[D01]')"/>
                                <xsl:map-entry key="$local:macroDateCompact" select="format-dateTime($local:current-dateTime, '[Y0001][M01][D01]')"/>
                                <xsl:map-entry key="$local:macroTime" select="format-dateTime($local:current-dateTime, '[H01]:[m01]:[s01]')"/>
                                <xsl:map-entry key="$local:macroTimeCompact" select="format-dateTime($local:current-dateTime, '[H01][m01][s01]')"/>
                                <xsl:map-entry key="$local:macroTimeShort" select="format-dateTime($local:current-dateTime, '[H01]:[m01]')"/>
                                <xsl:map-entry key="$local:macroTimeShortCompact" select="format-dateTime($local:current-dateTime, '[H01][m01]')"/>
                            </xsl:map>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:with-param>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:distribution[not(local:is-child-of-additional-xml-document(.))]">
        <!-- A <distribution> element can have <macros> child and adds the name of the distribution to the macros. -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="macroMap" as="map(xs:string, xs:string)" tunnel="true">
                    <xsl:call-template name="macros-to-map">
                        <!-- Add the name of the distribution to the map: -->
                        <xsl:with-param name="additionalMacros" select="map{$local:macroDistributionName: string(@name) }"/>
                    </xsl:call-template>
                </xsl:with-param>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="(*:distributions | *:group | *[starts-with(local-name(.), 'flatten-')])[not(local:is-child-of-additional-xml-document(.))]">
        <!-- These elements can have a <macros> child element. -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="macroMap" as="map(xs:string, xs:string)" tunnel="true">
                    <xsl:call-template name="macros-to-map"/>
                </xsl:with-param>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:function name="local:is-child-of-additional-xml-document" as="xs:boolean">
        <!-- This function tests whether an element is inside a <additional-xml-document> construction. If so, we
             have to take care that we do not expand/add macros. -->
        <xsl:param name="elm" as="element()"/>
        
        <xsl:sequence select="exists($elm/ancestor-or-self::*:additional-xml-document)"/>
    </xsl:function>
    
    <!-- ======================================================================= -->
    <!-- MACRO EXPANSION: -->

    <xsl:template match="@*[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="true" tunnel="true"/>

        <xsl:variable name="attributeName" as="xs:string" select="local-name(.)"/>
        <xsl:variable name="filenameSafeNeeded" as="xs:boolean" select="starts-with($attributeName, 'href-') or ends-with($attributeName, '-directory')"/>
        <xsl:attribute name="{node-name(.)}" select="yatcs:expand-simple-macros(string(.), $macroMap, $filenameSafeNeeded, $local:macroAllPredefined)"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="text()[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="true" tunnel="true"/>

        <xsl:value-of select="yatcs:expand-simple-macros(string(.), $macroMap, false())"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:distribution/(*:additional-text-document | *:combine-additional-text-documents | *:additional-xml-document)">
        <!-- Because, as a result of these instructions, we're going to substitute macros in file contents, 
             preserve the current status of the macros (as a map serialized as JSON): -->
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="true" tunnel="true"/>

        <xsl:copy>
            <xsl:attribute name="_substitutions-map" select="serialize($macroMap, map{'method': 'json', 'indent': false()})"/>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- ======================================================================= -->
    <!-- MACROS TO MAP: -->

    <xsl:template name="macros-to-map" as="map(xs:string, xs:string)">
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="false" select="map{}" tunnel="true"/>

        <xsl:param name="macrosElement" as="element()?" required="no" select="*:macros[1]"/>
        <xsl:param name="currentMacroMap" as="map(xs:string, xs:string)" required="false" select="$macroMap"/>
        <xsl:param name="additionalMacros" as="map(xs:string, xs:string)?" required="false" select="()"/>

        <!-- Turn the macros element into a map: -->
        <xsl:variable name="macrosElementMap" as="map(xs:string, xs:string)?">
            <xsl:if test="exists($macrosElement/*:macro[@name][@value])">
                <xsl:map>
                    <!-- We use this for-each-group construction here to make sure there are no clashes 
                         when a macro name is use multiple times. -->
                    <xsl:for-each-group select="$macrosElement/*:macro" group-by="string(@name)">
                        <xsl:map-entry key="$yatcs:simpleMacroStartCharacter || current-grouping-key()" select="string((current-group()[last()])/@value)"/>
                    </xsl:for-each-group>
                </xsl:map>
            </xsl:if>
        </xsl:variable>

        <!-- Now put it all together: -->
        <xsl:sequence select="map:merge(($currentMacroMap, $additionalMacros, $macrosElementMap), map{'duplicates': 'use-last'})"/>

    </xsl:template>

</xsl:stylesheet>
