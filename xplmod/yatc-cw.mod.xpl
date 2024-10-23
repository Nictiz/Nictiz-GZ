<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.u43_ygj_lwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Module with support for command wrapper (-cw) pipelines. These pipelines 
       handle/unravel a command-line command.
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
    <!-- STATIC OPTIONS: -->

    <!-- Some basic command flags (use when needed): -->
    <p:option static="true" name="yatcs:commandFlagHelp" as="xs:string" select="'-help'"/>
    <p:option static="true" name="yatcs:commandFlagGet" as="xs:string" select="'-get'"/>
    <p:option static="true" name="yatcs:commandFlagList" as="xs:string" select="'-list'"/>
    <p:option static="true" name="yatcs:commandFlagProcess" as="xs:string" select="'-process'"/>
    <p:option static="true" name="yatcs:commandFlagRefresh" as="xs:string" select="'-refresh'"/>
    <p:option static="true" name="yatcs:commandFlagSetup" as="xs:string" select="'-setup'"/>
    <p:option static="true" name="yatcs:commandFlagNoSetup" as="xs:string" select="'-nosetup'"/>
    <p:option static="true" name="yatcs:commandFlagAction" as="xs:string" select="'-action'"/>
    <p:option static="true" name="yatcs:commandFlagActionList" as="xs:string" select="'-actionlist'"/>
    <p:option static="true" name="yatcs:commandFlagVersion" as="xs:string" select="'-version'"/>
    <p:option static="true" name="yatcs:commandFlagTestMode" as="xs:string" select="'-testmode'"/>

    <!-- Standard keys in the map returned by yatcs:process-command-line: -->
    <p:option static="true" name="yatcs:keyError" as="xs:string" select="'_ERROR'"/>
    <p:option static="true" name="yatcs:keyArguments" as="xs:string" select="'_ARGUMENTS'"/>
    <p:option static="true" name="yatcs:keyArgumentsCount" as="xs:string" select="'_ARGUMENTSCOUNT'"/>
    <p:option static="true" name="yatcs:keyHasHelpFlag" as="xs:string" select="'_HELP'"/>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:process-command-line">
        <!-- 
            Processes a command line and returns a map as described in xsl-yatc-cw/process-command-arguments.xsl.
        -->

        <p:output port="result" primary="true" sequence="false" content-types="json">
            <!-- The resulting command line map. -->
        </p:output>

        <p:option name="commandLineArgumentsString" as="xs:string" required="true">
            <!-- The full command line arguments part (the string after the command, with all arguments and flags)  -->
        </p:option>

        <p:option name="permissibleFlags" as="xs:string*" required="false" select="()">
            <!-- A list with all permissible flags for this command. These flags always start with a hyphen. 
                 See for examples and usual values the list with basic command flags at the top of this module. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:xslt>
            <p:with-input>
                <null/>
            </p:with-input>
            <p:with-input port="stylesheet" href="xsl-yatc-cw/process-command-arguments.xsl"/>
            <p:with-option name="parameters" select="map{'commandLineArgumentsString': $commandLineArgumentsString, 'permissibleFlags': $permissibleFlags}"/>
        </p:xslt>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:get-cw-help">
        <!-- 
            This step returns the help text for the command (passed in by static base URI).
            The help text must reside in one of the following:
            * A text file called {path-to-command-pipeline}/help/{name-of-command-pipeline}.help.txt
            * An XML file called {path-to-command-pipeline}/help/{name-of-command-pipeline}.help.xml and formatted 
              according to ../xsd/command-help-text.xsd
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="false" content-types="text">
            <!-- The help text found (or some message saying it couldn't be found). -->
        </p:output>

        <p:option name="commandStaticBaseUri" as="xs:string" required="true">
            <!-- The static base URI of the command pipeline this is for. -->
        </p:option>

        <p:option name="markdown" as="xs:boolean" required="false" select="false()">
            <!-- When true, the output will be in Markdown. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Unravel the command URI and create the right path to the help text file: -->
        <!-- Remark: This regular expression juggling was copied from the appropriate functions in ../xslmod/href.mod.xsl -->
        <p:variable name="commandName" as="xs:string" select="replace($commandStaticBaseUri, '.*[/\\]([^/\\]+)$', '$1')"/>
        <p:variable name="commandNameNoExtension" as="xs:string" select="replace($commandName, '\.[^\.]+$', '')"/>
        <p:variable name="commandPath" as="xs:string" select="replace($commandStaticBaseUri, '(.*)[/\\][^/\\]+$', '$1')"/>

        <p:variable name="hrefHelpTextBase" as="xs:string" select="string-join(($commandPath, 'help', $commandNameNoExtension || '.help.'), '/')"/>
        <p:variable name="hrefHelpText" as="xs:string" select="$hrefHelpTextBase || 'txt'"/>
        <p:variable name="hrefHelpXml" as="xs:string" select="$hrefHelpTextBase || 'xml'"/>

        <p:choose>
            <p:when test="unparsed-text-available($hrefHelpText)">
                <p:load href="{$hrefHelpText}" content-type="text/plain"/>
                <!-- Remove any carriage return characters that might have crept in during editing: -->
                <p:text-replace pattern="&#x0D;" replacement=""/>
            </p:when>
            <p:when test="doc-available($hrefHelpXml)">
                <p:xinclude>
                    <p:with-input href="{$hrefHelpXml}"/>
                </p:xinclude>
                <p:xslt>
                    <p:with-input port="stylesheet" href="xsl-yatc-cw/process-help-xml.xsl"/>
                    <p:with-option name="parameters" select="map{'commandStaticBaseUri': $commandStaticBaseUri, 'markdown': $markdown}"/>
                </p:xslt>
            </p:when>
            <p:otherwise>
                <p:identity>
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Help text not found (expected in &quot;{$hrefHelpTextBase}txt|xml&quot;</p:inline>
                    </p:with-input>
                </p:identity>
            </p:otherwise>
        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:report-duration" name="report-duration">
        <!-- 
            Simple identity step that reports the duration of something in a uniform way. 
            Always outputs empty!
        -->

        <p:import href="yatc-general.mod.xpl"/>

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true">
            <p:empty/>
        </p:output>

        <p:option name="startDateTime" as="xs:dateTime" required="true">
            <!-- The date/time the thing to report on started. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <yatcs:message level="0" msg="Duration: {(current-dateTime() - $startDateTime) => string() => replace('^PT', '') => lower-case()}"/>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:cw-list">
        <!-- 
            Performs the things that need to happen on a standard -list option. Either lists all applications/versions
            or all applications/versions/distributions.
        -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The pruned application data file to use for the listing. -->
        </p:input>

        <p:option name="actionMarker" as="xs:string?" required="false" select="()">
            <!-- When non-empty: Marker to show after the name/version of an application when this has actions. -->
        </p:option>

        <p:output port="result" primary="true" sequence="true" content-types="text"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="showActionMarker" as="xs:boolean" select="normalize-space($actionMarker) ne ''"/>

        <p:for-each>
            <p:with-input select="/*/*:application"/>

            <p:variable name="application" as="xs:string" select="string(/*/@name)"/>
            <p:variable name="version" as="xs:string" select="string(/*/@version)"/>
            <p:variable name="hasActions" as="xs:boolean" select="exists(/*/*:action)"/>

            <p:identity>
                <p:with-input>
                    <p:inline content-type="text/plain" xml:space="preserve">{$application} {$version}{if ($hasActions and $showActionMarker) then (' ' || $actionMarker) else ()}</p:inline>
                </p:with-input>
            </p:identity>
        </p:for-each>

        <p:text-join separator="&#10;"/>

    </p:declare-step>

</p:library>
