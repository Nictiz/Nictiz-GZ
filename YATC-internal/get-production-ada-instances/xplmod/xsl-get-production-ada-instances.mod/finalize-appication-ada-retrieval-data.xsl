<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.vmt_rgh_fwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
        Finalizes the retrieved application ADA retrieval data so it can be processed 
        more easily by the pipeline(s) that use it:
        - Adds several additional attributes to the file (all beginning with an underscore) with
          computed directory and file paths.
        - Expands the <retrieval-set> elements in the production ADA instances and 
          replaces them with their definitions in <retrieval-set-definition> elements.
        - Expands any @href and @directory attributes and replaces them with a full absolute path
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

    <xsl:strip-space elements="*"/>

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/href.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/yatc-system.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/yatc-parameters.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/yatc-parameters-map.mod.xsl"/>

    <xsl:import href="../../../../YATC-shared/xslmod/finalize-application-data-file.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="retrievalSetDefinitions" as="element(yatci:retrieval-set-definition)*" select="/*/yatci:retrieval-set-definition"/>

    <xsl:variable name="parameters" as="map(xs:string, xs:string*)" select="yatcs:get-combined-parameters-map(static-base-uri())"/>

    <!-- ======================================================================= -->
    <!-- PROCESS DIRECTORY NAMES: -->

    <xsl:template match="/*">

        <xsl:variable name="baseTargetDir" as="xs:string" select="$parameters($yatcs:parnameProductionAdaInstancesBaseStorageDirectory)"/>
        <xsl:variable name="baseTargetDirAdaRefs2ada" as="xs:string" select="$parameters($yatcs:parnameAdarefs2adaBaseStorageDirectory)"/>

        <xsl:copy>
            <xsl:attribute name="_base-target-dir" select="$baseTargetDir"/>
            <xsl:attribute name="_base-target-dir-adarefs2ada" select="$baseTargetDirAdaRefs2ada"/>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="baseTargetDir" as="xs:string" select="$baseTargetDir" tunnel="true"/>
                <xsl:with-param name="baseTargetDirAdaRefs2ada" as="xs:string" select="$baseTargetDirAdaRefs2ada" tunnel="true"/>
                <xsl:with-param name="parameters" as="map(xs:string, xs:string*)" select="$parameters" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatci:application">
        <!-- Remark: Besides taking care of directory names,, it also will make sure the @ada-application-name 
             attribute is properly filled, so it can be used directly. -->
        <xsl:param name="baseTargetDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="baseTargetDirAdaRefs2ada" as="xs:string" required="true" tunnel="true"/>

        <xsl:variable name="adaApplicationName" as="xs:string" select="if (normalize-space(/@ada-application-name) ne '') then string(/@ada-application-name) else string(@name)"/>
        <xsl:variable name="application" as="xs:string" select="xs:string(@name)"/>
        <xsl:variable name="version" as="xs:string" select="xs:string(@version)"/>
        <!-- Remark: We have two different output directories to work with: One for the data retrieved from ART-DECOR 
                     and one for all the documents built for adarefs2ada. These directories might be the same but not 
                     necessarily so. This complicates things a bit...
        -->
        
        <!-- In some cases (for instance for mp/9.2.0) we have a different subdirectory for the production-ada-instances part.
             There is an attribute @version-directory-production-ada-instances introduced for this. Uses it: -->
        <xsl:variable name="subdir-production-ada-instances" as="xs:string" select="xs:string((@version-directory-production-ada-instances, $version)[1])"/>
        <xsl:variable name="subdir-adarefs2ada" as="xs:string" select="$version"/>
        
        <!-- Compute all the directories: -->
        <xsl:variable name="applicationTargetDirRel" as="xs:string" select="yatcs:href-concat(($application, $subdir-production-ada-instances))"/>
        <xsl:variable name="applicationTargetDir" as="xs:string" select="yatcs:href-concat(($baseTargetDir, $applicationTargetDirRel))"/>
        <xsl:variable name="applicationTargetDirAdarefs2adaRel" as="xs:string" select="yatcs:href-concat(($application, $subdir-adarefs2ada))"/>
        <xsl:variable name="applicationTargetDirAdarefs2ada" as="xs:string" select="yatcs:href-concat(($baseTargetDirAdaRefs2ada, $applicationTargetDirAdarefs2adaRel))"/>
        
        <xsl:variable name="dataTargetDir" as="xs:string" select="yatcs:href-concat(($applicationTargetDir, $parameters($yatcs:parnameProductionAdaInstancesDataSubdir)))"/>
        <xsl:variable name="indexFilename" as="xs:string" select="yatcs:href-concat(($applicationTargetDir, 'index', 'index.xml'))"/>

        <xsl:copy>
            <xsl:attribute name="_target-dir" select="$applicationTargetDir"/>
            <xsl:attribute name="_target-dir-rel" select="$applicationTargetDirRel"/>
            <xsl:attribute name="_target-dir-adarefs2ada" select="$applicationTargetDirAdarefs2ada"/>
            <xsl:attribute name="_target-dir-rel-adarefs2ada" select="$applicationTargetDirAdarefs2adaRel"/>
            <xsl:attribute name="_data-target-dir" select="$dataTargetDir"/>
            <xsl:attribute name="_index-filename" select="$indexFilename"/>
            <xsl:attribute name="ada-application-name" select="$adaApplicationName"/>
            <xsl:apply-templates select="(@* except @ada-appication-name) | node()">
                <xsl:with-param name="applicationTargetDir" as="xs:string" select="$applicationTargetDir" tunnel="true"/>
                <xsl:with-param name="applicationTargetDirRel" as="xs:string" select="$applicationTargetDirRel" tunnel="true"/>
                <xsl:with-param name="dataTargetDir" as="xs:string" select="$dataTargetDir" tunnel="true"/>
                <xsl:with-param name="applicationTargetDirAdarefs2ada" as="xs:string" select="$applicationTargetDirAdarefs2ada" tunnel="true"/>
                <xsl:with-param name="applicationTargetDirAdarefs2adaRel" as="xs:string" select="$applicationTargetDirAdarefs2adaRel" tunnel="true"/>
                <xsl:with-param name="application" as="xs:string" select="$application" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatci:adarefs2ada">
        <xsl:param name="application" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="applicationTargetDirAdarefs2ada" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="applicationTargetDirAdarefs2adaRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="dataTargetDir" as="xs:string" required="true" tunnel="true"/>

        <!-- From here on we only work with directories for adarefs2ada. So change the main
             application directory to this (otherwise the match template for @directory below would not give the 
             correct results). This applies to the tunnel parameters $applicationTargetDir and $applicationTargetDirRel.
        -->

        <xsl:variable name="sourceProjectName" as="xs:string" select="(@source-project-name, $application)[1]"/>
        <xsl:copy>
            <xsl:attribute name="source-project-name" select="$sourceProjectName"/>
            <xsl:attribute name="_target-dir" select="$applicationTargetDirAdarefs2ada"/>
            <xsl:attribute name="_target-dir-rel" select="$applicationTargetDirAdarefs2adaRel"/>
            <xsl:attribute name="_source-dir" select="$dataTargetDir"/>
            <xsl:apply-templates select="@*"/>

            <!-- Process the results in two parts. First we do the <setup> elements, so we can examine the results
                 and get a map with directory-identifiers for later expansion of @… constructions.
                 We then use this map to dereference any directory-identifier references in the <build> elements.
            -->
            <xsl:variable name="finalizationResultForSetupElements" as="element(yatci:setup)*">
                <xsl:apply-templates select="yatci:setup">
                    <xsl:with-param name="sourceProjectName" as="xs:string" select="$sourceProjectName" tunnel="true"/>
                    <xsl:with-param name="applicationTargetDir" as="xs:string" select="$applicationTargetDirAdarefs2ada" tunnel="true"/>
                    <xsl:with-param name="applicationTargetDirRel" as="xs:string" select="$applicationTargetDirAdarefs2adaRel" tunnel="true"/>
                    <xsl:with-param name="applicationSourceDir" as="xs:string" select="$dataTargetDir" tunnel="true"/>
                    <xsl:with-param name="addUsecaseToApplicationSourceDir" as="xs:boolean" select="false()" tunnel="true"/>
                    <xsl:with-param name="defaultSourceSubdir" as="xs:string?" select="()" tunnel="true"/>
                </xsl:apply-templates>
            </xsl:variable>

            <!-- Process and output everything: -->
            <xsl:sequence select="$finalizationResultForSetupElements"/>
            <xsl:apply-templates select="yatci:* except yatci:setup">
                <xsl:with-param name="adarefs2adaSourceProjectName" as="xs:string" select="$sourceProjectName" tunnel="true"/>
                <xsl:with-param name="applicationTargetDir" as="xs:string" select="$applicationTargetDirAdarefs2ada" tunnel="true"/>
                <xsl:with-param name="applicationTargetDirRel" as="xs:string" select="$applicationTargetDirAdarefs2adaRel" tunnel="true"/>
                <xsl:with-param name="mappingDirectoryIdentifiers" as="map(xs:string, xs:string+)" select="yatcs:get-directory-identifiers-map($finalizationResultForSetupElements)" tunnel="true"/>
            </xsl:apply-templates>

        </xsl:copy>
    </xsl:template>

    <!-- ================================================================== -->
    <!-- EXPAND RETRIEVAL-SETS: -->

    <xsl:template match="yatci:retrieval-set">
        <xsl:variable name="retrievalSetIdentifier" as="xs:string" select="normalize-space(@idref)"/>

        <!-- See if we can find an appropriate set with retrieval-data: -->
        <xsl:variable name="retrievalSetDefinition" as="element(yatci:retrieval-set-definition)?" select="$retrievalSetDefinitions[@id eq $retrievalSetIdentifier]"/>
        <xsl:choose>
            <xsl:when test="exists($retrievalSetDefinition)">
                <xsl:apply-templates select="$retrievalSetDefinition/yatci:*"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('Retrieval-set with identifier ', yatcs:q($retrievalSetIdentifier), ' not found')"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatci:retrieval-set-definition">
        <!-- Remove these, no longer needed... -->
    </xsl:template>

</xsl:stylesheet>
