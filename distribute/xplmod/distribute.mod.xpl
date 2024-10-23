<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.mp5_xfy_2wb" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xi="http://www.w3.org/2001/XInclude" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       XProc module with generic code for use in the distribute component of YATC-internal.
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
    <!-- GENERAL IMPORTS: -->

    <p:import href="component-parameter-names.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/component-parameter-names.mod.xpl"/>

    <p:import href="../../../YATC-shared/xplmod/yatc-general.mod.xpl"/>
    <p:import href="../../../YATC-shared/xplmod/yatc-parameters.mod.xpl"/>

    <p:import href="flatten.xpl"/>

    <!-- ======================================================================= -->

    <p:declare-step type="yatci:get-distribute-data">
        <!-- 
            This step retrieves the distribute data and returns this on its result port as an XML document.
            - Processes XIncludes (if any) and validates the result.
            - Finalizes (enhances) the output with all kinds of fully expanded directory/filenames, defaults filled in, etc.
            - Removes several levels/wrappers that are no longer necessary.,
            
            The result can be pruned on distribution name. 
            
            There are situations in the calling code where this document might be already loaded. If so, pass this 
            already loaded document in the $distributeData parameter. If provided, this document will be passed 
            unchanged (and unchecked!).
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:import href="component-parameter-names.mod.xpl"/>

        <p:output port="result" primary="true" sequence="false">
            <!-- The resulting document.  -->
        </p:output>

        <p:option name="parameters" as="map(xs:string, xs:string*)" required="true">
            <!-- The YATC parameters in effect. -->
        </p:option>

        <p:option name="distributeData" as="document-node()?" required="false" select="()">
            <!-- There are situations that we already might have retrieved this data. If so, pass 
                 this as a document using this option. Its contents will be returned unchanged. This means: unpruned
                 and unvalidated! It's up to the caller to make sure the information is correct!
            -->
        </p:option>

        <p:option name="distribution" as="xs:string?" required="true">
            <!-- The name of the distribution to process. -->
        </p:option>

        <p:option name="distributionVersion" as="xs:string?" required="true">
            <!-- The optional distribution-version to produce. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
        <!-- Remark: This processing is modelled to what happens in YATC-shared/xplmod/yatc-application-data.mod.xpl. 
             However, distribution data is modelled differently than application data, so (unfortunately) we could not re-use this code. -->

        <p:choose>

            <p:when test="exists($distributeData)">
                <!-- The data is already retrieved. Return this unchanged: -->
                <p:identity>
                    <p:with-input>
                        <p:inline>{$distributeData}</p:inline>
                    </p:with-input>
                </p:identity>
            </p:when>

            <p:otherwise>

                <!-- Retrieve the data: -->
                <yatcs:message level="0" msg="Loading application data from &quot;{$parameters($yatci:parnameDistributeDataDocument)}&quot;"/>
                <yatcs:load-document-from-parameter>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="parname" select="$yatci:parnameDistributeDataDocument"/>
                    <p:with-option name="hrefSchema" select="resolve-uri('../xsd/distribute-data.xsd', static-base-uri())"/>
                    <p:with-option name="hrefSchematron" select="resolve-uri('../sch/distribute-data.sch', static-base-uri())"/>
                    <p:with-option name="processXIncludes" select="true()"/>
                    <p:with-option name="addXmlBase" select="true()"/>
                </yatcs:load-document-from-parameter>
                <p:delete match="comment() | processing-instruction()"/>

                <!-- Remove the distributions level: -->
                <p:unwrap match="yatci:distributions"/>

                <!-- Prune the document on distribution (if requested): -->
                <p:if test="(normalize-space($distribution) ne '') and not($distribution = $yatcs:allIndicator)">
                    <p:delete match="/*/yatci:distribution[@name ne '{$distribution}']"/>
                </p:if>

                <!-- Check if we found anything: -->
                <p:if test="empty(/*/yatci:distribution) and empty(/*/yatci:distributions/yatci:distribution)">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">No data found for distribution &quot;{$distribution}&quot;</p:inline>
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

                <!-- Expand any distribution macros: -->
                <p:xslt>
                    <p:with-input port="stylesheet" href="xsl-distribute.mod/expand-distribution-macros.xsl"/>
                    <p:with-option name="parameters" select="map{'distributionVersion': $distributionVersion}"/>
                </p:xslt>
                <!-- All macro references are now expanded. We no longer need any explicit definitions: -->
                <p:delete match="*:macros"/>

                <!-- Finalize it: -->
                <p:xslt>
                    <p:with-input port="stylesheet" href="xsl-distribute.mod/finalize-distribute-data.xsl"/>
                </p:xslt>
                <p:add-attribute match="/yatci:distribute-data/yatci:distribution" attribute-name="_distribution-version" attribute-value="{$distributionVersion}"/>

                <!-- Remove the grouping level. This is for specifying directories only and no longer useful -->
                <p:unwrap match="yatci:group"/>

                <!-- Check if we have to store it for test/debug: -->
                <p:if test="(string($parameters($yatcs:parnameStoreProcessedApplicationData)[1]) eq 'true') and exists($parameters($yatcs:parnameYatcComponentDirectory))">
                    <p:variable name="hrefApplicationFile" select="string-join(($parameters($yatcs:parnameYatcComponentDirectory), 'tmp', 'distribution-data.xml'), '/')"/>
                    <yatcs:message level="1" msg="Processed application data written to &quot;{$hrefApplicationFile}&quot;"/>
                    <p:store href="{$hrefApplicationFile}" serialization="$yatcs:standardXmlSerialization"/>
                </p:if>

            </p:otherwise>

        </p:choose>
    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatci:process-distributions" name="process-distributions">
        <!-- 
            Processes all distributions in an enhanced distributions data file. Acts as an identity step.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The enhanced distributions data file to process. -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@process-distributions">
            <!-- The input, unchanged. -->
        </p:output>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="distributionTimestamp" as="xs:dateTime" select="current-dateTime()"/>
        <p:for-each>
            <p:with-input select="/yatci:distribute-data/yatci:distribution"/>
            <yatci:process-distribution>
                <p:with-option name="distributionTimestamp" select="$distributionTimestamp"/>
            </yatci:process-distribution>
        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatci:process-distribution" name="process-distribution">
        <!-- 
            Processes a single distribution (<distribution> element) from enhanced distributions data file.
            Acts as an identity step.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->


        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The (enhanced) <distribution> element to process. -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@process-distribution">
            <!-- The input, unchanged. -->
        </p:output>

        <p:option name="distributionTimestamp" as="xs:dateTime" required="true">
            <!-- The timestamp we're going to report for this distribution -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:declare-step type="local:load-and-process-text-document">
            <!-- Loads a single text file and processes/substitutes any macro's in it. -->

            <p:output port="result" primary="true" sequence="false" content-types="text"/>

            <p:option name="hrefSource" as="xs:string" required="true"/>
            <p:option name="substitutionsMap" as="map(xs:string, xs:string)" required="true"/>

            <p:if test="not(unparsed-text-available($hrefSource))">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Additional text document &quot;{$hrefSource}&quot; not found</p:inline>
                    </p:with-input>
                </p:error>
            </p:if>

            <p:xslt>
                <p:with-input>
                    <p:document href="{$hrefSource}" content-type="text/plain"/>
                </p:with-input>
                <p:with-input port="stylesheet" href="xsl-distribute.mod/process-additional-text-document.xsl"/>
                <p:with-option name="parameters" select="map{'substitutionsMap': $substitutionsMap}"/>
            </p:xslt>

        </p:declare-step>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:declare-step type="local:create-flatten-master-document">
            <!-- Takes a <flatten-*> document and turns this into a flatten master document.
                 See flatten.xpl for more information about what this is and how it's formatted.
            -->

            <p:input port="source" primary="true" sequence="false" content-types="xml">
                <!-- Document with the <flatten-*> element to process. -->
            </p:input>

            <p:output port="result" primary="true" sequence="false" content-types="xml">
                <!-- The resulting flatten master document. -->
            </p:output>

            <p:option name="distributionName" as="xs:string" required="true"/>
            <p:option name="distributionVersion" as="xs:string?" required="true"/>
            <p:option name="distributionTimestamp" as="xs:dateTime" required="true"/>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

            <!-- Compute and add the default include filter: -->
            <p:variable name="default-include-filter" as="xs:string" select="
                if (exists(/*/self::yatci:flatten-stylesheets)) then '\.xsl$' 
                else if (exists(/*/self::yatci:flatten-schemas)) then '\.xsd$'
                else if (exists(/*/self::yatci:flatten-schematrons)) then '\.sch$'
                else ()                   
            "/>
            <p:if test="empty($default-include-filter)">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Internal error: unrecognized flattening element: {name(/*)}</p:inline>
                    </p:with-input>
                </p:error>
            </p:if>
            <p:viewport match="yatci:master-document-directory[empty(yatci:include)]">
                <p:insert position="first-child">
                    <p:with-input port="insertion">
                        <yatci:include pattern="{$default-include-filter}"/>
                    </p:with-input>
                </p:insert>
            </p:viewport>

            <!-- Get the directory listings for the <master-document-directory> elements: -->
            <p:viewport match="yatci:master-document-directory" name="get-directory-contents">
                <p:variable name="recurse" as="xs:boolean" select="xs:boolean((/*/@recurse, false())[1])"/>

                <!-- Get the directory contents: -->
                <yatcs:safe-directory-list-from-patterns prepare="true">
                    <p:with-option name="copyPatternsElement" select="/*"/>
                    <p:with-option name="path" select="string(/*/@_source-directory)"/>
                    <p:with-option name="max-depth" select="if ($recurse) then 'unbounded' else '1'"/>
                    <p:with-option name="hrefTarget" select="string(/*/@_target-directory)"/>
                </yatcs:safe-directory-list-from-patterns>

                <!-- Wrap it in the original element: -->
                <p:insert position="last-child">
                    <p:with-input pipe="current@get-directory-contents"/>
                    <p:with-input port="insertion" pipe="result"/>
                </p:insert>
            </p:viewport>

            <!-- And re-organize what we have into a valid flatten master document: -->
            <p:xslt>
                <p:with-input port="stylesheet" href="xsl-distribute.mod/create-flatten-master-document.xsl"/>
                <p:with-option name="parameters" select="map{
                    'distributionName': $distributionName,    
                    'distributionVersion': $distributionVersion,    
                    'distributionTimestamp': $distributionTimestamp  
                }"/>
            </p:xslt>

        </p:declare-step>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Get the important information for this distribution: -->
        <p:variable name="distributionName" as="xs:string" select="xs:string(/*/@name)"/>
        <p:variable name="distributionTargetDirectory" as="xs:string" select="string(/*/@_target-directory)"/>
        <p:variable name="distributionVersion" as="xs:string?" select="xs:string(/*/@_distribution-version)"/>
        <p:variable name="hrefZip" as="xs:string?" select="xs:string(/*/@_href-zip)"/>
        <p:variable name="baseDirInZip" as="xs:boolean" select="xs:boolean((/*/@base-dir-in-zip, true())[1])"/>
        <p:variable name="allowOverwrite" as="xs:boolean" select="xs:boolean((/*/@allow-overwrite, false())[1])"/>
        <p:variable name="keepFiles" as="xs:boolean" select="xs:boolean((/*/@keep-files, true())[1])"/>
        <p:variable name="distributionVersionRequired" as="xs:boolean" select="xs:boolean((/*/@distribution-version-required, false())[1])"/>

        <!-- Tell that we've started: -->
        <yatcs:message level="0" msg="Processing distribution &quot;{$distributionName}&quot; into &quot;{$distributionTargetDirectory}&quot;{if (exists($distributionVersion)) then (' (distribution version: &quot;' || $distributionVersion || '&quot;)') else ()}"/>

        <!-- Check whether a distribution version is required and present: -->
        <p:if test="$distributionVersionRequired and (normalize-space($distributionVersion) eq '')">
            <p:error code="yatcs:error">
                <p:with-input>
                    <p:inline content-type="text/plain" xml:space="preserve">A distribution-version is required but was not provided</p:inline>
                </p:with-input>
            </p:error>
        </p:if>

        <!-- Check for overwrite situations (both for the target directory *and* the zip!): -->
        <p:if test="not($allowOverwrite)">
            <p:file-info fail-on-error="false">
                <p:with-option name="href" select="$distributionTargetDirectory"/>
            </p:file-info>
            <p:if test="empty(/*/self::c:error)">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Distribution &quot;{$distributionName}&quot; target directory &quot;{$distributionTargetDirectory}&quot; already exists</p:inline>
                    </p:with-input>
                </p:error>
            </p:if>
            <p:if test="normalize-space($hrefZip) ne ''">
                <p:file-info fail-on-error="false">
                    <p:with-option name="href" select="$hrefZip"/>
                </p:file-info>
                <p:if test="empty(/*/self::c:error)">
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Distribution &quot;{$distributionName}&quot; target zip file &quot;{$hrefZip}&quot; already exists</p:inline>
                        </p:with-input>
                    </p:error>
                </p:if>
            </p:if>
        </p:if>

        <!-- Clear the target(s): -->
        <yatcs:create-clear-directory clear="true">
            <p:with-option name="hrefDir" select="$distributionTargetDirectory"/>
        </yatcs:create-clear-directory>
        <p:if test="normalize-space($hrefZip) ne ''">
            <p:file-delete href="{$hrefZip}" fail-on-error="false"/>
        </p:if>

        <!-- Do what we need to do for this distribution: -->
        <p:for-each name="process-distribution-entries">
            <p:with-input select="/*/*" pipe="source@process-distribution"/>

            <p:choose>

                <!-- Message: -->
                <p:when test="exists(/*/self::yatci:message)">
                    <yatcs:message level="1" msg="{string(.)}"/>
                </p:when>

                <!-- Directory: -->
                <p:when test="exists(/*/self::yatci:directory)">
                    <p:variable name="sourceDirectory" as="xs:string" select="xs:string(/*/@_source-directory)"/>
                    <p:variable name="targetDirectory" as="xs:string" select="xs:string(/*/@_target-directory)"/>
                    <p:variable name="allowEmpty" as="xs:boolean" select="xs:boolean((/*/@allow-empty, false())[1])"/>
                    <p:variable name="recurse" as="xs:boolean" select="xs:boolean((/*/@recurse, true())[1])"/>
                    <p:variable name="clearTarget" as="xs:boolean" select="xs:boolean((/*/@clear-target, true())[1])"/>

                    <yatcs:message level="1" msg="Copying from directory &quot;{$sourceDirectory}&quot; to &quot;{$targetDirectory}&quot;{if ($recurse) then ' (recursive)' else ()}"/>
                    <yatcs:copy-dir-from-patterns loadResults="false" reportCount="true">
                        <p:with-option name="copyPatternsElement" select="/*"/>
                        <p:with-option name="hrefSource" select="$sourceDirectory"/>
                        <p:with-option name="hrefTarget" select="$targetDirectory"/>
                        <p:with-option name="recurse" select="$recurse"/>
                        <p:with-option name="clearTarget" select="$clearTarget"/>
                    </yatcs:copy-dir-from-patterns>

                    <p:variable name="copyCount" as="xs:integer" select="xs:integer(/*/@count)"/>
                    <yatcs:message level="2" msg="Copied {$copyCount} file(s)"/>

                    <p:if test="not($allowEmpty) and ($copyCount le 0)">
                        <p:error code="yatcs:error">
                            <p:with-input>
                                <p:inline content-type="text/plain" xml:space="preserve">Empty directory copy in &quot;{$targetDirectory}&quot; (source: &quot;{$sourceDirectory}&quot;) not allowed</p:inline>
                            </p:with-input>
                        </p:error>
                    </p:if>
                </p:when>

                <!-- File: -->
                <p:when test="exists(/*/self::yatci:file)">
                    <p:variable name="hrefSource" as="xs:string" select="xs:string(/*/@_href-source)"/>
                    <p:variable name="hrefTarget" as="xs:string" select="xs:string(/*/@_href-target)"/>
                    <p:variable name="mustExist" as="xs:boolean" select="xs:boolean((/*/@must-exist, true())[1])"/>

                    <p:if test="$mustExist">
                        <p:file-info fail-on-error="false">
                            <p:with-option name="href" select="$hrefSource"/>
                        </p:file-info>
                        <p:if test="exists(/*/self::c:error)">
                            <p:error code="yatcs:error">
                                <p:with-input>
                                    <p:inline content-type="text/plain" xml:space="preserve">File to copy &quot;{$hrefSource}&quot; not found</p:inline>
                                </p:with-input>
                            </p:error>
                        </p:if>
                    </p:if>

                    <yatcs:message level="1" msg="Copying file &quot;{$hrefSource}&quot; to &quot;{$hrefTarget}&quot;"/>
                    <p:file-copy fail-on-error="true" overwrite="true">
                        <p:with-option name="href" select="$hrefSource"/>
                        <p:with-option name="target" select="$hrefTarget"/>
                    </p:file-copy>
                </p:when>

                <!-- Additional text document: -->
                <p:when test="exists(/*/self::yatci:additional-text-document)">
                    <p:variable name="hrefSource" as="xs:string" select="xs:string(/*/@_href-source)"/>
                    <p:variable name="hrefTarget" as="xs:string" select="xs:string(/*/@_href-target)"/>
                    <p:variable name="substitutionsMap" as="map(xs:string, xs:string)" select="parse-json(/*/@_substitutions-map)"/>

                    <yatcs:message level="1" msg="Processing additional text document from &quot;{$hrefSource}&quot; to &quot;{$hrefTarget}&quot;"/>
                    <local:load-and-process-text-document>
                        <p:with-option name="hrefSource" select="$hrefSource"/>
                        <p:with-option name="substitutionsMap" select="$substitutionsMap"/>
                    </local:load-and-process-text-document>

                    <p:store href="{$hrefTarget}" serialization="map{'method': 'text'}"/>
                </p:when>

                <!-- Combining text documents: -->
                <p:when test="exists(/*/self::yatci:combine-additional-text-documents)">
                    <p:variable name="hrefTarget" as="xs:string" select="xs:string(/*/@_href-target)"/>
                    <p:variable name="substitutionsMap" as="map(xs:string, xs:string)" select="parse-json(/*/@_substitutions-map)"/>
                    <p:variable name="separator-raw" as="xs:string" select="string((/*/@separator, '$NL$NL$NL')[1])"/>
                    <p:variable name="separator" select="replace($separator-raw, '\$NL', '&#10;')"/>

                    <!-- Load all the files: -->
                    <yatcs:message level="1" msg="Combining text documents to &quot;{$hrefTarget}&quot;"/>
                    <p:for-each>
                        <p:with-input select="/*/yatci:text-document"/>
                        <p:variable name="hrefSource" as="xs:string" select="xs:string(/*/@_href-source)"/>
                        <yatcs:message level="2" msg="Source text document: &quot;{$hrefSource}&quot;"/>
                        <local:load-and-process-text-document>
                            <p:with-option name="hrefSource" select="$hrefSource"/>
                            <p:with-option name="substitutionsMap" select="$substitutionsMap"/>
                        </local:load-and-process-text-document>
                    </p:for-each>

                    <!-- Join the texts with the correct separator and store it all: -->
                    <p:text-join>
                        <p:with-option name="separator" select="$separator"/>
                    </p:text-join>
                    <p:store href="{$hrefTarget}" serialization="map{'method': 'text'}"/>
                </p:when>

                <!-- Additional XML document: -->
                <p:when test="exists(/*/self::yatci:additional-xml-document)">
                    <p:variable name="hrefSource" as="xs:string?" select="xs:string(/*/@_href-source)"/>
                    <p:variable name="hrefTarget" as="xs:string" select="xs:string(/*/@_href-target)"/>

                    <p:if test="exists($hrefSource)">
                        <p:if test="not(doc-available($hrefSource))">
                            <p:error code="yatcs:error">
                                <p:with-input>
                                    <p:inline content-type="text/plain" xml:space="preserve">Additional XML source document &quot;{$hrefSource}&quot; not found or not well-formed</p:inline>
                                </p:with-input>
                            </p:error>
                        </p:if>
                    </p:if>

                    <!-- Process the macros and store the result: -->
                    <yatcs:message level="1" msg="Processing additional XML document to &quot;{$hrefTarget}&quot;"/>
                    <p:xslt>
                        <p:with-input pipe="current@process-distribution-entries"/>
                        <p:with-input port="stylesheet" href="xsl-distribute.mod/process-additional-xml-document.xsl"/>
                    </p:xslt>
                    <!-- Somehow, there are some remnant namespaces… Remove if unused. -->
                    <p:if test="empty(//@xsi:*) and empty(//xsi:*)">
                        <p:namespace-delete prefixes="xsi"/>
                    </p:if>
                    <p:if test="empty(//@xi:*) and empty(//xi:*)">
                        <p:namespace-delete prefixes="xi"/>
                    </p:if>
                    <p:store href="{$hrefTarget}" serialization="map{'method': 'xml', 'indent': true()}"/>
                </p:when>

                <!-- Flatten documents: -->
                <p:when test="exists(/*/self::yatci:flatten-stylesheets) or exists(/*/self::yatci:flatten-schemas) or exists(/*/self::yatci:flatten-schematrons)">

                    <local:create-flatten-master-document>
                        <p:with-option name="distributionName" select="$distributionName"/>
                        <p:with-option name="distributionVersion" select="$distributionVersion"/>
                        <p:with-option name="distributionTimestamp" select="$distributionTimestamp"/>
                    </local:create-flatten-master-document>
                    <p:variable name="flattenType" as="xs:string" select="xs:string(/*/@type)"/>
                    <yatcs:message level="1" msg="Flattening {$flattenType}(s) to &quot;{/*/@target-directory}&quot;"/>
                    <yatci:flatten/>

                    <p:variable name="copyCountMaster" as="xs:integer" select="count(/*/*[xs:boolean(@master)])"/>
                    <p:variable name="copyCountInclude" as="xs:integer" select="count(/*/*[not(xs:boolean(@master))])"/>
                    <yatcs:message level="2" msg="Copied/flattened {$copyCountMaster} master {$flattenType}(s) with {$copyCountInclude} include {$flattenType}(s)"/>
                </p:when>

                <!-- Unrecognized: -->
                <p:otherwise>
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Unrecognized distribution element &quot;{local-name(/*)}&quot;</p:inline>
                        </p:with-input>
                    </p:error>
                </p:otherwise>

            </p:choose>

        </p:for-each>

        <!-- Handle the optional zipping: -->
        <p:if test="normalize-space($hrefZip) ne ''">
            <yatcs:message level="1" msg="Zipping distribution to &quot;{$hrefZip}&quot;"/>
            <yatcs:zip-directory depth="-1">
                <p:with-option name="basePath" select="$distributionTargetDirectory"/>
                <p:with-option name="hrefTargetZip" select="$hrefZip"/>
                <p:with-option name="includeBase" select="$baseDirInZip"/>
            </yatcs:zip-directory>
        </p:if>

        <!-- Handle the keeping (or not) of the distribution: -->
        <p:if test="not($keepFiles)">
            <yatcs:message level="1" msg="Removing distribution storage directory &quot;{$distributionTargetDirectory}&quot;"/>
            <p:file-delete recursive="true" fail-on-error="false">
                <p:with-option name="href" select="$distributionTargetDirectory"/>
            </p:file-delete>
        </p:if>

    </p:declare-step>

</p:library>
