<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.uqk_swy_2wb" version="3.0" exclude-inline-prefixes="#all" type="yatci:get-production-ada-instances">
    <!-- ================================================================== -->
    <!-- 
       This pipeline will retrieve the production ADA documents from ART-DECOR for one or several 
       application/version combinations. 
       
       The result port will contain the sequence of the retrieved ADA documents (and copied schemas, if any).
       The base-uri of each document is set to the location where it is stored on disk.
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

    <p:import href="../xplmod/component-parameter-names.mod.xpl"/>
    <p:import href="../xplmod/get-production-ada-instances.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-general.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-parameters.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-application-data.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- STATIC OPTIONS: -->

    <p:option static="true" name="get-production-ada-instances-debug" as="xs:boolean" select="false()">
        <!-- Set this to true to get some additional output/behavior for debugging purposes -->
    </p:option>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:output port="result" primary="true" sequence="true" content-types="xml" serialization="$yatcs:standardXmlSerialization">
        <!-- The retrieved ADA production documents (and copied schemas) as a sequence. The base-uri of each document
             is set to the location where it is stored on disk. -->
    </p:output>

    <!-- ======================================================================= -->
    <!-- OPTIONS: -->

    <p:option name="applicationAdaRetrievalData" as="document-node()?" required="false" select="()">
        <!-- There are situations that we already might have retrieved the relevant (and pruned!) application ADA retrieval data. 
             If so, pass this as a document using this option.
        -->
    </p:option>

    <p:option name="parameters" as="map(xs:string, xs:string*)?" required="false" select="()">
        <!-- Optional set of already retrieved YATC parameters in effect. -->
    </p:option>

    <p:option name="application" as="xs:string?" required="false" select="()">
        <!-- The application to retrieve the data for (for instance lab). 
             If you want all applications, leave this option empty or use $yatcs:allIndicator  
        -->
    </p:option>

    <p:option name="version" as="xs:string?" required="false" select="()">
        <!-- The version (for the application) to retrieve the data for (for instance 3.0.0). 
             If you want all versions, leave this option empty or use $yatcs:allIndicator  -->
    </p:option>

    <p:option name="doReportUrls" as="xs:boolean" required="false" select="false()">
        <!-- Whether or not to report the used URLs (as messages). -->
    </p:option>

    <p:option name="discardOutput" as="xs:boolean" required="false" select="false()">
        <!-- When true, all documents that would normally be the output of this step are discarded and the 
             actual result will be empty. Use this if you're interested in the documents written to disk only 
             (like in a command-wrapper step). -->
    </p:option>

    <p:option name="noRetrieval" as="xs:boolean" required="false" select="false()">
        <!-- When true, no retrieval from ART-DECOR is done. This is meant for speedier developing of adarefs2ada 
             (because retrieval can take a lot of time in some cases…) -->
    </p:option>
    
    <p:option name="noAdarefs2ada" as="xs:boolean" required="false" select="false()">
        <!-- When true, the adaresf2ada processing is skipped (if any). -->
    </p:option>
    
    <!-- ======================================================================= -->

    <p:declare-step type="local:get-production-data-for-application" name="get-production-data-for-application">
        <!-- Gets the ADA production documents for a single application/version combination, for instance lab/3.0.0.
             Input is the <yatci:application> element from the ADA retrieval data file for the application/version to retrieve.
             Output is a sequence of retrieved production ADA documents (with their base-uri set correctly).
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The <yatci:application> element with the information about the data to retrieve. -->
        </p:input>

        <p:output port="result" primary="true" sequence="true" content-types="xml">
            <!-- Sequence of retrieved production ADA documents from ART-DECOR. -->
        </p:output>

        <p:option name="parameters" as="map(xs:string, xs:string*)?" required="true"/>
        <p:option name="doReportUrls" as="xs:boolean" required="true"/>
        <p:option name="discardOutput" as="xs:boolean" required="true"/>
        <p:option name="noRetrieval" as="xs:boolean" required="true"/>
        <p:option name="noAdarefs2ada" as="xs:boolean" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Initialization/preparations: -->
        <p:variable name="application" as="xs:string" select="xs:string(/*/@name)"/>
        <p:variable name="version" as="xs:string" select="xs:string(/*/@version)"/>
        <p:variable name="adaApplicationName" as="xs:string" select="xs:string(/*/@ada-application-name)"/>
        <p:variable name="storageBaseDirectory" as="xs:string" select="xs:string(/*/@_target-dir)"/>
        <p:variable name="hasAdarefs2ada" as="xs:boolean" select="exists(/*/yatci:adarefs2ada)"/>
        <p:variable name="hasAdarefs2adaBuilds" as="xs:boolean" select="exists(/*/yatci:adarefs2ada/yatci:build)"/>

        <yatcs:message-empty-line/>
        <yatcs:message level="0" msg="Getting production ADA instances for {$application}/{$version} (ADA application: &quot;{$adaApplicationName}&quot;)"/>
        <yatcs:message level="1" msg="Application storage directory: &quot;{$storageBaseDirectory}&quot;"/>

        <yatcs:process-application-messages/>

        <!-- Get the index and actual ADA data: -->
        <p:choose name="get-ada-data">
            <p:when test="not($noRetrieval)">
                <p:output port="ada-documents" sequence="true" content-types="xml" pipe="ada-documents@retrieve-get-ada-data"/>
                <local:get-application-index name="get-application-index">
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="doReportUrls" select="$doReportUrls"/>
                </local:get-application-index>
                <local:get-ada-data name="retrieve-get-ada-data">
                    <p:with-input port="index" pipe="index@get-application-index"/>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="doReportUrls" select="$doReportUrls"/>
                </local:get-ada-data>
            </p:when>
            <p:otherwise>
                <p:output port="ada-documents" sequence="true" content-types="xml" pipe="ada-documents@no-retrieve-get-ada-data"/>
                <yatcs:message level="1" msg="WARNING: No retrieval from ART-DECOR - loading documents from disk"/>
                <local:get-ada-data-no-retrieval name="no-retrieve-get-ada-data"/>
            </p:otherwise>
        </p:choose>

        <yatcs:report-count prompt="Total documents retrieved for {$application}/{$version}:" indentLevel="1">
            <p:with-input pipe="ada-documents@get-ada-data"/>
        </yatcs:report-count>

        <!-- Perform the adarefs2ada processing (prepare and build) -->
        <p:if test="$hasAdarefs2ada and $noAdarefs2ada">
            <yatcs:message level="1" msg="WARNING: adarefs2ada processing skipped"/>   
        </p:if>
        <p:if test="$hasAdarefs2ada and not($noAdarefs2ada)" name="process-adarefs2ada">
            <p:output port="ada-documents" sequence="true" content-types="xml" pipe="ada-documents@setup-adarefs2ada ada-documents@build-adarefs2ada"/>
            <local:setup-adarefs2ada name="setup-adarefs2ada">
                <p:with-input pipe="source@get-production-data-for-application"/>
                <p:with-input port="ada-documents-in" pipe="ada-documents@get-ada-data"/>
                <p:with-option name="discardOutput" select="$discardOutput and not($hasAdarefs2adaBuilds)"/>
            </local:setup-adarefs2ada>
            <local:build-adarefs2ada name="build-adarefs2ada">
                <p:with-input port="ada-documents-in" pipe="ada-documents@setup-adarefs2ada"/>
                <p:with-option name="discardOutput" select="$discardOutput"/>
            </local:build-adarefs2ada>
        </p:if>

        <!-- Gather all the produced documents as output (if requested): -->
        <yatcs:empty-results enabled="{$discardOutput}">
            <p:with-input pipe="ada-documents@get-ada-data ada-documents@process-adarefs2ada"/>
        </yatcs:empty-results>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="local:get-application-index" name="get-application-index">
        <!-- Retrieves the index document for an application from the ART-DECOR server.
             The step itself acts as an identity step.
             
             Returns the retrieved index document on its index port.
             
             Based on parameter storeAdaIndexFiles it stores the index on disk. This is not necessary but can be 
             rather handy for debug/development purposes.
        -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The <yatci:application> element with the information about the data to retrieve. -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@get-application-index">
            <!-- The <yatci:application> element, unchanged. -->
        </p:output>

        <p:output port="index" primary="false" sequence="false" content-types="xml" pipe="@retrieved-index">
            <!-- The retrieved index document. -->
        </p:output>

        <p:option name="parameters" as="map(xs:string, xs:string*)?" required="true"/>
        <p:option name="doReportUrls" as="xs:boolean" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Initialization/preparations: -->
        <p:variable name="application" as="xs:string" select="xs:string(/*/@name)"/>
        <p:variable name="adaApplicationName" as="xs:string" select="xs:string(/*/@ada-application-name)"/>
        <p:variable name="hrefIndex" as="xs:string" select="xs:string(/*/@_index-filename)"/>

        <!-- The index document must be retrieved from the ART-DECOR server, using a REST call. Create the full URI for this and get it: -->
        <p:variable name="optionsRestCall" as="xs:string+" select="(
            'app=' || encode-for-uri($adaApplicationName),
            'raw=false',
            'summary=true'
        )"/>
        <p:variable name="urlRestCallFull" as="xs:string" select="$parameters($yatci:parnameGetDataRestCallUri) || '?' || string-join($optionsRestCall, '&amp;')"/>

        <p:try name="retrieved-index">
            <yatcs:message level="1" msg="Retrieving index for ADA application &quot;{$adaApplicationName}&quot; {if ($doReportUrls) then (' (URL: &quot;' || $urlRestCallFull || '&quot;)') else () }"/>
            <p:http-request href="{$urlRestCallFull}">
                <p:with-input>
                    <p:empty/>
                </p:with-input>
            </p:http-request>
            <p:catch>
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Error(s) retrieving index information for ADA application &quot;{$adaApplicationName}&quot; from "{$urlRestCallFull}": {string-join(/*/*, '; ')}</p:inline>
                    </p:with-input>
                </p:error>
            </p:catch>
        </p:try>

        <!-- Check whether we retrieved anything useful: -->
        <p:if test="empty(//entry)">
            <p:error code="yatcs:error">
                <p:with-input>
                    <p:inline content-type="text/plain" xml:space="preserve">Index information for application &quot;{$application}&quot; is empty (no entry elements)</p:inline>
                </p:with-input>
            </p:error>
        </p:if>

        <!-- Store it (if requested): -->
        <p:if test="xs:boolean($parameters($yatci:parnameStoreAdaIndexFiles))">
            <p:store href="{$hrefIndex}" serialization="$yatcs:standardXmlSerialization"/>
        </p:if>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="local:get-ada-data" name="get-ada-data">
        <!-- Retrieves ADA data from ART-DECOR, using the information from the index file combined with the information
             in the ADA retrieval data.
             
             The step itself acts as an identity step.
             
             Output on the ada-documents port is a sequence of retrieved production ADA documents 
             (with their base-uri set to the location where they're stored on disk).
        -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The <yatci:application> element with the information about the data to retrieve. -->
        </p:input>

        <p:input port="index" primary="false" sequence="false" content-types="xml">
            <!-- The index document, as retrieved by the local:get-application-index step. -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@get-ada-data">
            <!-- The <yatci:application> element, unchanged. -->
        </p:output>

        <p:output port="ada-documents" primary="false" sequence="true" content-types="xml" pipe="@resulting-ada-documents">
            <!-- The retrieved documents (with their base-uri set to the location where they're stored on disk). -->
        </p:output>

        <p:option name="parameters" as="map(*)" required="true"/>
        <p:option name="doReportUrls" as="xs:boolean" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Initialization/preparations: -->
        <p:variable name="application" as="xs:string" select="xs:string(/*/@name)"/>
        <p:variable name="version" as="xs:string" select="xs:string(/*/@version)"/>
        <p:variable name="adaApplicationName" as="xs:string" select="xs:string(/*/@ada-application-name)"/>
        <p:variable name="dataStorageDirectory" as="xs:string" select="xs:string(/*/@_data-target-dir)"/>
        <p:variable name="hrefPostprocessingStylesheet" as="xs:string" select="string(/*/yatci:postprocessing-stylesheet/@href)"/>
        <p:variable name="applyPostprocessingStylesheet" as="xs:boolean" select="normalize-space($hrefPostprocessingStylesheet) ne ''"/>

        <!-- Perform availability check on the postprocessing stylesheet (if any): -->
        <p:if test="$applyPostprocessingStylesheet">
            <p:if test="not(doc-available($hrefPostprocessingStylesheet))">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Postprocessing stylesheet for {$application}/{$version} not found: &quot;{$hrefPostprocessingStylesheet}&quot;</p:inline>
                    </p:with-input>
                </p:error>
            </p:if>
        </p:if>

        <!-- Clear/empty the storage directory for the retrieved data: -->
        <yatcs:create-clear-directory hrefDir="{$dataStorageDirectory}"/>

        <!-- Loop over all the <yatci:retrieval> elements for the application: -->
        <p:for-each name="resulting-ada-documents">
            <p:with-input pipe="source@get-ada-data" select="/*/yatci:retrieval"/>

            <p:variable name="transaction" as="xs:string" select="normalize-space(/*/@transaction)"/>
            <p:variable name="contains" as="xs:string" select="normalize-space(/*/@contains)"/>
            <p:variable name="prompt" as="xs:string" select="$application || '/' || $version || '/' || $transaction || (if ($contains eq '') then () else ('[' || $contains || ']'))"/>
            <yatcs:message level="1" msg="Retrieving ADA data for {$prompt}"/>
            <p:for-each>
                <p:with-input pipe="index@get-ada-data" select="(/Bundle/entry/resource/*)[local-name() eq $transaction][($contains eq '') or contains(@id, $contains)]"/>

                <p:variable name="id" as="xs:string" select="/*/@id"/>

                <!-- Create the full URI for retrieving the data from the ART-DECOR server and get it: -->
                <p:variable name="optionsRestCall" as="xs:string+" select="(
                    'app=' || encode-for-uri($adaApplicationName),
                    'ada=true',
                    'id=' || encode-for-uri($id)
                    )"/>
                <p:variable name="urlRestCallFull" as="xs:string" select="$parameters($yatci:parnameGetDataRestCallUri) || '?' || string-join($optionsRestCall, '&amp;')"/>

                <p:if test="$doReportUrls">
                    <yatcs:message level="1" msg="URL: &quot;{$urlRestCallFull}&quot;"/>
                </p:if>

                <p:try>
                    <p:http-request href="{$urlRestCallFull}">
                        <p:with-input>
                            <p:empty/>
                        </p:with-input>
                    </p:http-request>
                    <p:catch>
                        <p:error code="yatcs:error">
                            <p:with-input>
                                <p:inline content-type="text/plain" xml:space="preserve">Error(s) retrieving ADA data for {$prompt} from "{$urlRestCallFull}": {string-join(/*/*, '; ')}</p:inline>
                            </p:with-input>
                        </p:error>
                    </p:catch>
                </p:try>

                <!-- If there is a postprocessing stylesheet defined, apply it: -->
                <p:if test="$applyPostprocessingStylesheet">
                    <p:xslt>
                        <p:with-input port="stylesheet" href="{$hrefPostprocessingStylesheet}"/>
                    </p:xslt>
                </p:if>

                <!-- Set the base-uri for the document to the full path we're planning to store it in (when storing is turned on). 
                 This allows us, in cases where we don't use the stored documents (but the documents directly from the output port), 
                 to identify it. -->
                <p:variable name="filename" as="xs:string" select="$id || '.xml'"/>
                <p:variable name="hrefDataFile" select="string-join(($dataStorageDirectory, $filename), '/')"/>
                <p:set-properties properties="map{'base-uri': $hrefDataFile}"/>

                <!-- Store the file: -->
                <p:store href="{$hrefDataFile}" serialization="$yatcs:standardXmlSerialization"/>

            </p:for-each>
            <yatcs:report-count prompt="Documents retrieved:" indentLevel="2"/>

        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="local:get-ada-data-no-retrieval" name="get-ada-data-no-retrieval">
        <!-- Retrieves ADA data from an existing retrieval directory. Used in a no retrieval situation.
             For interface description, see local:get-ada-data.
        -->

        <p:input port="source" primary="true" sequence="false" content-types="xml"/>
        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@get-ada-data-no-retrieval"/>
        <p:output port="ada-documents" primary="false" sequence="true" content-types="xml" pipe="@resulting-ada-documents"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="dataDirectory" as="xs:string" select="xs:string(/*/@_data-target-dir)"/>

        <yatcs:load-documents-from-disk name="resulting-ada-documents">
            <p:with-input port="source">
                <p:empty/>
            </p:with-input>
            <p:with-option name="hrefSource" select="$dataDirectory"/>
        </yatcs:load-documents-from-disk>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="local:setup-adarefs2ada" name="setup-adarefs2ada">
        <!-- This step performs the setup part for the adarefs2ada processing by copying all the relevant ADA documents 
             and project schemas to a usecase subdirectory (for each usecase present).
             
             The step itself acts as an identity step.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The application document (document with <yatci:application> as root. -->
        </p:input>

        <p:input port="ada-documents-in" primary="false" sequence="true" content-types="xml">
            <!-- The sequence of retrieved ADA documents to use. -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@setup-adarefs2ada">
            <!-- The source <yatci:application> document, unchanged -->
        </p:output>

        <p:output port="ada-documents" primary="false" sequence="true" content-types="xml" pipe="@setup-adarefs2ada-results">
            <!-- The documents processed by the step (with their base-uri set to the location where they're stored on disk). -->
        </p:output>

        <p:option name="discardOutput" as="xs:boolean" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="application" as="xs:string" select="xs:string(/*/@name)"/>
        <p:variable name="version" as="xs:string" select="xs:string(/*/@version)"/>

        <!-- Process each usecase: -->
        <p:for-each>
            <p:with-input select="/*/yatci:adarefs2ada/yatci:setup"/>
            <yatcs:process-setup-element reportCount="true" loadResults="{not($discardOutput)}">
                <p:with-input port="documents" pipe="ada-documents-in@setup-adarefs2ada"/>
            </yatcs:process-setup-element>
        </p:for-each>

        <yatcs:report-count prompt="Total documents copied for setup {$application}/{$version}:" indentLevel="1"/>
        <yatcs:empty-results enabled="{$discardOutput}" name="setup-adarefs2ada-results"/>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="local:build-adarefs2ada" name="build-adarefs2ada">
        <!-- This step builds the adarefs2ada documents, using the yatci:adarefs2ada/(yatci:build | yatci:build-copy) 
             elements for the application. 
        
             The step itself acts as an identity step.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:import href="../../../YATC-shared/xplmod/yatc-fast-transforms.mod.xpl"/>

        <p:input port="source" primary="true" sequence="true" content-types="xml">
            <!-- The application document (document with <yatci:application> as root). -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@build-adarefs2ada">
            <!-- The source <yatci:application> document, unchanged -->
        </p:output>

        <p:input port="ada-documents-in" primary="false" sequence="true" content-types="xml">
            <!-- Optional sequence of already loaded/produced/copied ADA documents. -->
            <p:empty/>
        </p:input>

        <p:output port="ada-documents" primary="false" sequence="true" content-types="xml" pipe="@end-result">
            <!-- The built documents (with their base-uri set to the location where they're stored on disk). -->
        </p:output>

        <p:option name="discardOutput" as="xs:boolean" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="application" as="xs:string" select="xs:string(/*/@name)"/>
        <p:variable name="version" as="xs:string" select="xs:string(/*/@version)"/>
        <p:variable name="storageBaseDirectory" as="xs:string" select="xs:string(/*/yatci:adarefs2ada[1]/@_target-dir)"/>

        <p:for-each name="built-documents">
            <!-- Remark: at this moment we support yatci:build and yatci:build-copy elements. -->
            <p:with-input select="/*/yatci:adarefs2ada/(yatci:* except (yatci:setup, yatci:message))"/>

            <!-- All build elements share this information: -->
            <p:variable name="defaultBuildName" as="xs:string" select="local-name(/*) || ' ' || p:iteration-position() || '/' || p:iteration-size()"/>
            <p:variable name="buildName" as="xs:string" select="string((/*/@name, $defaultBuildName)[1])"/>
            <p:variable name="outputDirectory" as="xs:string" select="string(/*/yatci:output[1]/@directory)"/>
            <p:variable name="inputDocumentsElement" as="element(yatci:input-documents)?" select="/*/yatci:input-documents[1]"/>
            <p:variable name="inputDirectory" as="xs:string" select="string($inputDocumentsElement/@directory)"/>
            <p:variable name="fast" as="xs:boolean" select="xs:boolean((/*/@fast, false())[1])"/>

            <yatcs:message level="1" msg="Adarefs2ada {local-name(/*)} &quot;{$buildName}&quot; for {$application}/{$version}{if ($fast) then ' (fast mode)' else ()}"/>

            <!-- Perform availability check on the build stylesheet: -->
            <p:variable name="hrefBuildStylesheet" as="xs:string?" select="xs:string(/*/yatci:stylesheet/@href)"/>
            <p:if test="exists($hrefBuildStylesheet)">
                <p:if test="not(doc-available($hrefBuildStylesheet))">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Build stylesheet for not found: &quot;{$hrefBuildStylesheet}&quot;</p:inline>
                        </p:with-input>
                    </p:error>
                </p:if>
                <yatcs:message level="2" msg="Stylesheet: &quot;{$hrefBuildStylesheet}&quot;"/>
            </p:if>

            <!-- Create a map we're going to use when handling the stylesheet's parameters: -->
            <p:variable name="stylesheetParametersBaseMap" as="map(*)" select="map{
                'application': $application, 
                'version': $version, 
                'buildName': $buildName,
                'baseDirectory': $storageBaseDirectory
            }"/>

            <!-- Handle the various build commands: -->
            <p:choose>

                <!-- yatci:build: -->
                <p:when test="exists(/*/self::yatci:build)">
                    <yatcs:message level="2" msg="To: &quot;{$outputDirectory}&quot;"/>

                    <!-- Create the basic map with the stylesheet parameters. All these parameters are string values. -->
                    <p:xslt>
                        <p:with-input pipe="current@built-documents"/>
                        <p:with-input port="stylesheet" href="xsl-get-production-ada-instances/get-adarefs2ada-build-stylesheet-parameters.xsl"/>
                        <p:with-option name="parameters" select="$stylesheetParametersBaseMap"/>
                    </p:xslt>
                    <p:variable name="buildStylesheetParameters" as="map(xs:string, xs:string)" select="."/>

                    <!-- Load the specified documents (or a dummy document on no input): -->
                    <p:variable name="inputDocumentsSpecified" as="xs:boolean" select="exists($inputDocumentsElement)"/>
                    <p:choose>
                        <p:when test="$inputDocumentsSpecified">
                            <yatcs:message level="2" msg="Input: &quot;{$inputDirectory}&quot;"/>
                            <yatcs:load-documents-from-disk-from-patterns>
                                <p:with-input pipe="ada-documents-in@build-adarefs2ada"/>
                                <p:with-option name="copyPatternsElement" select="$inputDocumentsElement"/>
                                <p:with-option name="hrefSource" select="$inputDirectory"/>
                            </yatcs:load-documents-from-disk-from-patterns>
                        </p:when>
                        <p:otherwise>
                            <!-- No input, just construct a dummy document: -->
                            <yatcs:message level="2" msg="No input"/>
                            <p:identity>
                                <p:with-input>
                                    <dummy/>
                                </p:with-input>
                            </p:identity>
                        </p:otherwise>
                    </p:choose>

                    <!-- Check whether we loaded any documents: -->
                    <p:variable name="inputDocumentsCount" as="xs:integer" select="count(collection())" collection="true"/>
                    <p:if test="$inputDocumentsCount le 0">
                        <p:error code="yatcs:error">
                            <p:with-input>
                                <p:inline content-type="text/plain" xml:space="preserve">No documents selected for build "{$buildName}"</p:inline>
                            </p:with-input>
                        </p:error>
                    </p:if>
                    <p:if test="$inputDocumentsSpecified">
                        <yatcs:message level="2" msg="Processing {$inputDocumentsCount} documents"/>
                    </p:if>

                    <!-- Apply the stylesheet on the loaded documents: -->
                   <!-- <p:for-each>-->
                        <yatcs:mass-xslt>
                            <p:with-option name="hrefStylesheet" select="$hrefBuildStylesheet"/>
                            <p:with-option name="hrefTargetDir" select="()"/>
                            <p:with-option name="parameters" select="$buildStylesheetParameters"/>
                            <p:with-option name="enableFast" select="$fast"/>
                            <p:with-option name="messageIndentLevel" select="3"/>
                        </yatcs:mass-xslt>
                        <!-- The actual output of this stylesheet is uninteresting... -->
                        <!-- Build stylesheets output their results using <xsl:result-documents>, which appear on the secondary
                             output port of the <p:xslt>. So we still have to store them... -->
                        <p:for-each>
                            <p:with-input pipe="secondary"/>
                            <p:store href="{base-uri(/)}" serialization="$yatcs:standardXmlSerialization"/>
                        </p:for-each>
                    <!--</p:for-each>-->

                    <!-- Report about what we've done: -->
                    <yatcs:report-count prompt="Documents built:" indentLevel="2"/>
                </p:when>

                <!-- yatci:build-overwrite: -->
                <p:when test="exists(/*/self::yatci:build-overwrite)">

                    <!-- Create the basic map with the stylesheet parameters. All these parameters are string values. -->
                    <p:xslt>
                        <p:with-input pipe="current@built-documents"/>
                        <p:with-input port="stylesheet" href="xsl-get-production-ada-instances/get-adarefs2ada-build-stylesheet-parameters.xsl"/>
                        <p:with-option name="parameters" select="$stylesheetParametersBaseMap"/>
                    </p:xslt>
                    <p:variable name="buildStylesheetParameters" as="map(xs:string, xs:string)" select="."/>

                    <!-- Load the specified documents: -->
                    <yatcs:message level="2" msg="Input: &quot;{$inputDirectory}&quot;"/>
                    <yatcs:load-documents-from-disk-from-patterns>
                        <p:with-input pipe="ada-documents-in@build-adarefs2ada"/>
                        <p:with-option name="copyPatternsElement" select="$inputDocumentsElement"/>
                        <p:with-option name="hrefSource" select="$inputDirectory"/>
                    </yatcs:load-documents-from-disk-from-patterns>

                    <!-- Check whether we loaded any documents: -->
                    <p:variable name="inputDocumentsCount" as="xs:integer" select="count(collection())" collection="true"/>
                    <p:if test="$inputDocumentsCount le 0">
                        <p:error code="yatcs:error">
                            <p:with-input>
                                <p:inline content-type="text/plain" xml:space="preserve">No documents selected for build "{$buildName}"</p:inline>
                            </p:with-input>
                        </p:error>
                    </p:if>
                    <yatcs:message level="2" msg="Processing {$inputDocumentsCount} documents"/>

                    <!-- Apply the stylesheet on the loaded documents and write the result back to where it came from: -->
                    <yatcs:mass-xslt name="stylesheet-transformation">
                        <p:with-option name="hrefStylesheet" select="$hrefBuildStylesheet"/>
                        <p:with-option name="hrefTargetDir" select="()"/>
                        <p:with-option name="parameters" select="$buildStylesheetParameters"/>
                        <p:with-option name="enableFast" select="$fast"/>
                        <p:with-option name="messageIndentLevel" select="3"/>
                    </yatcs:mass-xslt>
                    
                    <!-- Write the results from the primary port (= the direct stylesheet results): -->
                    <p:for-each>
                        <p:with-input pipe="result@stylesheet-transformation"/>
                        <p:variable name="documentUri" as="xs:string" select="base-uri(/)"/>
                        <p:store href="{$documentUri}" serialization="$yatcs:standardXmlSerialization" />
                    </p:for-each>
                    <!-- Report about what we've done: -->
                    <yatcs:report-count prompt="Documents overwritten:" indentLevel="2"/>
                    
                    <!-- There might be documents on the secondary port (<xsl:result-document> results) also. 
                         Write these (if any) -->
                    <p:for-each name="secondary-result-documents">
                        <p:with-input pipe="secondary@stylesheet-transformation"/>
                        <p:variable name="documentUri" as="xs:string" select="base-uri(/)"/>
                        <p:store href="{$documentUri}" serialization="$yatcs:standardXmlSerialization"/>
                    </p:for-each>
                   
                </p:when>

                <!-- yatci:build-copy: -->
                <p:when test="exists(/*/self::yatci:build-copy)">

                    <yatcs:message level="2" msg="From: &quot;{$inputDirectory}&quot;"/>
                    <yatcs:message level="2" msg="To: &quot;{$outputDirectory}&quot;"/>

                    <yatcs:copy-dir-from-patterns reportCount="true" clearTarget="false">
                        <p:with-option name="hrefSource" select="$inputDirectory"/>
                        <p:with-option name="hrefTarget" select="$outputDirectory"/>
                        <p:with-option name="copyPatternsElement" select="$inputDocumentsElement"/>
                        <p:with-option name="loadResults" select="not($discardOutput)"/>
                    </yatcs:copy-dir-from-patterns>

                    <!-- Report about what we've done: -->
                    <yatcs:report-count prompt="Documents copied:" indentLevel="2"/>
                </p:when>

                <!-- Something else, unrecognized... -->
                <p:otherwise>
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Unrecognized adarefs2ada build element: {local-name(/*)}</p:inline>
                        </p:with-input>
                    </p:error>
                </p:otherwise>

            </p:choose>

        </p:for-each>

        <!-- Report what we've done and make sure there's no output if we don't want any: -->
        <yatcs:report-count prompt="Total documents built for {$application}/{$version}:" indentLevel="1"/>
        <yatcs:empty-results enabled="{$discardOutput}" name="end-result"/>

    </p:declare-step>

    <!-- ================================================================== -->
    <!-- MAIN: -->

    <!-- Get the parameters: -->
    <yatcs:get-combined-parameters-map>
        <p:with-option name="parameters" select="$parameters"/>
        <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/>
    </yatcs:get-combined-parameters-map>
    <p:variable name="parameters" as="map(xs:string, xs:string*)" select="."/>

    <!-- Get the application ADA retrieval data: -->
    <yatci:get-application-ada-retrieval-data>
        <p:with-option name="parameters" select="$parameters"/>
        <p:with-option name="applicationAdaRetrievalData" select="$applicationAdaRetrievalData"/>
        <p:with-option name="application" select="$application"/>
        <p:with-option name="version" select="$version"/>
    </yatci:get-application-ada-retrieval-data>

    <!-- Report if we're in debug mode: -->
    <p:identity message="*** DEBUG ON FOR get-production-ada-instances" use-when="$get-production-ada-instances-debug"/>

    <!-- Now loop over all the applications that are in the pruned ADA Retrieval data: -->
    <p:for-each>
        <p:with-input select="/*/yatci:application"/>

        <!-- Get the production data (when debugging we don't add the try/catch): -->
        <p:try use-when="not($get-production-ada-instances-debug)">
            <local:get-production-data-for-application>
                <p:with-option name="parameters" select="$parameters"/>
                <p:with-option name="doReportUrls" select="$doReportUrls"/>
                <p:with-option name="discardOutput" select="$discardOutput"/>
                <p:with-option name="noRetrieval" select="$noRetrieval"/>
                <p:with-option name="noAdarefs2ada" select="$noAdarefs2ada"/>
            </local:get-production-data-for-application>
            <p:catch code="yatcs:error" name="get-production-error-catch">
                <!-- Some YATC error occurred during processing. Report this, but try to keep calm and carry on: -->
                <yatcs:report-yatc-error/>
            </p:catch>
        </p:try>
        <local:get-production-data-for-application p:use-when="$get-production-ada-instances-debug">
            <p:with-option name="parameters" select="$parameters"/>
            <p:with-option name="doReportUrls" select="$doReportUrls"/>
            <p:with-option name="discardOutput" select="$discardOutput"/>
            <p:with-option name="noRetrieval" select="$noRetrieval"/>
            <p:with-option name="noAdarefs2ada" select="$noAdarefs2ada"/>
        </local:get-production-data-for-application>

    </p:for-each>

    <!-- Deduplicate the (optional) document sequence (duplication might happen on complicated adarefs2ada builds): -->
    <yatcs:deduplicate-document-sequence/>

</p:declare-step>
