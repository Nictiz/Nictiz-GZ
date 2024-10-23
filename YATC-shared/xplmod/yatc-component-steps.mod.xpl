<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:err="http://www.w3.org/ns/xproc-error" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.u43_ygj_lwb" xmlns:xvrl="http://www.xproc.org/ns/xvrl" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Module that implements some standard steps a component might use in its application data file,
       like <build>, <validate-with-schema>, etc.
       
       All definitions for these standard steps are in ../xsdmod/application-data-file.mod.xsd.
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

    <p:import href="yatc-general.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- STATIC OPTIONS: -->

    <!-- Names of the standard steps we can handle in this module (see also step yatcs:process-standard-steps). -->
    <p:option static="true" name="yatcs:stepBuild" as="xs:string" select="'build'"/>
    <p:option static="true" name="yatcs:stepValidateWithSchema" as="xs:string" select="'validate-with-schema'"/>
    <p:option static="true" name="yatcs:stepValidateWithSchematron" as="xs:string" select="'validate-with-schematron'"/>
    <p:option static="true" name="yatcs:stepCopy" as="xs:string" select="'copy'"/>

    <p:option static="true" name="yatcs:stepAll" as="xs:string+" select="($yatcs:stepBuild, $yatcs:stepValidateWithSchema, $yatcs:stepValidateWithSchematron, $yatcs:stepCopy)"/>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:process-step-build" name="process-step-build">
        <!-- 
            Processes a standard build step (<build> element). The step itself acts as an identity step. The 
            
            The step is defined in ../xsdmod/application-data-file.mod.xsd, element group g-standard-build-step.
        -->

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:import href="yatc-fast-transforms.mod.xpl"/>

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The <*:build> element to process. -->
        </p:input>
        <p:output port="result" sequence="false" content-types="xml" pipe="source@process-step-build"/>

        <p:option name="application" as="xs:string" required="true">
            <!-- Name of the application we're doing this for. -->
        </p:option>

        <p:option name="version" as="xs:string" required="true">
            <!-- The version of the application we're doing this for. -->
        </p:option>

        <p:option name="storageBaseDirectory" as="xs:string" required="true">
            <!-- The base storage location for writing result to. -->
        </p:option>

        <p:option name="sourceProjectName" as="xs:string?" required="false" select="()">
            <!-- The optional name of the project this application/version is using. -->
        </p:option>

        <p:option name="defaultBuildName" as="xs:string" required="false" select="'build'">
            <!-- The optional default build name (this will not be used if there's a /*/@name on the element). -->
        </p:option>

        <p:option name="messageIndentLevel" as="xs:integer" required="false" select="1">
            <!-- The base indent level for the output of messages. Lowest value: 0 (means against the left margin) -->
        </p:option>

        <p:option name="testMode" as="xs:boolean" required="false" select="false()">
            <!-- If $testMode is true, looping over input documents will only do the first one (just to test paths and setups) -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="buildName" as="xs:string" select="string((/*/@name, $defaultBuildName)[1])"/>
        <p:variable name="hrefBuildStylesheet" as="xs:string" select="string(/*/*:stylesheet/@href)"/>
        <p:variable name="fast" as="xs:boolean" select="xs:boolean((/*/@fast, false())[1])"/>
        <p:variable name="silent" as="xs:boolean" select="xs:boolean((/*/@silent, false())[1])"/>

        <!-- Identify the stylesheet to be used and check its availability: -->
        <yatcs:message level="{$messageIndentLevel}" msg="Build &quot;{$buildName}&quot;{if ($fast) then ' (fast)' else ()}"/>
        <yatcs:message level="{$messageIndentLevel + 1}" msg="Stylesheet: &quot;{$hrefBuildStylesheet}&quot;"/>
        <p:if test="not(doc-available($hrefBuildStylesheet))">
            <p:error code="yatcs:error">
                <p:with-input>
                    <p:inline content-type="text/plain" xml:space="preserve">Build stylesheet not found or not well-formed: &quot;{$hrefBuildStylesheet}&quot;</p:inline>
                </p:with-input>
            </p:error>
        </p:if>

        <!-- Find out up-front what we have to do with the direct output of the stylesheet: -->
        <p:variable name="discardOutput" as="xs:boolean" select="exists(/*/*:discard-output)"/>
        <p:variable name="multipleOutputs" select="not($discardOutput) and exists(/*/*:output-documents)"/>
        <p:variable name="outputSpecification" as="xs:string?" select="
            if ($discardOutput) then () 
            else if ($multipleOutputs) then string(/*/*:output-documents/@directory)
            else string-join((/*/*:output-document/@directory, /*/*:output-document/@name), '/')
         "/>
        <p:variable name="resultFilenameSuffix" as="xs:string?" select="
            if ($multipleOutputs) 
            then string(/*/*:output-documents/@result-filename-suffix)[.] 
            else ()
        "/>

        <yatcs:message enabled="{not($discardOutput)}" level="{$messageIndentLevel + 1}" msg="Output {if ($multipleOutputs) then 'directory' else 'document'}: &quot;{$outputSpecification}&quot;"/>

        <!-- Create the basic map with the stylesheet parameters. -->
        <p:xslt>
            <p:with-input pipe="source@process-step-build"/>
            <p:with-input port="stylesheet" href="xsl-yatc-component-steps.mod/get-build-stylesheet-parameters.xsl"/>
            <p:with-option name="parameters" select="map{
                'application': $application, 
                'version': $version, 
                'sourceProjectName': $sourceProjectName,
                'buildName': $buildName,
                'baseDirectory': $storageBaseDirectory
            }"/>
        </p:xslt>
        <p:variable name="buildStylesheetParameters" as="map(*)" select="."/>

        <!-- Now based on the type of input we have, run the stylesheet: -->
        <p:identity>
            <p:with-input pipe="source@process-step-build"/>
        </p:identity>
        <p:choose name="apply-build-stylesheet">

            <!-- No input document: -->
            <p:when test="exists(/*/*:no-input)">
                <p:output port="result" primary="true" sequence="true"/>
                <p:output port="secondary" primary="false" sequence="true" pipe="secondary@apply-build-stylesheet-no-input"/>

                <yatcs:message enabled="{not($silent)}" level="{$messageIndentLevel + 1}" msg="No input document"/>

                <p:xslt name="apply-build-stylesheet-no-input">
                    <p:with-input>
                        <dummy/>
                    </p:with-input>
                    <p:with-input port="stylesheet" href="{$hrefBuildStylesheet}"/>
                    <p:with-option name="parameters" select="$buildStylesheetParameters"/>
                </p:xslt>
                <!-- Set the correct base-uri for the direct output document (if not discarded): -->
                <p:if test="not($discardOutput)">
                    <p:choose>
                        <p:when test="$multipleOutputs">
                            <p:set-properties properties="map{'base-uri': string-join(($outputSpecification, 'no-input.xml'), '/')}"/>
                        </p:when>
                        <p:otherwise>
                            <p:set-properties properties="map{'base-uri': $outputSpecification}"/>
                        </p:otherwise>
                    </p:choose>
                </p:if>
            </p:when>

            <!-- A specific input document: -->
            <p:when test="exists(/*/*:input-document)">
                <p:output port="result" primary="true" sequence="true"/>
                <p:output port="secondary" primary="false" sequence="true" pipe="secondary@apply-build-stylesheet-input-document"/>

                <p:variable name="inputFilename" select="string(/*/*:input-document[1]/@name)"/>
                <p:variable name="inputUri" as="xs:string" select="string-join((/*/*:input-document[1]/@directory, $inputFilename), '/')"/>
                <p:if test="not(doc-available($inputUri))">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Input document for build not found or not well-formed: &quot;{$inputFilename}&quot;</p:inline>
                        </p:with-input>
                    </p:error>
                </p:if>
                <yatcs:message level="{$messageIndentLevel + 1}" msg="Input document &quot;{$inputFilename}&quot;"/>
                <p:xslt name="apply-build-stylesheet-input-document">
                    <p:with-input href="{$inputUri}"/>
                    <p:with-input port="stylesheet" href="{$hrefBuildStylesheet}"/>
                    <p:with-option name="parameters" select="$buildStylesheetParameters"/>
                </p:xslt>
                <!-- Set the correct base-uri for the direct output document (if not discarded): -->
                <p:if test="not($discardOutput)">
                    <p:choose>
                        <p:when test="$multipleOutputs">
                            <p:set-properties properties="map{'base-uri': string-join(($outputSpecification, $inputFilename), '/')}"/>
                        </p:when>
                        <p:otherwise>
                            <p:set-properties properties="map{'base-uri': $outputSpecification}"/>
                        </p:otherwise>
                    </p:choose>
                </p:if>
            </p:when>

            <!-- Multiple input documents -->
            <p:when test="exists(/*/*:input-documents)">
                <p:output port="result" primary="true" sequence="true" pipe="result@apply-build-stylesheet"/>
                <p:output port="secondary" primary="false" sequence="true" pipe="secondary@apply-build-stylesheet"/>

                <p:variable name="inputDocumentsElement" as="element()" select="/*/*:input-documents[1]"/>
                <p:variable name="inputDirectory" as="xs:string" select="string($inputDocumentsElement/@directory)"/>
                <p:variable name="acceptEmpty" as="xs:boolean" select="xs:boolean(($inputDocumentsElement/@accept-empty, false())[1])"/>
                <!-- Load the documents: -->
                <yatcs:message level="{$messageIndentLevel + 1}" msg="Input directory: &quot;{$inputDirectory}&quot;"/>
                <yatcs:load-documents-from-disk-from-patterns>
                    <p:with-option name="copyPatternsElement" select="$inputDocumentsElement"/>
                    <p:with-option name="hrefSource" select="$inputDirectory"/>
                </yatcs:load-documents-from-disk-from-patterns>
                <!-- Check for an empty set: -->
                <p:variable name="inputDocumentsCount" as="xs:integer" select="count(collection())" collection="true"/>
                <p:if test="not($acceptEmpty) and ($inputDocumentsCount le 0)">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">No documents selected for build "{$buildName}"</p:inline>
                        </p:with-input>
                    </p:error>
                </p:if>
                <!-- In test mode we only do the first document of the sequence: -->
                <yatcs:keep-first-document enabled="{$testMode}" msg-level="{$messageIndentLevel + 1}"/>
                <!-- When running in silent mode, at least tell the world how much we're going to do: -->
                <p:if test="$silent">
                    <p:variable name="docCount" as="xs:integer" select="count(collection())" collection="true"/>
                    <yatcs:message level="{$messageIndentLevel + 1}" msg="Silently transforming {$docCount} document{if ($docCount eq 1) then () else 's'}"/>
                </p:if>
                <!-- Do the transforms: -->
                <yatcs:mass-xslt name="apply-build-stylesheet">
                    <p:with-option name="hrefStylesheet" select="$hrefBuildStylesheet"/>
                    <p:with-option name="hrefTargetDir" select="$outputSpecification"/>
                    <p:with-option name="parameters" select="$buildStylesheetParameters"/>
                    <p:with-option name="messageIndentLevel" select="if ($silent) then -1 else ($messageIndentLevel + 1)"/>
                    <p:with-option name="enableFast" select="$fast"/>
                </yatcs:mass-xslt>
            </p:when>

            <!-- Unrecognized: -->
            <p:otherwise>
                <p:output port="result" primary="true" sequence="true">
                    <p:empty/>
                </p:output>
                <p:output port="secondary" primary="false" sequence="true">
                    <p:empty/>
                </p:output>
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Invalid or missing input specification for build &quot;{$buildName}&quot;</p:inline>
                    </p:with-input>
                </p:error>
            </p:otherwise>

        </p:choose>

        <!-- The primary output of the p:choose above are the direct document(s) produced by the stylesheet. 
             See if we have to store this. Take care of requested changes in the filename extension-->
        <p:if test="not($discardOutput)">
            <p:for-each>
                <!-- Due to the way the stylesheets are made, it might happen that such a file is empty. Detect this,
                     and only perform a store when there's something to store. -->
                <p:if test="exists(/*)">
                    <p:variable name="storageUriRaw" as="xs:string" select="base-uri(/)"/>
                    <p:variable name="storageUri" select="
                        if (exists($resultFilenameSuffix))
                        then (replace($storageUriRaw, '\.[^\.]+$', '') || $resultFilenameSuffix)
                        else $storageUriRaw
                    "/>
                    <p:store href="{$storageUri}" serialization="$yatcs:standardXmlSerialization"/>
                </p:if>
            </p:for-each>
        </p:if>

        <!-- Check for secondary outputs (from <xsl:result-document> instructions): -->
        <!-- Take care to set the correct serialization *in* the stylesheet! -->
        <p:for-each>
            <p:with-input pipe="secondary@apply-build-stylesheet"/>
            <p:store href="{base-uri(/)}"/>
        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:process-step-validate" name="process-step-validate">
        <!-- 
            Processes a standard validation step (<*:validate-with-*> element). The step itself acts as an identity step.
            
            The step is defined in ../xsdmod/application-data-file.mod.xsd, element group(s) g-standard-validate-with-*-step.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
        <!-- Some magic value constants used in validation: -->

        <p:option static="true" name="validationTypeSchema" as="xs:string" select="'schema'"/>
        <p:option static="true" name="validationTypeSchematron" as="xs:string" select="'schematron'"/>
        <p:option static="true" name="messageLevelInfo" as="xs:string+" select="'info', 'information'"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The <*:validate-with-*> element to process. -->
        </p:input>
        <p:output port="result" sequence="false" content-types="xml" pipe="source@process-step-validate"/>

        <p:option name="defaultValidationName" as="xs:string" required="false" select="'validate'">
            <!-- The optional default build name (this will not be used if there's a /*/@name on the element). -->
        </p:option>

        <p:option name="messageIndentLevel" as="xs:integer" required="false" select="1">
            <!-- The base indent level for the output of messages. Lowest value: 0 (means against the left margin) -->
        </p:option>

        <p:option name="testMode" as="xs:boolean" required="false" select="false()">
            <!-- If $testMode is true, looping over input documents will only do the first one (just to test paths and setups) -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:declare-step type="local:do-schema-validation">
            <!-- Validates the documents on the source port. The result port will emit the XVRL reports for the individual source documents. 
                 The base URI of the output documents will be identical to those of the input documents. 
                 Also adds a document property detectionCount -->

            <p:input port="source" primary="true" sequence="true" content-types="xml"/>
            <p:output port="result" primary="true" sequence="true" content-types="xml"/>

            <p:option name="hrefSchema" as="xs:string" required="true"/>
            <p:option name="messageIndentLevel" as="xs:integer" required="true"/>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

            <p:for-each>
                <p:variable name="hrefFile" as="xs:string" select="base-uri(/)"/>
                <p:variable name="filename" as="xs:string" select="replace($hrefFile, '.*[/\\]([^/\\]+)$', '$1')"/>
                <yatcs:message level="{$messageIndentLevel}" msg="({p:iteration-position()}/{p:iteration-size()}) {$filename}"/>

                <p:validate-with-xml-schema assert-valid="false" name="do-schema-validation">
                    <p:with-input port="schema" href="{$hrefSchema}"/>
                </p:validate-with-xml-schema>

                <!-- Switch over to the generated report: -->
                <p:identity>
                    <p:with-input pipe="report@do-schema-validation"/>
                </p:identity>
                <p:variable name="detectionCount" as="xs:integer" select="count(/*/xvrl:detection[not(string(@severity) = $messageLevelInfo)])"/>
                <yatcs:message enabled="{$detectionCount gt 0}" level="{$messageIndentLevel + 1}" msg="{$detectionCount} validation problem(s) detected"/>
                <p:set-properties properties="map{'base-uri': $hrefFile, 'detectionCount': $detectionCount}"/>
            </p:for-each>

        </p:declare-step>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:declare-step type="local:do-schematron-validation">
            <!-- Validates the documents on the source port. The result port will emit the SVRL reports for the individual source documents. 
                 The base URI of the output documents will be identical to those of the input documents. 
                 Also adds a document property detectionCount -->

            <p:import href="yatc-fast-transforms.mod.xpl"/>

            <p:input port="source" primary="true" sequence="true" content-types="xml"/>
            <p:output port="result" primary="true" sequence="true" content-types="xml"/>

            <p:option name="hrefSchema" as="xs:string" required="true"/>
            <p:option name="fast" as="xs:boolean" required="true"/>
            <p:option name="continueOnSchematronError" as="xs:boolean" required="true"/>
            <p:option name="fixGlobalVariables" as="xs:boolean" required="true"/>
            <p:option name="messageIndentLevel" as="xs:integer" required="true"/>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

            <yatcs:fast-validate-with-schematron cleanSvrl="true" name="do-schematron-validations">
                <p:with-option name="hrefSchema" select="$hrefSchema"/>
                <p:with-option name="enableFast" select="$fast"/>
                <p:with-option name="fixGlobalVariables" select="$fixGlobalVariables"/>
                <p:with-option name="catchErrors" select="$continueOnSchematronError"/>
                <p:with-option name="messageIndentLevel" select="$messageIndentLevel"/>
            </yatcs:fast-validate-with-schematron>

            <p:for-each>
                <p:variable name="hrefFile" as="xs:string" select="base-uri(/)"/>
                <p:variable name="filename" as="xs:string" select="tokenize($hrefFile, '/')[last()]"/>
                <p:variable name="detectionCount" as="xs:integer" select="count(/*/(svrl:failed-assert | svrl:successful-report)[not(string(@role) = $messageLevelInfo)])"/>
                <yatcs:message enabled="{$detectionCount gt 0}" level="{$messageIndentLevel + 1}" msg="{$filename}: {$detectionCount} validation problem(s) detected"/>
                <p:set-properties properties="map{'base-uri': $hrefFile, 'detectionCount': $detectionCount}"/>
            </p:for-each>

        </p:declare-step>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="validationType" as="xs:string" select="substring-after(local-name(/*), 'validate-with-')"/>
        <p:variable name="buildName" as="xs:string" select="string((/*/@name, $defaultValidationName)[1])"/>
        <p:variable name="hrefSchema" as="xs:string" select="string(/*/*:schema/@href)"/>
        <p:variable name="optional" as="xs:boolean" select="xs:boolean((/*/@optional, false())[1])"/>
        <p:variable name="stopOnDetection" as="xs:boolean" select="xs:boolean((/*/@stop-on-detection, false())[1])"/>
        <!-- Schematron specific: -->
        <p:variable name="fast" as="xs:boolean" select="xs:boolean((/*/@fast, true())[1])"/>
        <p:variable name="continueOnSchematronError" as="xs:boolean" select="xs:boolean((/*/@continue-on-schematron-error, false())[1])"/>
        <p:variable name="fixGlobalVariables" as="xs:boolean" select="xs:boolean((/*/@fix-global-variables, false())[1])"/>

        <!-- Identify the schema to be used and check its availability:: -->
        <yatcs:message level="{$messageIndentLevel}" msg="{$validationType} validation &quot;{$buildName}&quot;{if ($optional) then ' (optional)' else ()}"/>
        <yatcs:message level="{$messageIndentLevel + 1}" msg="Schema: &quot;{$hrefSchema}&quot;"/>
        <p:variable name="schemaExists" as="xs:boolean" select="doc-available($hrefSchema)"/>
        <p:choose>

            <p:when test="not($optional) and not($schemaExists)">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Schema not found or not well-formed: &quot;{$hrefSchema}&quot;</p:inline>
                    </p:with-input>
                </p:error>
            </p:when>

            <p:when test="$optional and not($schemaExists)">
                <yatcs:message level="{$messageIndentLevel + 1}" msg="Schema not found or not well-formed: optional validation skipped"/>
            </p:when>

            <p:otherwise>
                <!-- Go and validate! -->

                <!-- Find out whether we have to write a report: -->
                <p:variable name="outputReportElement" as="element()?" select="/*/*:output-report[1]"/>
                <p:variable name="doOutputReport" as="xs:boolean" select="exists($outputReportElement)"/>
                <p:variable name="reportUri" as="xs:string" select="string-join((replace($outputReportElement/@directory, '/$', ''), $outputReportElement/@name), '/')"/>
                <p:variable name="reportPruneValid" as="xs:boolean" select="xs:boolean(($outputReportElement/@prune-valid, true())[1])"/>
                <p:variable name="sanitizeReportFilenames" as="xs:boolean" select="xs:boolean(($outputReportElement/@sanitize-filenames, true())[1])"/>

                <!-- Create the sequence of documents to validate: -->
                <p:choose>
                    <p:when test="exists(/*/*:input-document)">
                        <p:variable name="inputUri" as="xs:string" select="string-join((/*/*:input-document[1]/@directory, /*/*:input-document[1]/@name), '/')"/>
                        <p:if test="not(doc-available($inputUri))">
                            <p:error code="yatcs:error">
                                <p:with-input>
                                    <p:inline content-type="text/plain" xml:space="preserve">Input document for validation not found or not well-formed: &quot;{$inputUri}&quot;</p:inline>
                                </p:with-input>
                            </p:error>
                        </p:if>
                        <p:load href="{$inputUri}" content-type="text/xml"/>
                    </p:when>
                    <p:when test="exists(/*/*:input-documents)">
                        <p:variable name="inputDocumentsElement" as="element()" select="/*/*:input-documents[1]"/>
                        <p:variable name="inputDirectory" as="xs:string" select="string($inputDocumentsElement/@directory)"/>
                        <p:variable name="acceptEmpty" as="xs:boolean" select="xs:boolean(($inputDocumentsElement/@accept-empty, false())[1])"/>
                        <!-- Load the documents: -->
                        <yatcs:message level="{$messageIndentLevel + 1}" msg="Input directory: &quot;{$inputDirectory}&quot;"/>
                        <yatcs:load-documents-from-disk-from-patterns>
                            <p:with-option name="copyPatternsElement" select="$inputDocumentsElement"/>
                            <p:with-option name="hrefSource" select="$inputDirectory"/>
                        </yatcs:load-documents-from-disk-from-patterns>
                        <!-- Check for an empty set: -->
                        <p:variable name="inputDocumentsCount" as="xs:integer" select="count(collection())" collection="true"/>
                        <p:if test="not($acceptEmpty) and ($inputDocumentsCount le 0)">
                            <p:error code="yatcs:error">
                                <p:with-input>
                                    <p:inline content-type="text/plain" xml:space="preserve">No documents selected for validation "{$buildName}"</p:inline>
                                </p:with-input>
                            </p:error>
                        </p:if>
                    </p:when>
                    <p:otherwise>
                        <p:error code="yatcs:error">
                            <p:with-input>
                                <p:inline content-type="text/plain" xml:space="preserve">Invalid or missing input specification for validation &quot;{$buildName}&quot;</p:inline>
                            </p:with-input>
                        </p:error>
                    </p:otherwise>
                </p:choose>

                <!-- In test mode we only do the first document of the sequence: -->
                <yatcs:keep-first-document enabled="{$testMode}" msg-level="{$messageIndentLevel + 1}"/>

                <!-- Do the validations: -->
                <p:choose>
                    <p:when test="$validationType eq $validationTypeSchema">
                        <local:do-schema-validation>
                            <p:with-option name="hrefSchema" select="$hrefSchema"/>
                            <p:with-option name="messageIndentLevel" select="$messageIndentLevel + 1"/>
                        </local:do-schema-validation>
                    </p:when>
                    <p:otherwise>
                        <local:do-schematron-validation>
                            <p:with-option name="hrefSchema" select="$hrefSchema"/>
                            <p:with-option name="fast" select="$fast"/>
                            <p:with-option name="continueOnSchematronError" select="$continueOnSchematronError"/>
                            <p:with-option name="fixGlobalVariables" select="$fixGlobalVariables"/>
                            <p:with-option name="messageIndentLevel" select="$messageIndentLevel + 1"/>
                        </local:do-schematron-validation>
                    </p:otherwise>
                </p:choose>

                <!-- What we get here is a sequence of report documents. Investigate and post-process these: -->
                <p:for-each>
                    <p:variable name="hrefFile" as="xs:string" select="base-uri(/)"/>
                    <p:variable name="detectionCount" as="xs:integer" select="p:document-property(/, 'detectionCount')"/>
                    <!-- Wrap the result in a <validation> element. If valid and pruning-valid was specified, discard the result. -->
                    <p:choose>
                        <p:when test="$reportPruneValid and ($detectionCount eq 0)">
                            <p:identity>
                                <p:with-input>
                                    <validation/>
                                </p:with-input>
                            </p:identity>
                        </p:when>
                        <p:otherwise>
                            <p:wrap match="/*" wrapper="validation"/>
                        </p:otherwise>
                    </p:choose>
                    <p:add-attribute attribute-name="href" attribute-value="{$hrefFile}"/>
                    <p:add-attribute attribute-name="detection-count" attribute-value="{$detectionCount}"/>
                </p:for-each>
                <p:wrap-sequence wrapper="validation-results"/>

                <p:variable name="detectionCountFull" as="xs:integer" select="count(//xvrl:detection[not(string(@severity) = $messageLevelInfo)]) + count(//(svrl:failed-assert | svrl:successful-report)[not(string(@role) = $messageLevelInfo)])"/>
                <yatcs:message enabled="{$detectionCountFull gt 0}" level="{$messageIndentLevel + 1}" msg="{$detectionCountFull} validation problem(s) detected"/>

                <!-- Store results, if requested: -->
                <p:if test="$doOutputReport">
                    <p:add-attribute attribute-name="timestamp" attribute-value="{current-dateTime()}"/>
                    <p:add-attribute attribute-name="validation-type" attribute-value="{$validationType}"/>
                    <p:add-attribute attribute-name="href-schema" attribute-value="{$hrefSchema}"/>
                    <p:add-attribute attribute-name="validation-step-name" attribute-value="{$buildName}"/>
                    <p:add-attribute attribute-name="detection-count" attribute-value="{$detectionCountFull}"/>
                    <yatcs:sanitize-filenames-in-attributes enabled="{$sanitizeReportFilenames}"/>
                    <p:store href="{$reportUri}" serialization="$yatcs:standardXmlSerialization"/>
                    <yatcs:message level="{$messageIndentLevel + 1}" msg="Report written to &quot;{$reportUri}&quot;"/>
                </p:if>

                <!-- See if we have to break further processing: -->
                <p:if test="$stopOnDetection and ($detectionCountFull gt 0)">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Processing stop due to validation problem(s)</p:inline>
                        </p:with-input>
                    </p:error>
                </p:if>

            </p:otherwise>
        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:process-step-copy" name="process-step-copy">
        <!-- 
            Processes a copy step (<*:copy> element). The step itself acts as an identity step.
            
            The step is defined in ../xsdmod/application-data-file.mod.xsd, element group g-standard-copy-step.
        -->

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The <*:copy> element to process. -->
        </p:input>
        <p:output port="result" sequence="false" content-types="xml" pipe="source@process-step-copy"/>

        <p:option name="defaultBuildName" as="xs:string" required="false" select="'copy'">
            <!-- The optional default build name (this will not be used if there's a /*/@name on the element). -->
        </p:option>

        <p:option name="messageIndentLevel" as="xs:integer" required="false" select="1">
            <!-- The base indent level for the output of messages. Lowest value: 0 (means against the left margin) -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="buildName" as="xs:string" select="string((/*/@name, $defaultBuildName)[1])"/>
        <p:variable name="sourceElement" as="element()" select="/*/*:source"/>
        <p:variable name="hrefSource" as="xs:string" select="string($sourceElement/@directory)"/>
        <p:variable name="hrefTarget" as="xs:string" select="string(/*/*:target/@directory)"/>
        <p:variable name="recurse" as="xs:boolean" select="xs:boolean((/*/@recurse, false())[1])"/>

        <!-- Identify the schema to be used and check its availability:: -->
        <yatcs:message level="{$messageIndentLevel}" msg="Copy &quot;{$buildName}&quot;"/>
        <yatcs:message level="{$messageIndentLevel + 1}" msg="Source: &quot;{$hrefSource}&quot;"/>
        <yatcs:message level="{$messageIndentLevel + 1}" msg="Target: &quot;{$hrefTarget}&quot;"/>

        <yatcs:copy-dir-from-patterns>
            <p:with-option name="copyPatternsElement" select="$sourceElement"/>
            <p:with-option name="hrefSource" select="$hrefSource"/>
            <p:with-option name="hrefTarget" select="$hrefTarget"/>
            <p:with-option name="recurse" select="$recurse"/>
            <p:with-option name="reportCount" select="true()"/>
            <p:with-option name="clearTarget" select="false()"/>
        </yatcs:copy-dir-from-patterns>

        <yatcs:report-count>
            <p:with-option name="prompt" select="'Files copied:'"/>
            <p:with-option name="indentLevel" select="$messageIndentLevel + 1"/>
        </yatcs:report-count>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:process-standard-steps" name="process-standard-steps">
        <!-- 
            Processes all the standard steps (and messages in between). Ignores any *:setup elements. 
            
            The step is defined in ../xsdmod/application-data-file.mod.xsd, element group g-standard-steps.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The parent element of the steps/messages. -->
        </p:input>
        <p:output port="result" sequence="false" content-types="xml" pipe="source@process-standard-steps"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:option name="application" as="xs:string" required="true">
            <!-- Name of the application we're doing this for. -->
        </p:option>

        <p:option name="version" as="xs:string" required="true">
            <!-- The version of the application we're doing this for. -->
        </p:option>

        <p:option name="storageBaseDirectory" as="xs:string" required="true">
            <!-- The base storage location for writing result to. -->
        </p:option>

        <p:option name="sourceProjectName" as="xs:string?" required="false" select="()">
            <!-- The optional name of the project this application/version is using. -->
        </p:option>

        <p:option name="doMessages" as="xs:boolean" required="false" select="true()">
            <!-- Whether to output any messages (<message> elements). Sometimes these are handled on a higher level. When this
                 option is false, the <message> elements will be ignored. -->
        </p:option>

        <p:option name="recognizedStepElementNames" as="xs:string+" required="false" select="($yatcs:stepBuild, $yatcs:stepValidateWithSchema, $yatcs:stepValidateWithSchematron, $yatcs:stepCopy)">
            <!-- This option allows you to limit the commands this step can process. It lists the names of all step elements it can process. -->
        </p:option>

        <p:option name="messageIndentLevel" as="xs:integer" required="false" select="1">
            <!-- The base indent level for the output of messages. Lowest value: 0 (means against the left margin) -->
        </p:option>

        <p:option name="testMode" as="xs:boolean" required="false" select="false()">
            <!-- If $testMode is true, looping over input documents will only do the first one (just to test paths and setups) -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:for-each>
            <p:with-input select="/*/*"/>
            <p:variable name="positionPrompt" as="xs:string" select="p:iteration-position() || '/' || p:iteration-size()"/>
            <p:variable name="stepName" as="xs:string" select="local-name(/*)"/>

            <p:choose>

                <!-- <setup> and <empty-root-directory> element, ignore. Should have been handled somewhere else (before this). -->
                <p:when test="exists(/*/self::*:setup) or exists(/*/self::*:empty-root-directory)">
                    <p:identity/>
                </p:when>

                <!-- Message: -->
                <p:when test="exists(/*/self::*:message)">
                    <yatcs:message enabled="{$doMessages}" level="{$messageIndentLevel}" msg="{string(.)}"/>
                </p:when>

                <!-- Do we recognize this particular step? -->
                <p:when test="not($stepName = $recognizedStepElementNames)">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Unrecognized step: "{$stepName}" (recognized steps are: {string-join($recognizedStepElementNames, ', ')})</p:inline>
                        </p:with-input>
                    </p:error>
                </p:when>

                <!-- Build (XSLT transformation) step: -->
                <p:when test="$stepName eq $yatcs:stepBuild">
                    <yatcs:process-step-build>
                        <p:with-option name="application" select="$application"/>
                        <p:with-option name="version" select="$version"/>
                        <p:with-option name="storageBaseDirectory" select="$storageBaseDirectory"/>
                        <p:with-option name="sourceProjectName" select="$sourceProjectName"/>
                        <p:with-option name="defaultBuildName" select="'Build ' || $positionPrompt"/>
                        <p:with-option name="messageIndentLevel" select="$messageIndentLevel"/>
                        <p:with-option name="testMode" select="$testMode"/>
                    </yatcs:process-step-build>
                </p:when>

                <p:when test="$stepName = ($yatcs:stepValidateWithSchema, $yatcs:stepValidateWithSchematron)">
                    <yatcs:process-step-validate>
                        <p:with-option name="defaultValidationName" select="'Validation ' || $positionPrompt"/>
                        <p:with-option name="messageIndentLevel" select="$messageIndentLevel"/>
                        <p:with-option name="testMode" select="$testMode"/>
                    </yatcs:process-step-validate>
                </p:when>

                <p:when test="$stepName eq $yatcs:stepCopy">
                    <yatcs:process-step-copy>
                        <p:with-option name="defaultBuildName" select="'Copy ' || $positionPrompt"/>
                        <p:with-option name="messageIndentLevel" select="$messageIndentLevel"/>
                    </yatcs:process-step-copy>
                </p:when>

                <!-- Completely unrecognized, if we get here, this points to an internal error. -->
                <p:otherwise>
                    <p:error code="yatcs:internal-error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Internal error handling standard steps</p:inline>
                        </p:with-input>
                    </p:error>
                </p:otherwise>

            </p:choose>
        </p:for-each>

    </p:declare-step>

</p:library>
