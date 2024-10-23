<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.vmt_rgh_fwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
        Finalizes the retrieved ada-2-wiki data so it can be processed 
        more easily by the pipeline(s) that use it:
        - Adds several additional attributes to the file (all beginning with an underscore) with
          computed directory and file paths.
        - Expands any @href attributes and replaces them with a full absolute path
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
    <xsl:include href="../../xslmod/component-parameter-names.mod.xsl"/>

    <xsl:import href="../../../../YATC-shared/xslmod/finalize-application-data-file.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="parameters" as="map(xs:string, xs:string*)" select="yatcs:get-combined-parameters-map(static-base-uri())"/>

    <xsl:variable name="parnameSourceDirAdarefs2ada" as="xs:string" select="$yatcs:parnameAdarefs2adaBaseStorageDirectory"/>
    <xsl:variable name="parnameSourceDirProduction" as="xs:string" select="$yatcs:parnameProductionAdaInstancesBaseStorageDirectory"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <!-- Supply the values for the required tunnel parameters and go: -->
        <xsl:apply-templates>
            <xsl:with-param name="baseTargetDir" select="$parameters($yatci:parnameAda2wikiBaseStorageDirectory)" tunnel="true"/>
            <xsl:with-param name="baseSourceDir" select="$parameters($parnameSourceDirProduction)" tunnel="true">
                <!-- Remark: We supply the source base directory here because we have to, but it will be changed 
                     for each application, depending on whether the source comes from adarefs2ada or not. -->
            </xsl:with-param>
            <xsl:with-param name="parameters" as="map(xs:string, xs:string*)" select="$parameters" tunnel="true"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatci:application">

        <!-- Depending on whether the source comes from adarefs2ada or not we have to change the base directory: -->
        <xsl:variable name="sourceIsAdarefs2ada" as="xs:boolean" select="yatcs:str2bln(@source-adarefs2ada, false())"/>
        <xsl:variable name="baseSourceDir" as="xs:string" select="if ($sourceIsAdarefs2ada) then $parameters($parnameSourceDirAdarefs2ada) else $parameters($parnameSourceDirProduction)"/>

        <xsl:next-match>
            <xsl:with-param name="sourceIsAdarefs2ada" as="xs:boolean" select="$sourceIsAdarefs2ada" tunnel="true"/>
            <xsl:with-param name="baseSourceDir" select="$baseSourceDir" tunnel="true"/>
            <xsl:with-param name="addUsecaseToApplicationSourceDir" as="xs:boolean" select="$sourceIsAdarefs2ada" tunnel="true"/>
            <xsl:with-param name="defaultSourceSubdir" as="xs:string?" select="if ($sourceIsAdarefs2ada) then $yatcs:defaultCopyDataSourceSubdir else $parameters($yatcs:parnameProductionAdaInstancesDataSubdir)" tunnel="true"/>
        </xsl:next-match>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="yatci:application/yatci:build">
        <!-- We want to expand $BUILDNAME strings in @name and @value attributes, so pass it's value on: -->
        <xsl:next-match>
            <xsl:with-param name="buildName" as="xs:string?" select="@name" tunnel="true"/>
        </xsl:next-match>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="yatci:application/yatci:build//(@name | @value)">
        <!-- Replace $BUILDNAME with the build name in these attributes. -->
        <xsl:param name="buildName" as="xs:string?" required="true" tunnel="true"/>
        
        <xsl:variable name="value" as="xs:string" select="."/>
        <xsl:choose>
            <xsl:when test="normalize-space($buildName) ne ''">
                <xsl:attribute name="{local-name(.)}" select="replace($value, '\$BUILDNAME', $buildName)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy/>
            </xsl:otherwise>  
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>
