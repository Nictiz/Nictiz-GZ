<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.cfg_dxh_pwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This module contains the templates to create a list of directories to compare, based
       on the standard setup element (as defined in ../xsdmod/application-data-file.mod.xsd). 
       This setup element must have been enriched with the appropriate attributes by finalize-application-data-file.mod.xsl.
       
       Expects several parameters to be overridden with the correct values. See below.
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

    <xsl:include href="general.mod.xsl"/>
    <xsl:include href="href.mod.xsl"/>
    <xsl:include href="yatc-system.mod.xsl"/>
    <xsl:include href="yatc-parameters.mod.xsl"/>
    <xsl:include href="yatc-parameters-map.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL VARIABLES: -->

    <xsl:variable name="parameters" as="map(*)" select="yatcs:get-combined-parameters-map(static-base-uri())"/>

    <!-- Use the values below values as input to the yatcs:get-original-repo-base-directory() function below -->
    <xsl:variable name="repoArtDecor" as="xs:string" select="'artdecor'"/>
    <xsl:variable name="repoHL7Mappings" as="xs:string" select="'hl7mappings'"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS FOR OVERRIDE: -->
    <!-- Provide the correct values for the following parameters in the importing stylesheet: -->

    <xsl:param name="repoForComparisonsBaseDir" as="xs:string" required="false" select="'RepoForComparisonsBaseDir-NOTSET'">
        <!-- The base directory of the repository with the old/existing stuff, for comparing this with new/created stuff. 
             For instance: file:///…/art_decor
        -->
    </xsl:param>

    <xsl:param name="repoSubdirName" as="xs:string" required="false" select="'RepositoryBaseDir-NOTSET'">
        <!-- The name of the subdirectory in $RepoForComparisonsBaseDir for the output we're comparing against. 
             For instance: ada_2_wiki. -->
    </xsl:param>

    <xsl:param name="descriptionSuffixBase" as="xs:string" required="false" select="$repoSubdirName">
        <!-- The suffix for the generated descriptions. -->
    </xsl:param>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <xsl:variable name="baseDirectoryOriginal" as="xs:string" select="yatcs:href-concat(($repoForComparisonsBaseDir, $repoSubdirName))"/>
        <compares original="{$baseDirectoryOriginal}" new="{/*/@_base-target-dir}">
            <xsl:apply-templates>
                <xsl:with-param name="baseDirectoryOriginal" as="xs:string" select="$baseDirectoryOriginal" tunnel="true"/>
                <xsl:with-param name="descriptionSuffix" as="xs:string" select="$descriptionSuffixBase" tunnel="true"/>
            </xsl:apply-templates>
        </compares>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:application">
        <xsl:param name="descriptionSuffix" as="xs:string?" required="false" select="()" tunnel="true"/>
        
        <xsl:element name="{local-name()}">
            <xsl:copy-of select="(@name, @version)"/>
            <xsl:apply-templates>
                <xsl:with-param name="descriptionSuffix" as="xs:string" select="string-join(($descriptionSuffix, @name, @version), '/')" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:setup">
        <xsl:param name="descriptionSuffix" as="xs:string?" required="false" select="()" tunnel="true"/>
        
        <xsl:apply-templates>
            <xsl:with-param name="descriptionSuffix" as="xs:string" select="string-join(($descriptionSuffix, @usecase), '/')" tunnel="true"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:empty-root-directory[local:do-compare(.)]">
        <xsl:param name="baseDirectoryOriginal" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="descriptionSuffix" as="xs:string?" required="false" select="()" tunnel="true"/>

        <compare-directories description="{local-name()} {$descriptionSuffix}/{yatcs:href-name(@_target-dir-rel)}" href1="{@_target-dir}" href2="{yatcs:href-concat(($baseDirectoryOriginal, @_target-dir-rel))}">
            <xsl:copy-of select="@compare-flags"/>
        </compare-directories>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="(*:setup/(*:copy-data | *:empty-directory | *:copy-project-schemas))[local:do-compare(.)]">
        <xsl:param name="baseDirectoryOriginal" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="descriptionSuffix" as="xs:string?" required="false" select="()" tunnel="true"/>

        <compare-directories description="setup/{local-name()} {$descriptionSuffix}/{yatcs:href-name(@_target-dir-rel)}" href1="{@_target-dir}" href2="{yatcs:href-concat(($baseDirectoryOriginal, @_target-dir-rel))}">
            <xsl:copy-of select="@compare-flags"/>
        </compare-directories>
    </xsl:template>

    <!-- ======================================================================= -->
    <!-- GENERAL SUPPORT: -->

    <xsl:function name="yatcs:get-original-repo-base-directory" as="xs:string">
        <!-- Gets the base directory for an original repository to compare against. -->
        <xsl:param name="repo" as="xs:string">
            <!-- One of the repo* variables defined above -->
        </xsl:param>

        <xsl:variable name="parnameRepo" as="xs:string">
            <xsl:choose>
                <xsl:when test="$repo eq $repoArtDecor">
                    <xsl:sequence select="$yatcs:parnameArtDecorRepoForComparisonsBaseDirectory"/>
                </xsl:when>
                <xsl:when test="$repo eq $repoHL7Mappings">
                    <xsl:sequence select="$yatcs:parnameHL7MappingsRepoForComparisonsBaseDirectory"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="yatcs:raise-error">
                        <xsl:with-param name="msg-parts" select="('Internal error: invalid repo code: ', yatcs:q($repo))"/>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:variable name="repoDirectory" as="xs:string" select="string($parameters($parnameRepo)[1])"/>
        <xsl:if test="normalize-space($repoDirectory) eq ''">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="('Parameter ', yatcs:q($parnameRepo), ' not set')"/>
            </xsl:call-template>
        </xsl:if>

        <xsl:sequence select="$repoDirectory"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:do-compare" as="xs:boolean">
        <!-- Returns false when detecting an compare="false" attribute or missing essential attributes, otherwise true.  -->
        <xsl:param name="elm" as="element()"/>

        <xsl:sequence select="exists($elm/@_target-dir) and exists($elm/@_target-dir-rel) and yatcs:str2bln($elm/@compare, true())"/>
    </xsl:function>

</xsl:stylesheet>
