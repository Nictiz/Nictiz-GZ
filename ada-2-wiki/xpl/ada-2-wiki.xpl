<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.uqk_swy_2wb" version="3.0" exclude-inline-prefixes="#all" type="yatci:process-ada-2-wiki" name="process-ada-2-wiki">
    <!-- ================================================================== -->
    <!-- 
       This pipeline will perform the ada-2-wiki processing. 
       
       Remark: It acts as an identity step not because we need it but to make sure all processing takes place 
       in the right order. There seems to be something wrong with handling dependencies when steps have
       no ports...
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
    <p:import href="../xplmod/ada-2-wiki.mod.xpl"/>
    <p:import href="../../get-production-ada-instances/xpl/get-production-ada-instances.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-general.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-parameters.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-application-data.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:input port="source" primary="true" sequence="true" content-types="any">
        <p:empty/>
    </p:input>
    <p:output port="result" primary="true" sequence="true" content-types="any" pipe="source@process-ada-2-wiki"/>

    <!-- ======================================================================= -->
    <!-- STATIC OPTIONS: -->

    <p:option static="true" name="ada-2-wiki-debug" as="xs:boolean" select="false()">
        <!-- Set this to true to get some additional output/behavior for debugging purposes -->
    </p:option>

    <!-- ======================================================================= -->
    <!-- OPTIONS: -->

    <p:option name="ada2WikiData" as="document-node()?" required="false" select="()">
        <!-- There are situations that we already might have retrieved the relevant (and pruned!) ada-2-wiki data. 
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

    <p:option name="refresh" as="xs:boolean" required="false" select="false()">
        <!-- Whether or not to refresh the get-production-ada-instances before running the ada-2-wiki processing -->
    </p:option>

    <p:option name="noSetup" as="xs:boolean" required="false" select="false()">
        <!-- Whether to skip the setup -->
    </p:option>

    <!-- ======================================================================= -->

    <p:declare-step type="local:ada-2-wiki-for-application" name="ada-2-wiki-for-application">
        <!-- Performs the ada-2-wiki processing for a single application/version combination, for instance lab/3.0.0.
             Input is the <yatci:application> element from the ada-2-wiki data file for an application/version.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The <yatci:application> element with the information about the data to retrieve. -->
        </p:input>

        <p:input port="ada-documents-in" primary="false" sequence="true" content-types="xml">
            <!-- The (optional) sequence of retrieved ADA documents to use. -->
        </p:input>

        <p:option name="parameters" as="map(xs:string, xs:string*)?" required="true"/>
        <p:option name="noSetup" as="xs:boolean" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Initialization/preparations: -->
        <p:variable name="application" as="xs:string" select="xs:string(/*/@name)"/>
        <p:variable name="version" as="xs:string" select="xs:string(/*/@version)"/>
        <p:variable name="storageBaseDirectory" as="xs:string" select="xs:string(/*/@_target-dir)"/>
        <p:variable name="sourceProjectName" as="xs:string" select="xs:string((/*/@source-project-name, $application)[1])"/>

        <yatcs:message-empty-line/>
        <yatcs:message level="0" msg="Ada-2-wiki processing for {$application}/{$version}"/>
        <yatcs:message level="1" msg="Application storage directory: &quot;{$storageBaseDirectory}&quot;"/>

        <yatcs:process-application-messages/>

        <!-- Perform the setup: -->
        <p:choose name="setups">
            <p:when test="not($noSetup)">
                <p:for-each>
                    <p:with-input select="/*/yatci:setup"/>
                    <yatcs:process-setup-element reportCount="true" loadResults="false">
                        <p:with-input port="documents" pipe="ada-documents-in@ada-2-wiki-for-application"/>
                    </yatcs:process-setup-element>
                </p:for-each>
            </p:when>
            <p:otherwise>
                <yatcs:message level="1" msg="Skipping setup"/>
            </p:otherwise>
        </p:choose>

        <!-- And perform the builds: -->
        <p:for-each name="built-documents" depends="setups">
            <p:with-input select="/*/yatci:build" pipe="source@ada-2-wiki-for-application"/>

            <p:variable name="buildName" as="xs:string" select="string((/*/@name, ('Build ' || p:iteration-position() || '/' || p:iteration-size()))[1])"/>
            <p:variable name="adaWorkingSetDirectory" as="xs:string?" select="xs:string(/*/yatci:ada-working-set/@directory)"/>
            <p:variable name="hrefBuildStylesheet" as="xs:string" select="string(/*/yatci:stylesheet/@href)"/>
            <p:variable name="outputFilename" as="xs:string" select="string-join((/*/yatci:output/@directory, /*/yatci:output/@name), '/')"/>
            <p:variable name="inputFilename" as="xs:string" select="if (exists(/*/yatci:input-document)) then string-join((/*/yatci:input-document/@directory, /*/yatci:input-document/@name), '/') else resolve-uri('../../../YATC-shared/data/dummy.xml', static-base-uri())"/>

            <p:group name="preamble">
                <yatcs:message level="1" msg="Ada-2-wiki build &quot;{$buildName}&quot; for {$application}/{$version}"/>
                <yatcs:message level="2" msg="To: &quot;{$outputFilename}&quot;"/>
                <yatcs:message level="2" msg="Stylesheet: &quot;{$hrefBuildStylesheet}&quot;"/>

                <!-- Perform availability check on the build stylesheet: -->
                <p:if test="not(doc-available($hrefBuildStylesheet))">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Build stylesheet not found or not well-formed: &quot;{$hrefBuildStylesheet}&quot;</p:inline>
                        </p:with-input>
                    </p:error>
                </p:if>

                <!-- Perform availability check on the (optional) specific input document: -->
                <p:if test="exists(/*/yatci:input-document)">
                    <p:if test="not(doc-available($inputFilename))">
                        <p:error code="yatcs:error">
                            <p:with-input>
                                <p:inline content-type="text/plain" xml:space="preserve">Input document for build not found or not well-formed: &quot;{$inputFilename}&quot;</p:inline>
                            </p:with-input>
                        </p:error>
                    </p:if>
                </p:if>
            </p:group>

            <!-- Create the basic map with the stylesheet parameters. All these parameters are string values. -->
            <p:xslt depends="preamble">
                <p:with-input pipe="current@built-documents"/>
                <p:with-input port="stylesheet" href="xsl-ada-2-wiki/get-ada-2-wiki-build-stylesheet-parameters.xsl"/>
                <p:with-option name="parameters" select="map{
                    'application': $application, 
                    'version': $version, 
                    'sourceProjectName': $sourceProjectName,
                    'buildName': $buildName,
                    'baseDirectory': $storageBaseDirectory
                }"/>
            </p:xslt>
            <p:variable name="buildStylesheetParameters" as="map(*)" select="."/>

            <!-- Apply the stylesheet: -->
            <p:xslt name="apply-build-stylesheet">
                <p:with-input href="{$inputFilename}"/>
                <p:with-input port="stylesheet" href="{$hrefBuildStylesheet}"/>
                <p:with-option name="parameters" select="$buildStylesheetParameters"/>
            </p:xslt>

            <!-- The output of this stylesheet is supposed to be a *text* WIKI document. Store it as such: -->
            <!-- The encoding for the WIKI text files was originally UTF-16BE. UTF-8 probably makes more sense. 
                 The actual encoding used is in parameter ada2wikiTextEncoding. -->
            <!-- We also set the serialization properties on the document itself (using the <p:set-properties> below).
                 This ensures that this serialization is always used. If we would have specified it on the <p:store>,
                 serialization properties from the document, set by the stylesheets, take precedence and these, because of 
                 historical reasons, don't always dor the right thing). -->
            <p:variable name="textEncoding" select="($parameters($yatci:parnameAda2wikiTextEncoding)[.], 'UTF-8')[1]"/>
            <p:variable name="serializationMap" as="map(xs:QName,item()*)" select="map{'method': 'text', 'encoding': $textEncoding}"/>
            <p:set-properties properties="map{'serialization': $serializationMap }"/>
            <p:store href="{$outputFilename}"  />

            <!-- There might be secondary (<xsl:result-document …>) outputs (usually debug files). Store these too: 
                 Sometimes these are html files. We don't specify a serialization here, so it uses the serialization set 
                 by the stylesheet.
            -->
            <p:for-each>
                <p:with-input pipe="secondary@apply-build-stylesheet"/>
                <p:store href="{base-uri(/)}"/>
            </p:for-each>

        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->
    <!-- MAIN: -->

    <!-- If we have to refresh, we do it up-front: -->
    <p:choose name="refresh-processing">
        <p:when test="$refresh">
            <yatcs:message-empty-line/>
            <yatcs:message level="0" msg="Refreshing production-ada-instances"/>
            <yatci:get-production-ada-instances name="get-production-ada-instances">
                <p:with-option name="application" select="$application"/>
                <p:with-option name="version" select="$version"/>
                <p:with-option name="discardOutput" select="false()"/>
            </yatci:get-production-ada-instances>
        </p:when>
        <p:otherwise>
            <yatcs:empty-results/>
        </p:otherwise>
    </p:choose>

    <!-- Get the parameters: -->
    <yatcs:get-combined-parameters-map p:depends="refresh-processing">
        <p:with-option name="parameters" select="$parameters"/>
        <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/>
    </yatcs:get-combined-parameters-map>
    <p:variable name="parameters" as="map(xs:string, xs:string*)" select="."/>

    <!-- Get the application ADA retrieval data: -->
    <yatci:get-ada-2-wiki-data>
        <p:with-option name="parameters" select="$parameters"/>
        <p:with-option name="ada2WikiData" select="$ada2WikiData"/>
        <p:with-option name="application" select="$application"/>
        <p:with-option name="version" select="$version"/>
    </yatci:get-ada-2-wiki-data>

    <!-- Report if we're in debug mode: -->
    <p:identity message="*** DEBUG ON FOR ada-2-wiki" use-when="$ada-2-wiki-debug"/>

    <!-- Now loop over all the applications that are in the pruned ADA Retrieval data: -->
    <p:for-each>
        <p:with-input select="/*/yatci:application"/>

        <!-- Perform the processing for each application (when debugging we don't add the try/catch): -->
        <p:try use-when="not($ada-2-wiki-debug)">
            <local:ada-2-wiki-for-application>
                <p:with-input port="ada-documents-in" pipe="@refresh-processing"/>
                <p:with-option name="parameters" select="$parameters"/>
                <p:with-option name="noSetup" select="$noSetup"/>
            </local:ada-2-wiki-for-application>
            <p:catch code="yatcs:error" name="get-production-error-catch">
                <!-- Some error occurred during processing. Report this, but try to keep calm and carry on: -->
                <yatcs:report-yatc-error />
                <p:sink/>
            </p:catch>
        </p:try>
        <local:ada-2-wiki-for-application p:use-when="$ada-2-wiki-debug">
            <p:with-input port="ada-documents-in" pipe="@refresh-processing"/>
            <p:with-option name="parameters" select="$parameters"/>
            <p:with-option name="noSetup" select="$noSetup"/>
        </local:ada-2-wiki-for-application>

    </p:for-each>

</p:declare-step>
