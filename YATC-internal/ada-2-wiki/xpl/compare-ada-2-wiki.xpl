<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.dlh_rhl_jwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       This step compares the produced results against the results produced by the original Ant scripts of 
       ada-2-wiki in the art_decor repo.
       
       It was meant to be used from the command line only.
       
       It outputs an XML document reporting everything that was done. Differences found are marked with a 
       differences="true" attribute.
       
       For this to work we need a separate checkout of the art_decor repo in which we get the results using the Ant scripts.
       This directory must be referenced using the ArtDecorRepoForComparisonsBaseDirectory parameter (usually done in the
       local override parameters document).
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
    <!-- IMPORTS: -->

    <p:import href="../../../YATC-shared/xplmod/yatc-general.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-cw.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-parameters.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/compare.mod.xpl"/>
    <p:import href="../xplmod/ada-2-wiki.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:output port="result" primary="true" sequence="true" content-types="any" serialization="$yatcs:standardXmlSerialization"/>

    <!-- ======================================================================= -->
    <!-- OPTIONS: -->

    <p:option name="commandLine" as="xs:string" required="false" select="'-help'">
        <!-- The full command line (all arguments in a single string).
             This option is optional because in case of an empty command line, the option will not be set
             (due to the mysterious workings of Windows batch files). -->
    </p:option>

    <!-- ================================================================== -->
    <!-- MAIN: -->

    <!-- The possible command flags: -->
    <p:variable name="commandFlagNoDirectoryCompares" select="'-nodirs'"/>

    <!-- Get the command map: -->
    <yatcs:process-command-line>
        <p:with-option name="commandLineArgumentsString" select="$commandLine"/>
        <p:with-option name="permissibleFlags" select="($yatcs:commandFlagHelp, $commandFlagNoDirectoryCompares)"/>
    </yatcs:process-command-line>
    <p:variable name="commandMap" as="map(*)" select="."/>

    <!-- And go: -->
    <p:choose>

        <!-- direct help request or invalid flags: -->
        <p:when test="$commandMap($yatcs:keyError) or $commandMap($yatcs:keyHasHelpFlag)">
            <yatcs:get-cw-help commandStaticBaseUri="{static-base-uri()}"/>
        </p:when>

        <!-- Go: -->
        <p:otherwise>
            <p:output content-types="xml"/>

            <!-- Get the parameters: -->
            <yatcs:get-combined-parameters-map>
                <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/>
            </yatcs:get-combined-parameters-map>
            <p:variable name="parameters" as="map(xs:string, xs:string*)" select="."/>

            <!-- Get the ada-2-wiki data: -->
            <yatci:get-ada-2-wiki-data>
                <p:with-option name="parameters" select="$parameters"/>
                <p:with-option name="application" select="$commandMap(1)"/>
                <p:with-option name="version" select="$commandMap(2)"/>
            </yatci:get-ada-2-wiki-data>

            <!-- Create a list of directories and files to compare and go: -->
            <p:xslt message="* Creating directory compare list">
                <p:with-input port="stylesheet" href="xsl-compare-ada-2-wiki/create-directory-compare-list.xsl"/>
            </p:xslt>
            <yatcs:do-compares>
                <p:with-option name="noDirectoryCompares" select="map:contains($commandMap, $commandFlagNoDirectoryCompares)"/>
                <p:with-option name="parameters" select="$parameters"/>
            </yatcs:do-compares>

        </p:otherwise>

    </p:choose>

</p:declare-step>
