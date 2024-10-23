<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.rbc_rtd_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet takes a pruned application data file as input and pre-processes all the distribution related elements.
       The result is a document with information for further processing.
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
    <xsl:mode name="mode-handle-distributions" on-no-match="shallow-copy"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <xsl:param name="distributionVersion" as="xs:string?" required="yes"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <!-- All macro keys: -->
    <xsl:variable name="local:macroApplication" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'APPLICATION'"/>
    <xsl:variable name="local:macroVersion" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'VERSION'"/>
    <xsl:variable name="local:macroDistributionName" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DISTRIBUTIONNAME'"/>
    <xsl:variable name="local:macroDistributionVersion" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DISTRIBUTIONVERSION'"/>
    <xsl:variable name="local:macroDateTimeISO" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DATETIMEISO'"/>
    <xsl:variable name="local:macroDate" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DATEFULL'"/>
    <xsl:variable name="local:macroDateCompact" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'DATECOMPACT'"/>
    <xsl:variable name="local:macroTime" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'TIMEFULL'"/>
    <xsl:variable name="local:macroTimeCompact" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'TIMECOMPACT'"/>
    <xsl:variable name="local:macroTimeShort" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'TIMESHORTFULL'"/>
    <xsl:variable name="local:macroTimeShortCompact" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'TIMESHORTCOMPACT'"/>

    <!-- ======================================================================= -->

    <xsl:template match="*:application">

        <!-- Create the basic map with macro substitutions: -->
        <xsl:variable name="applicationName" as="xs:string" select="string(@name)"/>
        <xsl:variable name="applicationVersion" as="xs:string" select="string(@version)"/>
        <xsl:variable name="dateTime" as="xs:dateTime" select="current-dateTime()"/>
        <xsl:variable name="substitutionMacroMap" as="map(xs:string, xs:string)">
            <xsl:map>
                <xsl:map-entry key="$local:macroApplication" select="$applicationName"/>
                <xsl:map-entry key="$local:macroVersion" select="$applicationVersion"/>
                <xsl:map-entry key="$local:macroDistributionVersion" select="string($distributionVersion)"/>
                <xsl:map-entry key="$local:macroDateTimeISO" select="string($dateTime)"/>
                <xsl:map-entry key="$local:macroDate" select="format-dateTime($dateTime, '[Y0001]-[M01]-[D01]')"/>
                <xsl:map-entry key="$local:macroDateCompact" select="format-dateTime($dateTime, '[Y0001][M01][D01]')"/>
                <xsl:map-entry key="$local:macroTime" select="format-dateTime($dateTime, '[H01]:[m01]:[s01]')"/>
                <xsl:map-entry key="$local:macroTimeCompact" select="format-dateTime($dateTime, '[H01][m01][s01]')"/>
                <xsl:map-entry key="$local:macroTimeShort" select="format-dateTime($dateTime, '[H01]:[m01]')"/>
                <xsl:map-entry key="$local:macroTimeShortCompact" select="format-dateTime($dateTime, '[H01][m01]')"/>
            </xsl:map>
        </xsl:variable>

        <!-- Pass on what we need to know: -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="applicationTargetDir" as="xs:string" select="@_target-dir" tunnel="true"/>
                <xsl:with-param name="substitutionMacroMap" as="map(xs:string, xs:string)" select="$substitutionMacroMap" tunnel="true"/>
                <xsl:with-param name="applicationPrompt" as="xs:string" select="$applicationName || '/' || $applicationVersion" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template match="*:application/*:distributions">
        <xsl:param name="substitutionMacroMap" as="map(xs:string, xs:string)" required="true" tunnel="true"/>
        <xsl:param name="applicationTargetDir" as="xs:string" required="true" tunnel="true"/>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="mode-handle-distributions"/>

            <!-- Check for macro substitutions on the main distributions directory: -->
            <xsl:variable name="targetDirectory" as="xs:string" select="if (normalize-space(@target-directory) ne '') then string(@target-directory) else 'distributions'"/>
            <xsl:variable name="distributionsDirectory" as="xs:string" select="yatcs:href-concat(($applicationTargetDir, $targetDirectory)) => yatcs:expand-simple-macros($substitutionMacroMap, true()) => yatcs:href-canonical()"/>
            <xsl:attribute name="target-directory" select="$distributionsDirectory"/>

            <xsl:apply-templates select="node()" mode="mode-handle-distributions">
                <xsl:with-param name="distributionsDirectory" as="xs:string" select="$distributionsDirectory" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:distributions/*:distribution" mode="mode-handle-distributions">
        <xsl:param name="substitutionMacroMap" as="map(xs:string, xs:string)" required="true" tunnel="true"/>
        <xsl:param name="distributionsDirectory" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="applicationPrompt" as="xs:string" required="true" tunnel="true"/>

        <!-- Enhance the substitution stuff with the distribution name: -->
        <xsl:variable name="substitutionMacroMapEnhanced" as="map(xs:string, xs:string)" select="map:merge(($substitutionMacroMap, map{$local:macroDistributionName: string(@name)}))"/>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="#current"/>

            <!-- Compute the correct target directory for this distribution: -->
            <xsl:variable name="targetDirectoryAttValue" as="xs:string?" select="if (normalize-space(@target-directory) ne '') then string(@target-directory) else ()"/>
            <xsl:variable name="targetDirectory" as="xs:string" select="yatcs:href-concat(($distributionsDirectory, $targetDirectoryAttValue)) => yatcs:expand-simple-macros($substitutionMacroMapEnhanced, true()) => yatcs:href-canonical()"/>
            <xsl:attribute name="target-directory" select="$targetDirectory"/>

            <!-- Compute the correct path to the zip file (if any): -->
            <xsl:call-template name="handle-attribute-substitutions">
                <xsl:with-param name="attributeName" select="'href-zip'"/>
                <xsl:with-param name="baseDirectory" select="$targetDirectory"/>
                <xsl:with-param name="substitutionMacroMap" select="$substitutionMacroMapEnhanced" tunnel="true"/>
            </xsl:call-template>
            
            <!-- Some additional attributes: -->
            <xsl:if test="normalize-space($distributionVersion) ne ''">
                <xsl:attribute name="_distribution-version" select="$distributionVersion"/>
            </xsl:if>
            <xsl:attribute name="_application-prompt" select="$applicationPrompt"/>

            <!-- Process the contents: -->
            <xsl:apply-templates select="node()" mode="#current">
                <xsl:with-param name="substitutionMacroMap" as="map(xs:string, xs:string)" select="$substitutionMacroMapEnhanced" tunnel="true"/>
                <xsl:with-param name="distributionDirectory" as="xs:string" select="$targetDirectory" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:distributions/*:distribution/(*:directory | *:flatten-stylesheets)" mode="mode-handle-distributions">
        <xsl:param name="distributionDirectory" as="xs:string" required="true" tunnel="true"/>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="#current"/>
            <xsl:call-template name="handle-attribute-substitutions">
                <xsl:with-param name="attributeName" select="'target-directory'"/>
                <xsl:with-param name="baseDirectory" select="$distributionDirectory"/>
                <xsl:with-param name="default" select="$distributionDirectory"/>
            </xsl:call-template>
            
            <xsl:apply-templates mode="#current"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:distributions/*:distribution/*:file" mode="mode-handle-distributions">
        <xsl:param name="distributionDirectory" as="xs:string" required="true" tunnel="true"/>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="#current"/>
            <xsl:call-template name="handle-attribute-substitutions">
                <xsl:with-param name="attributeName" select="'target-directory'"/>
                <xsl:with-param name="baseDirectory" select="$distributionDirectory"/>
                <xsl:with-param name="default" select="$distributionDirectory"/>
            </xsl:call-template>
            <xsl:call-template name="handle-attribute-substitutions">
                <xsl:with-param name="attributeName" select="'target-filename'"/>
                <xsl:with-param name="default" select="string(@filename)"/>
            </xsl:call-template>
            
            <xsl:apply-templates mode="#current"/>
        </xsl:copy>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:distributions/*:distribution/(*:additional-text-document | *:combine-additional-text-documents)" mode="mode-handle-distributions">
        <xsl:param name="distributionDirectory" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="substitutionMacroMap" as="map(xs:string, xs:string)" required="true" tunnel="true"/>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="#current"/>
            <xsl:call-template name="handle-attribute-substitutions">
                <xsl:with-param name="attributeName" select="'target-directory'"/>
                <xsl:with-param name="baseDirectory" select="$distributionDirectory"/>
                <xsl:with-param name="default" select="$distributionDirectory"/>
            </xsl:call-template>
            <xsl:call-template name="handle-attribute-substitutions">
                <xsl:with-param name="attributeName" select="'target-filename'"/>
                <xsl:with-param name="default" select="if (exists(@href)) then yatcs:href-name(@href) else ()"/>
            </xsl:call-template>
            
            <!--  Save the distribution map (as a JSON map) for use in further processing later on: -->
            <xsl:attribute name="_substitutions-map" select="serialize($substitutionMacroMap, map{'method': 'json', 'indent': false()})"/>
            
            <xsl:apply-templates mode="#current"/>
        </xsl:copy>

    </xsl:template>

    <!-- ======================================================================= -->
    <!-- SUPPORT: -->

    <xsl:template name="handle-attribute-substitutions" as="attribute()?">
        <xsl:param name="elm" as="element()" required="false" select="."/>
        <xsl:param name="attributeName" as="xs:string" required="true"/>
        <xsl:param name="baseDirectory" as="xs:string?" required="false" select="()"/>
        <xsl:param name="default" as="xs:string?" required="false" select="()"/>
        <xsl:param name="filenameSafe" as="xs:boolean" required="false" select="true()"/>
        <xsl:param name="substitutionMacroMap" as="map(xs:string, xs:string)" required="true" tunnel="true"/>

        <xsl:variable name="att" as="attribute()?" select="$elm/@*[local-name() eq $attributeName]"/>
        <xsl:choose>
            <xsl:when test="normalize-space($att) ne ''">
                <xsl:variable name="attValueRaw" as="xs:string" select="string($att)"/>
                <xsl:choose>
                    <xsl:when test="normalize-space($attValueRaw) eq ''">
                        <xsl:sequence select="$att"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:variable name="attValueNoMacroSubstitution" as="xs:string">
                            <xsl:choose>
                                <xsl:when test="exists($baseDirectory)">
                                    <xsl:sequence select="yatcs:href-concat(($baseDirectory, $attValueRaw)) => yatcs:href-canonical()"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:sequence select="$attValueRaw"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <xsl:attribute name="{$attributeName}" select="yatcs:expand-simple-macros($attValueNoMacroSubstitution, $substitutionMacroMap, $filenameSafe)"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="exists($default)">
                <xsl:attribute name="{$attributeName}" select="$default"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
