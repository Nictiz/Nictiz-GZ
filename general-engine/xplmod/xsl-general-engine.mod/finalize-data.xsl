<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"  xmlns="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.vmt_rgh_fwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
        Finalizes the retrieved fhir-2-ada data so it can be processed 
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

    <xsl:include href="../../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../../xslmod/href.mod.xsl"/>
    <xsl:include href="../../../xslmod/yatc-system.mod.xsl"/>
    <xsl:include href="../../../xslmod/yatc-parameters.mod.xsl"/>
    <xsl:include href="../../../xslmod/yatc-parameters-map.mod.xsl"/>

    <xsl:import href="../../../../YATC-shared/xslmod/finalize-application-data-file.mod.xsl"/>
    
    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->
    
    <xsl:param name="parnameBaseStorageDirectory" as="xs:string" required="yes">
        <!-- The YATC parameter name with which we can find the main storage directory. -->
    </xsl:param>
    
    <xsl:param name="callerStaticBaseUri" as="xs:string" required="yes">
        <!-- The URI of some document of the caller (originating component) -->
    </xsl:param>
    
    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="parameters" as="map(*)" select="yatcs:get-combined-parameters-map($callerStaticBaseUri)"/>

    <xsl:variable name="parnameSourceDirAdarefs2ada" as="xs:string" select="$yatcs:parnameAdarefs2adaBaseStorageDirectory"/>
    <xsl:variable name="parnameSourceDirProduction" as="xs:string" select="$yatcs:parnameProductionAdaInstancesBaseStorageDirectory"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <!-- Supply the values for the required tunnel parameters and go: -->
        <xsl:apply-templates>
            <xsl:with-param name="baseTargetDir" select="$parameters($parnameBaseStorageDirectory)" tunnel="true"/>
            <xsl:with-param name="baseSourceDir" select="$parameters($parnameSourceDirProduction)" tunnel="true">
                <!-- Remark: We supply the source base directory here because we have to, but it will be changed 
                     for each application, depending on whether the source comes from adarefs2ada or not. -->
            </xsl:with-param>
            <xsl:with-param name="parameters" as="map(*)" select="$parameters" tunnel="true"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:application">

        <!-- Depending on whether the source comes from adarefs2ada or not we have to change the base directory: -->
        <xsl:variable name="sourceIsAdarefs2ada" as="xs:boolean" select="yatcs:str2bln(@source-adarefs2ada, false())"/>
        <xsl:variable name="baseSourceDir" as="xs:string" select="if ($sourceIsAdarefs2ada) then $parameters($parnameSourceDirAdarefs2ada) else $parameters($parnameSourceDirProduction)"/>

        <xsl:next-match>
            <xsl:with-param name="sourceIsAdarefs2ada" as="xs:boolean" select="$sourceIsAdarefs2ada" tunnel="true"/>
            <xsl:with-param name="baseSourceDir" select="$baseSourceDir" tunnel="true"/>
            <xsl:with-param name="addUsecaseToApplicationSourceDir" as="xs:boolean" select="$sourceIsAdarefs2ada" tunnel="true"/>
            <xsl:with-param name="defaultSourceSubdir" as="xs:string?" select="if ($sourceIsAdarefs2ada) then $yatcs:defaultCopyDataSourceSubdir else $parameters($yatcs:parnameProductionAdaInstancesDataSubdir)" tunnel="true"/>
            <xsl:with-param name="altSourceVersion" as="xs:string?" select="xs:string(@source-version)[.]" tunnel="true"/>
        </xsl:next-match>
    </xsl:template>
    
</xsl:stylesheet>
