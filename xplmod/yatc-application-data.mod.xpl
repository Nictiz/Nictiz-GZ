<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ww2_h5l_lwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Generic support code for working with YATC application data documents 
       (documents with /*/*:application elements containing @name and @version information). 
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

    <p:import href="yatc-general.mod.xpl"/>
    <p:import href="component-parameter-names.mod.xpl"/>
    <p:import href="yatc-parameters.mod.xpl"/>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:get-application-data">
        <!-- 
            This step loads application data from a document, specified by a parameter with a given name.
            This document is supposed to have /*/*:application elements with @name and @version attributes.
            Any parameter references are expanded.
             
            You can additionally specify:
            - A schema to validate the document against (after all XIncludes are processed)
            - Pruning information for the applications and versions it should contain
            - A finalization stylesheet to be run over the result. This might for instance enhance the result with 
              additional directory information or fill-in default attribute values, making the data more easily processable).
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="false"/>

        <p:option name="parameters" as="map(*)" required="true">
            <!-- The YATC parameters in effect. -->
        </p:option>

        <p:option name="retrievedData" as="document-node()?" required="false" select="()">
            <!-- There are situations that we already might have retrieved the required data. If so, pass 
                 this (as a document) using this option. Its contents will be returned unchanged. This means: unpruned
                 and unvalidated! It's up to the caller to make sure the information is correct!
            -->
        </p:option>

        <p:option name="parnameDataDocument" as="xs:string" required="true">
            <!-- The parameter name that holds the name of the data document -->
        </p:option>

        <p:option name="hrefSchema" as="xs:string?" required="false" select="()">
            <!-- Optional href of the W3C XML Schema to validate the loaded document with. 
                 If empty, no W3C XML Schema validation will take place.  -->
        </p:option>

        <p:option name="hrefSchematron" as="xs:string?" required="false" select="()">
            <!-- Optional href of the Schematron schema to validate the loaded document with. 
                 If empty, no Schematron validation will take place.  -->
        </p:option>

        <p:option name="hrefFinalizationStylesheet" as="xs:string?" required="false" select="()">
            <!-- Full href/URI of the stylesheet to run over the result, for finalization/enhancing purposes. -->
        </p:option>

        <p:option name="finalizationStylesheetParameters" as="map(*)?" required="false" select="()">
            <!-- Any parameters to pass to the finalization stylesheet. -->
        </p:option>

        <p:option name="application" as="xs:string?" required="false" select="()">
            <!-- Prune the document for all applications (/*/*:application) with an @name attribute that does not 
                 match $application. 
                 If this option is empty or $yatcs:allIndicator, no pruning on application name will take place. -->
        </p:option>

        <p:option name="version" as="xs:string?" required="false" select="()">
            <!-- Prune the document for all applications (/*/*:application) with an @version that does not match $version.
                 If this option is empty or $yatcs:allIndicator, no pruning on version will take place. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:choose>

            <p:when test="exists($retrievedData)">
                <!-- The data is already retrieved. Return this unchanged: -->
                <p:identity>
                    <p:with-input>
                        <p:inline>{$retrievedData}</p:inline>
                    </p:with-input>
                </p:identity>
            </p:when>

            <p:otherwise>

                <!-- Retrieve the data: -->
                <yatcs:message level="0" msg="Loading application data from &quot;{$parameters($parnameDataDocument)}&quot;"/>
                <yatcs:load-document-from-parameter>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="parname" select="$parnameDataDocument"/>
                    <p:with-option name="hrefSchema" select="$hrefSchema"/>
                    <p:with-option name="hrefSchematron" select="$hrefSchematron"/>
                    <p:with-option name="processXIncludes" select="true()"/>
                    <p:with-option name="addXmlBase" select="true()"/>
                </yatcs:load-document-from-parameter>

                <!-- Prune the document on application and version (if requested): -->
                <p:choose>
                    <p:when test="(normalize-space($application) eq '') or ($application = $yatcs:allIndicator)">
                        <p:identity/>
                    </p:when>
                    <p:otherwise>
                        <p:delete match="/*/*:application[@name ne '{$application}']"/>
                    </p:otherwise>
                </p:choose>
                <p:choose>
                    <p:when test="(normalize-space($version) eq '') or ($version = $yatcs:allIndicator)">
                        <p:identity/>
                    </p:when>
                    <p:otherwise>
                        <p:delete match="/*/*:application[@version ne '{$version}']"/>
                    </p:otherwise>
                </p:choose>

                <!-- Check if we found anything: -->
                <p:if test="empty(/*/*:application)">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">No data found for application/version &quot;{$application}&quot;/&quot;{$version}&quot;</p:inline>
                        </p:with-input>
                    </p:error>
                </p:if>

                <!-- Expand any parameters: -->
                <yatcs:substitute-parameters substituteInAttributes="true" substituteInTextNodes="true">
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="callerStaticBaseUri" select="static-base-uri()">
                        <!-- Not used because we already have a non-empty set of parameters, but specify nonetheless. -->
                    </p:with-option>
                </yatcs:substitute-parameters>

                <!-- Expand all the base macros. After this, remove all the macro elements (no longer needed and might get in the way): -->
                <p:xslt>
                    <p:with-input port="stylesheet" href="xsl-yatc-application-data.mod/expand-base-application-macros.xsl"/>
                </p:xslt>
                <p:delete match="*:macros"/>

                <!-- Finalize it: -->
                <p:if test="exists($hrefFinalizationStylesheet)">
                    <p:xslt>
                        <p:with-input port="stylesheet" href="{$hrefFinalizationStylesheet}"/>
                        <p:with-option name="parameters" select="$finalizationStylesheetParameters"/>
                    </p:xslt>
                </p:if>

                <!-- Check if we have to store it for test/debug: -->
                <p:if test="(string($parameters($yatcs:parnameStoreProcessedApplicationData)[1]) eq 'true') and exists($parameters($yatcs:parnameYatcComponentDirectory))">
                    <p:variable name="hrefApplicationFile" select="string-join(($parameters($yatcs:parnameYatcComponentDirectory), 'tmp', 'application-data.xml'), '/')"/>
                    <yatcs:message level="1" msg="Processed application data written to &quot;{$hrefApplicationFile}&quot;"/>
                    <p:store href="{$hrefApplicationFile}" serialization="$yatcs:standardXmlSerialization"/>
                </p:if>

            </p:otherwise>

        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:process-application-messages" name="process-application-messages">
        <!-- 
            Step that processes any /*/*:message elements and outputs their contents as message.
            Acts as an identity step.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- Any XML with optional /*/*:message elements -->
        </p:input>
        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@process-application-messages"/>

        <p:option name="messageIndentLevel" as="xs:integer" required="false" select="1">
            <!-- The base indent level for the output of messages. Lowest value: 0 (means against the left margin) -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:for-each>
            <p:with-input select="/*/*:message"/>
            <yatcs:message level="{$messageIndentLevel}" msg="{string(.)}"/>
        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:process-setup-element" name="process-setup-element">
        <!-- 
            Step that processes a <setup> and performs the copy data and schema operations defined in it:
            * The element is defined ../xsdmod/application-data-file.mod.xsd
            * The element must be pre-processed by (for instance) ../xslmod/finalize-application-data-file.mod.xsl. It needs 
              additional attributes like _source-dir and @_target-dir
            * If $loadResults is true, the output is the sequence of copied documents, otherwise…
            * If $loadResults is false and $reportCount is true, the step outputs a <c:result count=…"/> element.
            * If $doReport is true, the step reports with messages what it's doing
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The setup element -->
        </p:input>

        <p:input port="documents" primary="false" sequence="true" content-types="xml">
            <!-- Any documents already loaded for the copy operations. -->
            <p:empty/>
        </p:input>

        <p:output port="result" primary="true" sequence="true" content-types="xml">
            <!-- Depends on $loadResults and $reportCount. See step description. -->
        </p:output>

        <p:option name="loadResults" as="xs:boolean" required="false" select="false()">
            <!-- Set to true to get all the copied documents on the result port. -->
        </p:option>

        <p:option name="reportCount" as="xs:boolean" required="false" select="false()">
            <!-- If true *and* $loadResults is false, the step reports the count of copied documents as a sequence of
                 <c:result count=…"/> element documents. -->
        </p:option>

        <p:option name="doReport" as="xs:boolean" required="false" select="true()">
            <!-- Whether to report (as messages) what it's doing. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="usecase" as="xs:string" select="xs:string(/*/@usecase)"/>
        <p:if test="$doReport">
            <yatcs:message level="1" msg="Setup for usecase &quot;{$usecase}&quot;"/>
        </p:if>
        <p:for-each>
            <p:with-input select="/*:setup/*[exists(@_target-dir)]"/>

            <p:variable name="hrefTarget" as="xs:string" select="/*/@_target-dir"/>
            <p:variable name="isEmptyDirectory" as="xs:boolean" select="exists(/*/self::*:empty-directory)"/>

            <p:if test="$doReport">
                <yatcs:message level="2" msg="{local-name(/*)} target &quot;{$hrefTarget}&quot;"/>
            </p:if>

            <p:choose>

                <!-- copy-data and copy-project-schemas: -->
                <p:when test="exists(/*/self::*:copy-data) or exists(/*/self::*:copy-project-schemas)">
                    <p:variable name="hrefSource" as="xs:string" select="/*/@_source-dir"/>
                    <p:variable name="clearTarget" as="xs:boolean" select="xs:boolean((/*/@clear-target, true())[1])"/>
                    <yatcs:copy-documents-from-patterns name="do-copy-documents">
                        <p:with-input pipe="documents@process-setup-element"/>
                        <p:with-option name="copyPatternsElement" select="/*"/>
                        <p:with-option name="loadResults" select="$loadResults"/>
                        <p:with-option name="reportCount" select="$reportCount or $doReport"/>
                        <p:with-option name="hrefSource" select="$hrefSource"/>
                        <p:with-option name="hrefTarget" select="$hrefTarget"/>
                        <p:with-option name="clearTarget" select="$clearTarget"/>
                    </yatcs:copy-documents-from-patterns>
                </p:when>

                <!-- empty-directory: -->
                <p:when test="$isEmptyDirectory">
                    <p:variable name="clearTarget" as="xs:boolean" select="xs:boolean((/*/@clear-target, true())[1])"/>
                    <yatcs:create-clear-directory>
                        <p:with-option name="hrefDir" select="$hrefTarget"/>
                        <p:with-option name="clear" select="$clearTarget"/>
                    </yatcs:create-clear-directory>
                    <p:identity>
                        <p:with-input>
                            <p:empty/>
                        </p:with-input>
                    </p:identity>
                </p:when>

                <!-- copy-directory: -->
                <p:when test="exists(/*/self::*:copy-directory)">
                    <p:variable name="hrefSource" as="xs:string" select="/*/@_source-dir"/>
                    <p:variable name="recurse" as="xs:boolean" select="xs:boolean((/*/@recurse, true())[1])"/>
                    <p:variable name="clearTarget" as="xs:boolean" select="xs:boolean((/*/@clear-target, true())[1])"/>
                    <yatcs:copy-dir-from-patterns>
                        <p:with-option name="hrefSource" select="$hrefSource"/>
                        <p:with-option name="hrefTarget" select="$hrefTarget"/>
                        <p:with-option name="recurse" select="$recurse"/>
                        <p:with-option name="copyPatternsElement" select="/*"/>
                        <p:with-option name="loadResults" select="$loadResults"/>
                        <p:with-option name="reportCount" select="$reportCount or $doReport"/>
                        <p:with-option name="clearTarget" select="$clearTarget"/>
                    </yatcs:copy-dir-from-patterns>
                </p:when>

                <!-- retrieve (an XML document from a URL): -->
                <p:when test="exists(/*/self::*:retrieve)">
                    <p:variable name="url" as="xs:string" select="xs:string(/*/@url)"/>
                    <p:variable name="targetFilename" as="xs:string" select="xs:string(/*/@_target-filename)"/>
                    <!-- Retrieve the file: -->
                    <p:http-request href="{$url}">
                        <p:with-input>
                            <p:empty/>
                        </p:with-input>
                    </p:http-request>
                    <!-- Set the base-uri for the document to the storage path and store it:: -->
                    <p:set-properties properties="map{'base-uri': $targetFilename}"/>
                    <p:store href="{$targetFilename}" serialization="$yatcs:standardXmlSerialization"/>
                </p:when>

                <!-- Unrecognized: -->
                <p:otherwise>
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Unrecognized setup element: {local-name(/*)}</p:inline>
                        </p:with-input>
                    </p:error>
                </p:otherwise>

            </p:choose>

            <!-- Report the count (if requested) and make sure the output is empty if the caller wants this: -->
            <p:if test="$doReport and not($isEmptyDirectory)">
                <yatcs:report-count prompt="Documents copied:" indentLevel="3"/>
            </p:if>
            <yatcs:empty-results enabled="{not($loadResults) and not($reportCount)}"/>

        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:process-empty-root-directory-element" name="process-empty-root-directory-element">
        <!-- 
            Step that processes an <empty-root-directory>:
            * The element is defined ../xsdmod/application-data-file.mod.xsd
            * The element must be pre-processed by (for instance) ../xslmod/finalize-application-data-file.mod.xsl. It needs 
              additional attributes like @_target-dir
            * The step acts as an identity step
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The empty-root-directory element -->
        </p:input>
        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@process-empty-root-directory-element"/>

        <p:option name="doReport" as="xs:boolean" required="false" select="true()">
            <!-- Whether to report (as messages) what it's doing. -->
        </p:option>

        <p:option name="messageIndentLevel" as="xs:integer" required="false" select="1">
            <!-- The base indent level for the output of messages. Lowest value: 0 (means against the left margin) -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="targetDir" as="xs:string" select="xs:string(/*/@_target-dir)"/>
        <p:variable name="clearTarget" as="xs:boolean" select="xs:boolean((/*/@clear-target, true())[1])"/>
        <p:if test="$doReport">
            <yatcs:message level="{$messageIndentLevel}" msg="{local-name(/*)} target &quot;{$targetDir}&quot;"/>
        </p:if>
        <yatcs:create-clear-directory>
            <p:with-option name="hrefDir" select="$targetDir"/>
            <p:with-option name="clear" select="$clearTarget"/>
        </yatcs:create-clear-directory>

    </p:declare-step>

</p:library>
