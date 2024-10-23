<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.xm1_2th_rzb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Module with shared pipelines for the general engine.
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

    <p:import href="../../xplmod/yatc-general.mod.xpl"/>
    <p:import href="../../xplmod/yatc-parameters.mod.xpl"/>

    <p:import href="../../xplmod/component-parameter-names.mod.xpl"/>
    <p:import href="component-parameter-names.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- GENERAL ENGINE CONFIGURATION SETTINGS (gecs): -->
    <!-- These are the keys into a map returned by yatcs:get-general-engine-configuration-as-map. -->

    <p:option static="true" name="yatcs:gecsParnameComponentDataDocument" as="xs:string" select="'parname-component-data-document'"/>
    <p:option static="true" name="yatcs:gecsParnameComponentBaseStorageDirectory" as="xs:string" select="'parname-component-base-storage-directory'"/>
    <p:option static="true" name="yatcs:gecsDataFileSchema" as="xs:string" select="'data-file-schema'"/>
    <p:option static="true" name="yatcs:gecsDataFileSchematron" as="xs:string" select="'data-file-schematron'"/>
    <p:option static="true" name="yatcs:gecsOriginalRepoSubdirName" as="xs:string" select="'original-repo-subdir-name'"/>

    <!-- ======================================================================= -->
    <!-- DEBUG SETTINGS: -->

    <p:option static="true" name="debug" as="xs:boolean" select="false()">
        <!-- Set to true() to get less error handling and (maybe) other additional messaging… -->
    </p:option>


    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:get-general-engine-configuration-as-map">
        <!-- This extends the yatcs:get-general-engine-configuration step. Gets the general engine configuration as a map. -->

        <p:output port="result" primary="true" sequence="false" content-types="json" pipe="@final-result">
            <!-- The resulting general engine configuration map. -->
        </p:output>

        <p:option name="parameters" as="map(*)?" required="false" select="()"/>
        <p:option name="callerStaticBaseUri" as="xs:string" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:declare-step type="local:get-general-engine-configuration">
            <!-- Reads the general engine configuration from the appropriate document. -->

            <p:output port="result" primary="true" sequence="false" content-types="xml">
                <!-- The requested configuration document with all YATC parameters expanded. -->
            </p:output>

            <p:option name="parameters" as="map(*)?" required="false" select="()">
                <!-- Optional set of already retrieved YATC parameters in effect. 
                 If this is provided it will be used. Otherwise a new set of parameters will be computed using
                 $callerStaticBaseUri. -->
            </p:option>

            <p:option name="callerStaticBaseUri" as="xs:string" required="true">
                <!-- The static base URI for which the set of active parameters must be computed. Used only when
                 $parameters is (). -->
            </p:option>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

            <!-- Get the parameters to use (if not already loaded): -->
            <yatcs:get-combined-parameters-map>
                <p:with-option name="parameters" select="$parameters"/>
                <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
            </yatcs:get-combined-parameters-map>
            <p:variable name="parametersInEffect" as="map(*)" select="."/>

            <!-- Load the configuration document: -->
            <yatcs:message level="0" msg="Loading general engine configuration from &quot;{$parameters($yatcs:parnameGeneralEngineConfiguration)}&quot;"/>
            <yatcs:load-document-from-parameter>
                <p:with-option name="parameters" select="$parametersInEffect"/>
                <p:with-option name="parname" select="$yatcs:parnameGeneralEngineConfiguration"/>
                <p:with-option name="hrefSchema" select="resolve-uri('../xsd/general-engine-configuration.xsd', static-base-uri())"/>
            </yatcs:load-document-from-parameter>
            <p:delete match="comment() | processing-instruction()"/>

            <!-- Process all the YATC parameters: -->
            <yatcs:substitute-parameters substituteInAttributes="true" substituteInTextNodes="true">
                <p:with-option name="parameters" select="$parametersInEffect"/>
                <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
            </yatcs:substitute-parameters>

            <!-- Check if we have to store it for test/debug: -->
            <p:if test="(string($parametersInEffect($yatcs:parnameStoreProcessedApplicationData)[1]) eq 'true') and exists($parametersInEffect($yatcs:parnameYatcComponentDirectory))">
                <p:variable name="hrefApplicationFile" select="string-join(($parameters($yatcs:parnameYatcComponentDirectory), 'tmp', 'general-engine-configuration.xml'), '/')"/>
                <yatcs:message level="1" msg="Processed general engine configuration written to &quot;{$hrefApplicationFile}&quot;"/>
                <p:store href="{$hrefApplicationFile}" serialization="$yatcs:standardXmlSerialization"/>
            </p:if>

        </p:declare-step>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Get the parameters to use (if not already loaded). We need the parameters to do some checks later in this pipeline. -->
        <yatcs:get-combined-parameters-map>
            <p:with-option name="parameters" select="$parameters"/>
            <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
        </yatcs:get-combined-parameters-map>
        <p:variable name="parametersInEffect" as="map(*)" select="."/>

        <local:get-general-engine-configuration>
            <p:with-option name="parameters" select="$parametersInEffect"/>
            <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
        </local:get-general-engine-configuration>

        <p:xslt>
            <p:with-input port="stylesheet" href="xsl-general-engine.mod/configuration-to-map.xsl"/>
        </p:xslt>
        <p:variable name="configurationMap" as="map(*)" select="."/>
        <p:identity name="final-result"/>

        <!-- Check whether the given parameter names exist: -->
        <p:variable name="configurationSettingsWithParnames" as="xs:string+" select="($yatcs:gecsParnameComponentDataDocument, $yatcs:gecsParnameComponentBaseStorageDirectory)"/>
        <p:for-each>
            <p:with-input select="$configurationSettingsWithParnames">
                <null/>
            </p:with-input>
            <p:variable name="option" as="xs:string" select="."/>
            <p:variable name="parname" select="$configurationMap($option)"/>
            <p:if test="normalize-space($parametersInEffect($parname)) eq ''">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">General engine configuration option "{$option}" with value "{$parname}" does not reference existing/non-empty parameter</p:inline>
                    </p:with-input>
                </p:error>
            </p:if>
        </p:for-each>

        <!-- Check whether the given documents exist: -->
        <p:variable name="configurationSettingsWithDocument" as="xs:string+" select="($yatcs:gecsDataFileSchema, $yatcs:gecsDataFileSchematron)"/>
        <p:for-each>
            <p:with-input select="$configurationSettingsWithDocument">
                <null/>
            </p:with-input>
            <p:variable name="option" as="xs:string" select="."/>
            <p:variable name="href" select="$configurationMap($option)"/>
            <p:if test="not(doc-available($href))">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">General engine configuration option "{$option}" with value "{$href}" does not reference an existing/well-formed document</p:inline>
                    </p:with-input>
                </p:error>
            </p:if>
        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="local:get-application-data">
        <!-- Gets a pruned and enhanced version of the application data. -->

        <p:import href="../../xplmod/yatc-application-data.mod.xpl"/>

        <p:output port="result" primary="true" sequence="false" content-types="xml"/>

        <p:option name="parameters" as="map(*)" required="true"/>
        <p:option name="configurationMap" as="map(*)" required="true"/>
        <p:option name="callerStaticBaseUri" as="xs:string" required="true"/>
        <p:option name="application" as="xs:string?" required="true"/>
        <p:option name="version" as="xs:string?" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <yatcs:get-application-data>
            <p:with-option name="parameters" select="$parameters"/>
            <p:with-option name="parnameDataDocument" select="$configurationMap($yatcs:gecsParnameComponentDataDocument)"/>
            <p:with-option name="hrefSchema" select="$configurationMap($yatcs:gecsDataFileSchema)"/>
            <p:with-option name="hrefSchematron" select="$configurationMap($yatcs:gecsDataFileSchematron)"/>
            <p:with-option name="hrefFinalizationStylesheet" select="resolve-uri('xsl-general-engine.mod/finalize-data.xsl', static-base-uri())"/>
            <p:with-option name="finalizationStylesheetParameters" select="map{
                'parnameBaseStorageDirectory': $configurationMap($yatcs:gecsParnameComponentBaseStorageDirectory),
                'callerStaticBaseUri': $callerStaticBaseUri
            }"/>
            <p:with-option name="application" select="$application"/>
            <p:with-option name="version" select="$version"/>
        </yatcs:get-application-data>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:general-engine-cw">
        <!-- Implements the command line wrapper for the general engine. -->

        <p:import href="../../../YATC-shared/xplmod/yatc-cw.mod.xpl"/>

        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="commandLine" as="xs:string" required="false" select="'-help'">
            <!-- The full command line (all arguments in a single string).
             This option is optional because in case of an empty command line, the option will not be set
             (due to the mysterious workings of Windows batch files). -->
        </p:option>

        <p:option name="callerStaticBaseUri" as="xs:string" required="true">
            <!-- The static base URI of the caller (the component that is *using* the general engine). -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:try>
            <p:variable name="startDateTime" as="xs:dateTime" select="current-dateTime()"/>

            <!-- Get the command map: -->
            <yatcs:process-command-line>
                <p:with-option name="commandLineArgumentsString" select="$commandLine"/>
                <p:with-option name="permissibleFlags" select="(
                    $yatcs:commandFlagHelp, 
                    $yatcs:commandFlagList, 
                    $yatcs:commandFlagProcess,
                    $yatcs:commandFlagSetup,
                    $yatcs:commandFlagNoSetup,
                    $yatcs:commandFlagAction,
                    $yatcs:commandFlagActionList,
                    $yatcs:commandFlagTestMode
                )"/>
            </yatcs:process-command-line>
            <p:variable name="commandMap" as="map(*)" select="."/>

            <!-- Interpret the command: -->
            <p:choose>

                <!-- Direct help request or invalid flags: -->
                <p:when test="$commandMap($yatcs:keyError) or $commandMap($yatcs:keyHasHelpFlag)">
                    <yatcs:get-cw-help commandStaticBaseUri="{$callerStaticBaseUri}"/>
                </p:when>

                <!-- We have to handle a command: -->
                <p:otherwise>
                    <p:variable name="application" as="xs:string?" select="$commandMap(1)"/>
                    <p:variable name="version" as="xs:string?" select="$commandMap(2)"/>

                    <!-- Get the parameters: -->
                    <yatcs:get-combined-parameters-map>
                        <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
                    </yatcs:get-combined-parameters-map>
                    <p:variable name="parameters" as="map(*)" select="."/>

                    <!-- Get the configuration: -->
                    <yatcs:get-general-engine-configuration-as-map>
                        <p:with-option name="parameters" select="$parameters"/>
                        <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
                    </yatcs:get-general-engine-configuration-as-map>
                    <p:variable name="configurationMap" as="map(*)" select="."/>

                    <!-- Get the application data (processed/enhanced): -->
                    <local:get-application-data name="application-data">
                        <p:with-option name="parameters" select="$parameters"/>
                        <p:with-option name="configurationMap" select="$configurationMap"/>
                        <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
                        <p:with-option name="application" select="$application"/>
                        <p:with-option name="version" select="$version"/>
                    </local:get-application-data>

                    <!-- Process the data: -->
                    <p:choose>

                        <!-- List the applications/versions: -->
                        <p:when test="map:contains($commandMap, $yatcs:commandFlagList)">
                            <yatcs:cw-list>
                                <p:with-option name="actionMarker" select="$yatcs:defaultActionMarker"/>
                            </yatcs:cw-list>
                        </p:when>

                        <!-- List the available actions: -->
                        <p:when test="map:contains($commandMap, $yatcs:commandFlagActionList)">
                            <p:for-each>
                                <p:with-input select="/*/*:application" pipe="@application-data"/>
                                <p:variable name="applicationPrompt" select="string(/*/@name) || '/' || string(/*/@version)"/>
                                <p:for-each>
                                    <p:with-input select="/*/*:action"/>
                                    <p:variable name="description" as="xs:string" select="if (normalize-space(/*/@description) ne '') then (' (' || /*/@description || ')') else ''"/>
                                    <p:variable name="defaultMarker" as="xs:string" select="if (xs:boolean((/*/@default, false())[1])) then '*' else ''"/>
                                    <p:identity>
                                        <p:with-input>
                                            <p:inline content-type="text/plain" xml:space="preserve">{$applicationPrompt} {$defaultMarker}{/*/@name}{$description}</p:inline>
                                        </p:with-input>
                                    </p:identity>
                                </p:for-each>
                            </p:for-each>
                            <p:text-join separator="&#10;"/>
                        </p:when>

                        <!-- No flags (or -process, which we don't have to check implicitly) means: just process the stuff: -->
                        <p:when test="$commandMap($yatcs:keyArgumentsCount) eq 2">

                            <!-- Check whether the mentioned actions exist: -->
                            <p:variable name="actionsAvailable" as="xs:string*" select="/*/*:application/*:action/@name ! string(.)"/>
                            <p:variable name="actionsRequested" as="xs:string*" select="($commandMap($yatcs:commandFlagAction) => tokenize('\+'))[.]"/>
                            <p:variable name="actionsUnavailable" as="xs:string*" select="$actionsRequested[not(. = $actionsAvailable)]"/>
                            <p:if test="exists($actionsUnavailable)">
                                <p:error code="yatcs:error">
                                    <p:with-input>
                                        <p:inline content-type="text/plain" xml:space="preserve">Undefined action(s) requested: {string-join($actionsUnavailable, '; ')}</p:inline>
                                    </p:with-input>
                                </p:error>
                            </p:if>

                            <!-- Go: -->
                            <yatcs:general-engine-process name="process-data">
                                <p:with-option name="parameters" select="$parameters"/>
                                <p:with-option name="noSetup" select="map:contains($commandMap, $yatcs:commandFlagNoSetup)"/>
                                <p:with-option name="setup" select="map:contains($commandMap, $yatcs:commandFlagSetup)"/>
                                <p:with-option name="actions" select="$actionsRequested"/>
                                <p:with-option name="testMode" select="map:contains($commandMap, $yatcs:commandFlagTestMode)"/>
                            </yatcs:general-engine-process>

                            <!-- Report the duration and output nothing: -->
                            <yatcs:report-duration p:depends="process-data">
                                <p:with-option name="startDateTime" select="$startDateTime"/>
                            </yatcs:report-duration>

                        </p:when>

                        <!-- Unrecognized situation, repeat the help info: -->
                        <p:otherwise>
                            <yatcs:get-cw-help commandStaticBaseUri="{$callerStaticBaseUri}"/>
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

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:general-engine-process" name="general-engine-process">
        <!-- Performs the actual processing for the general engine. Acts as an identity step. -->

        <p:input port="source" primary="true" sequence="false" content-types="any">
            <!-- The retrieved, enhanced and pruned application data. -->
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any" pipe="source@general-engine-process"/>

        <p:option name="parameters" as="map(*)" required="true">
            <!-- The YATC parameters in effect. -->
        </p:option>

        <p:option name="noSetup" as="xs:boolean" required="true">
            <!-- Whether to skip the setup -->
        </p:option>

        <p:option name="setup" as="xs:boolean" required="true">
            <!-- Whether to force the setup. This has precedence over $noSetup. -->
        </p:option>

        <p:option name="actions" as="xs:string*" required="true">
            <!-- The list of actions to perform (if any). -->
        </p:option>

        <p:option name="testMode" as="xs:boolean" required="false" select="false()">
            <!-- If $testMode is true, looping over input documents will only do the first one (just to test paths and setups) -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:declare-step type="local:process-for-application" name="process-for-application">
            <!-- Substep. Performs the processing for a single application/version combination, for instance lab/3.0.0.
                 Input is the <*:application> element from the application data file. 
            -->

            <p:import href="../../xplmod/yatc-application-data.mod.xpl"/>
            <p:import href="../../xplmod/yatc-component-steps.mod.xpl"/>

            <p:input port="source" primary="true" sequence="false" content-types="xml">
                <!-- The <*:application> element with the information about what to do. -->
            </p:input>

            <p:option name="parameters" as="map(*)?" required="true"/>

            <!-- These options are usually passed in from the command line: -->
            <p:option name="noSetup" as="xs:boolean" required="true"/>
            <p:option name="setup" as="xs:boolean" required="true"/>
            <p:option name="actions" as="xs:string*" required="true"/>
            <p:option name="testMode" as="xs:boolean" required="true"/>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

            <!-- Initialization/preparations: -->
            <p:variable name="application" as="xs:string" select="xs:string(/*/@name)"/>
            <p:variable name="version" as="xs:string" select="xs:string(/*/@version)"/>
            <p:variable name="storageBaseDirectory" as="xs:string" select="xs:string(/*/@_target-dir)"/>
            <p:variable name="sourceProjectName" as="xs:string" select="xs:string((/*/@source-project-name, $application)[1])"/>
            <p:variable name="defaultActionName" as="xs:string?" select="(/*/*:action[xs:boolean((@default, false())[1])][1])/@name"/>

            <yatcs:message-empty-line/>
            <yatcs:message level="0" msg="{$parameters($yatcs:parnameYatcComponentName)} processing for {$application}/{$version}"/>
            <p:if test="$testMode">
                <yatcs:message level="1" msg="WARNING: TEST MODE"/>
            </p:if>
            <yatcs:message level="1" msg="Application storage directory: &quot;{$storageBaseDirectory}&quot;"/>

            <!-- Output the messages that are not in an action: -->
            <yatcs:process-application-messages/>

            <!-- Find out whether we have to do a setup. If so, do it: -->
            <p:variable name="actionsList" as="xs:string*" select="if (exists($actions)) then $actions else $defaultActionName"/>
            <p:variable name="action-requested-with-setup" select="some $a in /*/*:action[@name = $actionsList] satisfies xs:boolean(($a/@setup, true())[1])"/>
            <p:variable name="action-requested-with-nosetup" select="some $a in /*/*:action[@name = $actionsList] satisfies not(xs:boolean(($a/@setup, true())[1]))"/>
            <p:variable name="doSetup" as="xs:boolean" select="
                (: First we check for explictly requested setup (or not) from the command line :)
                if ($setup) then true()
                else if ($noSetup) then false()
                (: Now we check whether vthere are actions flagged as no setup :)
                else if ($action-requested-with-setup) then true()
                else if ($action-requested-with-nosetup) then false()
                else true()
            "/>

            <!-- Setup (and the empty root directories): -->
            <p:choose name="setups">
                <p:when test="$doSetup">
                    <p:for-each>
                        <p:with-input select="/*/*:setup" pipe="source@process-for-application"/>
                        <yatcs:process-setup-element reportCount="true" loadResults="false"/>
                    </p:for-each>
                    <p:for-each>
                        <p:with-input select="/*/*:empty-root-directory" pipe="source@process-for-application"/>
                        <yatcs:process-empty-root-directory-element/>
                    </p:for-each>
                </p:when>
                <p:otherwise>
                    <yatcs:message level="1" msg="Skipping setup"/>
                </p:otherwise>
            </p:choose>

            <!-- Process the steps that are *not* in an action first: -->
            <p:delete match="/*/*:action">
                <p:with-input pipe="source@process-for-application"/>
            </p:delete>
            <yatcs:process-standard-steps doMessages="false" p:depends="setups">
                <p:with-option name="recognizedStepElementNames" select="$yatcs:stepAll"/>
                <p:with-option name="application" select="$application"/>
                <p:with-option name="version" select="$version"/>
                <p:with-option name="storageBaseDirectory" select="$storageBaseDirectory"/>
                <p:with-option name="sourceProjectName" select="$sourceProjectName"/>
                <p:with-option name="messageIndentLevel" select="1"/>
                <p:with-option name="testMode" select="$testMode"/>
            </yatcs:process-standard-steps>

            <!-- And now have a look at the actions: -->
            <p:identity depends="setups">
                <p:with-input pipe="source@process-for-application"/>
            </p:identity>
            <p:choose>
                <p:when test="empty($actions) and exists($defaultActionName)">
                    <local:process-action-by-name>
                        <p:with-input pipe="source@process-for-application"/>
                        <p:with-option name="actionName" select="$defaultActionName"/>
                        <p:with-option name="parameters" select="$parameters"/>
                        <p:with-option name="testMode" select="$testMode"/>
                    </local:process-action-by-name>
                </p:when>
                <p:when test="exists($actions)">
                    <p:for-each>
                        <p:with-input select="$actions">
                            <null/>
                        </p:with-input>
                        <p:variable name="actionName" as="xs:string" select="."/>
                        <local:process-action-by-name>
                            <p:with-input pipe="source@process-for-application"/>
                            <p:with-option name="actionName" select="$actionName"/>
                            <p:with-option name="parameters" select="$parameters"/>
                            <p:with-option name="testMode" select="$testMode"/>
                        </local:process-action-by-name>
                    </p:for-each>
                </p:when>
                <p:otherwise>
                    <!-- Do nothing: -->
                    <p:identity/>
                </p:otherwise>
            </p:choose>

        </p:declare-step>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:declare-step type="local:process-action-by-name" name="process-action-by-name">
            <!-- Performs all the processing for a single action. The action must be passed in by name.
                 If this action has any dependent actions (@depends-on), these will be executed first.
                 A check is made for circular action references.
                 The step itself acts as an identity step.
            -->
            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

            <p:import href="../../xplmod/yatc-component-steps.mod.xpl"/>

            <p:input port="source" primary="true" sequence="false" content-types="xml">
                <!-- The <*:application> element that holds the action to process. -->
            </p:input>
            <p:output port="result" sequence="false" content-types="xml" pipe="source@process-action-by-name"/>

            <p:option name="actionName" as="xs:string" required="true"/>
            <p:option name="parameters" as="map(xs:string, xs:string*)" required="true"/>
            <p:option name="dependencyParentActionName" as="xs:string?" required="false" select="()">
                <!-- If this action is executed as a dependency of another action (part of its @depends-on attribute),
                     pass the name of the parent action in this option. Used for reporting only. -->
            </p:option>
            <p:option name="previousDependencyActions" as="xs:string*" required="false" select="()">
                <!-- List of actions already executed (to detect circular references). -->
            </p:option>
            <p:option name="testMode" as="xs:boolean" required="true"/>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

            <!-- Check if this action exists at all: -->
            <p:if test="empty(/*/*:action[@name eq $actionName])">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Undefined action: "{$actionName}"</p:inline>
                    </p:with-input>
                </p:error>
            </p:if>

            <!-- Check for circular actions (whether this action was already executed): -->
            <p:if test="$actionName = $previousDependencyActions">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Circular action dependency: "{$actionName}" was already executed</p:inline>
                    </p:with-input>
                </p:error>
            </p:if>

            <!-- Extract and gather some basic application-level things for this action/builds: -->
            <p:variable name="application" as="xs:string" select="xs:string(/*/@name)"/>
            <p:variable name="version" as="xs:string" select="xs:string(/*/@version)"/>
            <p:variable name="storageBaseDirectory" as="xs:string" select="xs:string(/*/@_target-dir)"/>
            <p:variable name="sourceProjectName" as="xs:string" select="xs:string((/*/@source-project-name, $application)[1])"/>

            <!-- Process the requested action: -->
            <p:for-each name="process-action">
                <p:with-input select="/*/*:action[@name eq $actionName][1]"/>

                <!-- First, take care of the dependencies (if any): -->
                <p:variable name="dependencies" as="xs:string*" select="tokenize(string(/*/@depends-on), '\s+')[.]"/>
                <p:for-each>
                    <p:with-input select="$dependencies">
                        <null/>
                    </p:with-input>
                    <p:variable name="mainActionName" as="xs:string" select="$actionName">
                        <!-- Remark: This copying of the action name shouldn't be necessary, but it works around a hard to trace bug... :( -->
                    </p:variable>
                    <p:variable name="dependentActionName" as="xs:string" select="."/>
                    <local:process-action-by-name>
                        <p:with-input pipe="source@process-action-by-name"/>
                        <p:with-option name="actionName" select="$dependentActionName"/>
                        <p:with-option name="dependencyParentActionName" select="$mainActionName"/>
                        <p:with-option name="previousDependencyActions" select="($previousDependencyActions, $mainActionName)"/>
                        <p:with-option name="parameters" select="$parameters"/>
                        <p:with-option name="testMode" select="$testMode"/>
                    </local:process-action-by-name>
                </p:for-each>

                <!-- Now go for this specific action: -->
                <p:identity>
                    <p:with-input pipe="current@process-action"/>
                </p:identity>
                <yatcs:message level="1" msg="Action {string-join((/*/@name, /*/@description), ' - ')}{if (exists($dependencyParentActionName)) then (' (dependency of ' || $dependencyParentActionName || ')') else ()} for {$application}/{$version}"/>

                <yatcs:process-standard-steps>
                    <p:with-option name="application" select="$application"/>
                    <p:with-option name="version" select="$version"/>
                    <p:with-option name="storageBaseDirectory" select="$storageBaseDirectory"/>
                    <p:with-option name="sourceProjectName" select="$sourceProjectName"/>
                    <p:with-option name="messageIndentLevel" select="2"/>
                    <p:with-option name="testMode" select="$testMode"/>
                </yatcs:process-standard-steps>

            </p:for-each>

        </p:declare-step>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:identity use-when="$debug" message="**** General engine running in debug mode!"/>

        <!-- Now loop over all the applications that are in the pruned data: -->
        <p:for-each>
            <p:with-input select="/*/*:application"/>

            <!-- Perform the processing for each application (when debugging we don't add the try/catch): -->
            <p:try use-when="not($debug)">
                <local:process-for-application>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="noSetup" select="$noSetup"/>
                    <p:with-option name="setup" select="$setup"/>
                    <p:with-option name="actions" select="$actions"/>
                    <p:with-option name="testMode" select="$testMode"/>
                </local:process-for-application>
                <p:catch code="yatcs:error">
                    <!-- Some YATC error occurred during processing. Report this, but try to keep calm and carry on: -->
                    <yatcs:report-yatc-error/>
                    <p:sink/>
                </p:catch>
            </p:try>

            <!-- Run stuff without an error catch in debug mode: -->
            <local:process-for-application p:use-when="$debug">
                <p:with-option name="parameters" select="$parameters"/>
                <p:with-option name="noSetup" select="$noSetup"/>
                <p:with-option name="setup" select="$setup"/>
                <p:with-option name="actions" select="$actions"/>
                <p:with-option name="testMode" select="$testMode"/>
            </local:process-for-application>

        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:general-engine-compare-cw">
        <!-- Implements the command line wrapper for the general engine compare. -->

        <p:import href="../../../YATC-shared/xplmod/yatc-cw.mod.xpl"/>
        <p:import href="../../xplmod/yatc-application-data.mod.xpl"/>
        <p:import href="../../xplmod/compare.mod.xpl"/>

        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="commandLine" as="xs:string" required="false" select="'-help'">
            <!-- The full command line (all arguments in a single string).
             This option is optional because in case of an empty command line, the option will not be set
             (due to the mysterious workings of Windows batch files). -->
        </p:option>

        <p:option name="callerStaticBaseUri" as="xs:string" required="true">
            <!-- The static base URI of the caller (the component that is *using* the general engine). -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Get the command map: -->
        <yatcs:process-command-line>
            <p:with-option name="commandLineArgumentsString" select="$commandLine"/>
            <p:with-option name="permissibleFlags" select="($yatcs:commandFlagHelp)"/>
        </yatcs:process-command-line>
        <p:variable name="commandMap" as="map(*)" select="."/>

        <!-- And go: -->
        <p:choose>

            <!-- Direct help request or invalid flags: -->
            <p:when test="$commandMap($yatcs:keyError) or $commandMap($yatcs:keyHasHelpFlag)">
                <yatcs:get-cw-help commandStaticBaseUri="{$callerStaticBaseUri}"/>
            </p:when>

            <!-- Go: -->
            <p:otherwise>
                <p:output content-types="xml"/>

                <!-- Get the parameters: -->
                <yatcs:get-combined-parameters-map>
                    <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
                </yatcs:get-combined-parameters-map>
                <p:variable name="parameters" as="map(*)" select="."/>

                <!-- Get the configuration: -->
                <yatcs:get-general-engine-configuration-as-map>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
                </yatcs:get-general-engine-configuration-as-map>
                <p:variable name="configurationMap" as="map(*)" select="."/>

                <!-- Get the application data (processed/enhanced): -->
                <local:get-application-data>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="configurationMap" select="$configurationMap"/>
                    <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
                    <p:with-option name="application" select="$commandMap(1)"/>
                    <p:with-option name="version" select="$commandMap(2)"/>
                </local:get-application-data>

                <!-- Create a list of directories and files to compare and go: -->
                <yatcs:message level="0" msg="Creating directory compare list"/>
                <p:xslt>
                    <p:with-input port="stylesheet" href="xsl-general-engine.mod/create-directory-compare-list.xsl"/>
                    <p:with-option name="parameters" select="map{
                        'repoSubdirName': $configurationMap($yatcs:gecsOriginalRepoSubdirName),  
                        'descriptionSuffixBase': $parameters($yatcs:parnameYatcComponentName),
                        'repoForComparisonsBaseDir': $parameters($yatcs:parnameMappingsRepoForComparisonsBaseDirectory)
                    }"/>
                </p:xslt>

                <!-- Check if we have to store the compare list for test/debug: -->
                <p:if test="(string($parameters($yatcs:parnameStoreProcessedApplicationData)[1]) eq 'true') and exists($parameters($yatcs:parnameYatcComponentDirectory))">
                    <p:variable name="hrefCompareListFile" select="string-join(($parameters($yatcs:parnameYatcComponentDirectory), 'tmp', 'compare-list.xml'), '/')"/>
                    <yatcs:message level="1" msg="Compare list written to &quot;{$hrefCompareListFile}&quot;"/>
                    <p:store href="{$hrefCompareListFile}" serialization="$yatcs:standardXmlSerialization"/>
                </p:if>

                <!-- Go and compare: -->
                <yatcs:do-compares>
                    <p:with-option name="parameters" select="$parameters"/>
                </yatcs:do-compares>

            </p:otherwise>

        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:combine-parameters-with-general-engine-configuration">
        <!-- This step takes the set of parameters and checks whether there is a general engine configuration present.
             If so, it loads this and merges these settings into the set of parameters. 
             It is intended for processing the combined parameters+general engine settings in substitutions, for instance in documentation.
        -->

        <p:output port="result" primary="true" sequence="false" content-types="json">
            <!-- The resulting parameters map -->
        </p:output>

        <p:option name="parameters" as="map(*)" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:choose>
            <p:when test="map:contains($parameters, $yatcs:parnameGeneralEngineConfiguration)">

                <!-- Get the map with the general engine configuration: -->
                <p:variable name="baseUri" as="xs:string" select="$parameters($yatcs:parnameBaseUri)"/>
                <yatcs:get-general-engine-configuration-as-map>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="callerStaticBaseUri" select="$baseUri"/>
                </yatcs:get-general-engine-configuration-as-map>
                <p:variable name="configurationMap" as="map(*)" select="."/>

                <!-- Merge and output: -->
                <p:identity>
                    <p:with-input select="map:merge(($parameters, $configurationMap))">
                        <null/>
                    </p:with-input>
                </p:identity>

            </p:when>
            <p:otherwise>
                <!-- No general engine configuration, just output what we got in: -->
                <p:identity>
                    <p:with-input select="$parameters">
                        <null/>
                    </p:with-input>
                </p:identity>
            </p:otherwise>
        </p:choose>

    </p:declare-step>

</p:library>
