<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.n2x_bll_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This XSL takes the (pruned) application data file from get-production-ada-instances
       (as produced by ../../xplmod/get-production-ada-instances.mod.xpl) and creates a full list of directories 
       to compare against each other.
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

    <xsl:strip-space elements="*"/>

    <xsl:import href="../../../../YATC-shared/xslmod/create-directory-compare-list-for-application-data-setup.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- GLOBAL PARAMETER OVERRIDES: -->

    <xsl:param name="repoForComparisonsBaseDir" as="xs:string" select="yatcs:get-original-repo-base-directory($repoArtDecor)"/>
    <xsl:param name="repoSubdirName" as="xs:string" required="false" select="'adarefs2ada'"/>

    <!-- We have to compare the stuff created for production-ada-instances also, so we need the base directory for this separately: -->
    <xsl:variable name="ArtDecorProductionBaseDir" as="xs:string" select="yatcs:href-concat(($repoForComparisonsBaseDir, 'production-ada-instances')) => yatcs:href-canonical()"/>

    <!-- ======================================================================= -->

    <xsl:template match="yatci:application">
        <!-- Override the standard template because we have to specify the comparison of the data directories. -->
        <xsl:element name="{local-name()}">
            <xsl:copy-of select="(@name, @version)"/>
            <xsl:variable name="subdir-production-ada-instances" as="xs:string" select="xs:string((@version-directory-production-ada-instances, @version)[1])"/>
            <compare-directories description="data directories" href1="{@_data-target-dir}" href2="{yatcs:href-concat(($ArtDecorProductionBaseDir, @name, $subdir-production-ada-instances, $parameters($yatcs:parnameProductionAdaInstancesDataSubdir)))}"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatci:*[exists(yatci:output)]">
        <xsl:param name="descriptionSuffix" as="xs:string?" required="false" select="()" tunnel="true"/>
        <xsl:param name="baseDirectoryOriginal" as="xs:string" required="true" tunnel="true"/>

        <xsl:variable name="outputDirectoryRel" as="xs:string?" select="xs:string(yatci:output/@_directory-rel)"/>
        <xsl:if test="exists($outputDirectoryRel)">
            <compare-directories description="{$descriptionSuffix}build {@name}" href1="{yatci:output/@directory}" href2="{yatcs:href-concat(($baseDirectoryOriginal, $outputDirectoryRel))}"/>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
