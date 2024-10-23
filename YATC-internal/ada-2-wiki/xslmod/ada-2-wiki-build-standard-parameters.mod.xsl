<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ert_dgc_lwb" exclude-result-prefixes="#all" expand-text="false">
    <!-- ======================================================================= -->
    <!-- 
       This module defines (and documents) the standard parameters passed to the stylesheet on an ada-2-wiki build.
       It also contains some support code to work with the parameters more easily.
       
       To enable easier debugging (running this stylesheet outside of an XProc context), several parameters are 
       given a default value. You can always change this when running it stand-alone, if necessary.
       
       Remark 1: This file also includes a lot of standard libraries to provide access to the parameters. This is needed for
       finding the ADA release file (done in module ada-2-wiki-build-standard-ada-release-file.mod.xsl).
       Remark 2: A build may pass in additional parameters to a specific stylesheet(using build/parameter elements), 
       but these are (of course) not defined here. These are the standard parameters only (the ones that are always passed).
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

    <!-- Since we need access to the parameters (at least to find the project directory for the ADA release file), 
         we need to include several standard stylesheet libraries: -->
    <xsl:include href="../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../YATC-shared/xslmod/href.mod.xsl"/>
    <xsl:include href="../../../YATC-shared/xslmod/yatc-system.mod.xsl"/>
    <xsl:include href="../../../YATC-shared/xslmod/yatc-parameters.mod.xsl"/>
    <xsl:include href="../../../YATC-shared/xslmod/yatc-parameters-map.mod.xsl"/>

    <xsl:variable name="parameters" as="map(xs:string, xs:string*)" select="yatcs:get-combined-parameters-map(static-base-uri())"/>

    <!-- ======================================================================= -->
    <!-- BASIC PARAMETERS: -->

    <xsl:param name="application" as="xs:string" required="false" select="'test-application'">
        <!-- The name of the application we're building for. 
             For instance 'lab'. 
        -->
    </xsl:param>

    <xsl:param name="version" as="xs:string" required="false" select="'test-version'">
        <!-- The version of the application we're building for. 
             For instance '3.0.0'. 
        -->
    </xsl:param>

    <xsl:param name="buildName" as="xs:string" required="false" select="'test-build'">
        <!-- The name of the build we're currently processing. 
             For instance 'laboratoriumresultaten_met_references-1'. 
        -->
    </xsl:param>

    <xsl:param name="baseDirectory" as="xs:string" required="false" select="resolve-uri('../tmp/base', static-base-uri())">
        <!-- The full absolute base directory for the ada-2-wiki build for this application/version 
             For instance 'file:///…/lab/3.0.0'. 
        -->
    </xsl:param>
    
    <xsl:param name="sourceProjectName" as="xs:string" required="false" select="$application">
        <!-- The name of the project belonging to this application. 
        -->
    </xsl:param>

    <xsl:param name="adaWorkingSetDirectory" as="xs:string" required="false" select="resolve-uri('../tmp/working-set', static-base-uri())">
        <!-- The name of the directory containing the working-set of ADA documents used in the processing of this stylesheet. 
             As defined by the build/ada-working-set element. 
        -->
    </xsl:param>

    <xsl:param name="debugOutputDirectory" as="xs:string" required="false" select="yatcs:href-concat(($baseDirectory, $yatcs:directoryNameTmp, 'debug'))">
        <!-- Sometimes ada-2-wiki stylesheets want to write debug-related (XML) output files. The standard directory for these is 
             underneath the base directory: tmp/debug 
        -->
    </xsl:param>

    <!-- ======================================================================= -->
    <!-- SUPPORT CODE: -->

    <xsl:function name="yatcs:get-ada-files" as="document-node()*">
        <xsl:param name="dir" as="xs:string"/>
        <!-- Gets the collection of ada files in $dir. Raises an error if this set is empty. -->
        <xsl:variable name="adaFiles" as="document-node()*" select="collection($dir || '?select=*.xml')"/>
        <xsl:choose>
            <xsl:when test="exists($adaFiles)">
                <xsl:sequence select="$adaFiles"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('No ADA files found in directory ', yatcs:q($dir))"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:get-ada-files" as="document-node()*">
        <!-- Gets the collection of ada files in $adaWorkingSetDirectory. Raises an error if this set is empty. -->
        <xsl:sequence select="yatcs:get-ada-files($adaWorkingSetDirectory)"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="yatcs:write-debug-document">
        <!-- Writes some contents to the debug output directory. -->
        <xsl:param name="contents" as="node()" required="true">
            <!-- The contents to write to the debug output. Either a document-node or an element.  -->
        </xsl:param>
        <xsl:param name="filename" as="xs:string" required="true">
            <!-- The filename *without* extension -->
        </xsl:param>
        <xsl:param name="enabled" as="xs:boolean" required="false" select="true()"/>

        <xsl:if test="$enabled">
            <xsl:result-document href="{yatcs:href-concat(($debugOutputDirectory, $filename || '.xml'))}" method="xml" encoding="utf-8" indent="true">
                <xsl:copy-of select="$contents"/>
            </xsl:result-document>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
