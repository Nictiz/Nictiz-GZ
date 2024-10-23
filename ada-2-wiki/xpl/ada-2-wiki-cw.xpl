<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.jgb_q4z_2wb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This is the command wrapper for the pipeline in ada-2-wiki.xpl.
       For more information see help/ada-2-wiki-cw.help.txt
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
    <p:import href="../xplmod/ada-2-wiki.mod.xpl"/>
    <p:import href="ada-2-wiki.xpl"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:output port="result" primary="true" sequence="true" content-types="any"/>

    <!-- ======================================================================= -->
    <!-- OPTIONS: -->

    <p:option name="commandLine" as="xs:string" required="false" select="'-help'">
        <!-- The full command line (all arguments in a single string).
             This option is optional because in case of an empty command line, the option will not be set
             (due to the mysterious workings of Windows batch files). -->
    </p:option>

    <!-- ================================================================== -->

    <p:try>
        <p:variable name="startDateTime" as="xs:dateTime" select="current-dateTime()"/>

        <!-- Get the command map: -->
        <yatcs:process-command-line>
            <p:with-option name="commandLineArgumentsString" select="$commandLine"/>
            <p:with-option name="permissibleFlags" select="(
                $yatcs:commandFlagHelp, 
                $yatcs:commandFlagList, 
                $yatcs:commandFlagProcess, 
                $yatcs:commandFlagRefresh, 
                $yatcs:commandFlagNoSetup
            )"/>
        </yatcs:process-command-line>
        <p:variable name="commandMap" as="map(*)" select="."/>

        <!-- Interpret the command: -->
        <p:choose>

            <!-- direct help request or invalid flags: -->
            <p:when test="$commandMap($yatcs:keyError) or $commandMap($yatcs:keyHasHelpFlag)">
                <yatcs:get-cw-help commandStaticBaseUri="{static-base-uri()}"/>
            </p:when>

            <!-- We have to handle a command: -->
            <p:otherwise>
                <p:variable name="application" as="xs:string?" select="$commandMap(1)"/>
                <p:variable name="version" as="xs:string?" select="$commandMap(2)"/>

                <!-- Get the parameters: -->
                <yatcs:get-combined-parameters-map>
                    <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/>
                </yatcs:get-combined-parameters-map>
                <p:variable name="parameters" as="map(xs:string, xs:string*)" select="."/>

                <!-- Get the ada-2-wiki data: -->
                <yatci:get-ada-2-wiki-data>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="application" select="$application"/>
                    <p:with-option name="version" select="$version"/>
                </yatci:get-ada-2-wiki-data>
                <p:variable name="ada2WikiData" as="document-node()" select="."/>

                <p:choose>

                    <!-- List the applications/versions: -->
                    <p:when test="map:contains($commandMap, $yatcs:commandFlagList)">
                        <yatcs:cw-list/>
                    </p:when>

                    <!-- No flags (or -process, which we don't have to check implicitly) means: do ada-2-wiki: -->
                    <p:when test="$commandMap($yatcs:keyArgumentsCount) eq 2">
                        <p:output content-types="any" sequence="true"/>

                        <yatci:process-ada-2-wiki name="process-ada-2-wiki">
                            <p:with-option name="parameters" select="$parameters"/>
                            <p:with-option name="ada2WikiData" select="$ada2WikiData"/>
                            <p:with-option name="application" select="$application"/>
                            <p:with-option name="version" select="$version"/>
                            <p:with-option name="refresh" select="map:contains($commandMap, $yatcs:commandFlagRefresh)"/>
                            <p:with-option name="noSetup" select="map:contains($commandMap, $yatcs:commandFlagNoSetup)"/>
                        </yatci:process-ada-2-wiki>

                        <!-- Report the duration and output nothing: -->
                        <yatcs:report-duration p:depends="process-ada-2-wiki">
                            <p:with-option name="startDateTime" select="$startDateTime"/>
                        </yatcs:report-duration>

                    </p:when>

                    <!-- Unrecognized situation, repeat the help info: -->
                    <p:otherwise>
                        <yatcs:get-cw-help commandStaticBaseUri="{static-base-uri()}"/>
                    </p:otherwise>
                </p:choose>

            </p:otherwise>

        </p:choose>

        <p:catch code="yatcs:error">
            <!-- An error occurred which we raised ourselves. Report it in a friendly way: -->
            <yatcs:report-yatc-error/>
        </p:catch>

    </p:try>

</p:declare-step>
