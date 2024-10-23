<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.rbc_rtd_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet takes an application data file and expands all the base macro's in this.
       Base macros are, for instance, $APPLICATION, $VERSION, etc.
       
       It also takes of any specific macros defined by <macros> elements. 
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

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/href.mod.xsl"/>
    <xsl:include href="../../xslmod/simple-macros.mod.xsl"/>

    <xsl:mode on-no-match="shallow-copy"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <!-- All macro keys: -->
    <xsl:variable name="local:macroApplication" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'APPLICATION'"/>
    <xsl:variable name="local:macroVersion" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'VERSION'"/>
    <xsl:variable name="local:macroUsecase" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'USECASE'"/>
    <xsl:variable name="local:macroBasepath" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'BASEPATH'"/>

    <!-- ======================================================================= -->

    <xsl:template match="/*">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="macroMap" as="map(xs:string, xs:string)" tunnel="true">
                    <xsl:call-template name="macros-to-map"/>
                </xsl:with-param>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:application">

        <xsl:variable name="application" as="xs:string" select="string(@name)"/>
        <xsl:variable name="version" as="xs:string" select="string(@version)"/>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="macroMap" as="map(xs:string, xs:string)" tunnel="true">
                    <xsl:call-template name="macros-to-map">
                        <xsl:with-param name="additionalMacros" as="map(xs:string, xs:string)">
                            <xsl:map>
                                <xsl:map-entry key="$local:macroApplication" select="$application"/>
                                <xsl:map-entry key="$local:macroVersion" select="$version"/>
                                <xsl:map-entry key="$local:macroBasepath" select="yatcs:href-concat(($application, $version))"/>
                            </xsl:map>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:with-param>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:setup">
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="false" select="map{}" tunnel="true"/>

        <xsl:variable name="usecase" as="xs:string" select="string(@usecase)"/>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="macroMap" as="map(xs:string, xs:string)" tunnel="true">
                    <xsl:call-template name="macros-to-map">
                        <xsl:with-param name="additionalMacros" as="map(xs:string, xs:string)">
                            <xsl:map>
                                <xsl:map-entry key="$local:macroUsecase" select="$usecase"/>
                                <xsl:map-entry key="$local:macroBasepath" select="yatcs:href-concat(($macroMap($local:macroBasepath), $usecase))"/>
                            </xsl:map>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:with-param>
            </xsl:apply-templates>
        </xsl:copy>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:action">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="macroMap" as="map(xs:string, xs:string)" tunnel="true">
                    <xsl:call-template name="macros-to-map"/>
                </xsl:with-param>
            </xsl:apply-templates>
        </xsl:copy>

    </xsl:template>

    <!-- ======================================================================= -->
    <!-- SUBSTITUTIONS: -->

    <xsl:template match="@*[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="false" select="map{}" tunnel="true"/>

        <xsl:choose>
            <xsl:when test="exists($macroMap)">
                <xsl:attribute name="{node-name(.)}" select="yatcs:expand-simple-macros(string(.), $macroMap, false())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="text()[contains(., $yatcs:simpleMacroStartCharacter)]">
        <xsl:param name="macroMap" as="map(xs:string, xs:string)" required="false" select="map{}" tunnel="true"/>

        <xsl:choose>
            <xsl:when test="exists($macroMap)">
                <xsl:value-of select="yatcs:expand-simple-macros(string(.), $macroMap, false())"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy/>
            </xsl:otherwise>
        </xsl:choose>
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
