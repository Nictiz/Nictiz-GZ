<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.l4c_lsl_jwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Module with XProc steps for comparing documents and directories.
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

    <p:declare-step type="yatcs:do-compares" name="do-compares">
        <!-- 
            This step performs the actual compares, based on a standard compare list. This should look like this:
            
            <some-root-element …>
                <application name="…" version="…">*
                    ( <compare-directories description="…" href1="… (new)" href2=… (old/original)"/>
                      <compare-documents description="…" href1="… (new)" href2=… (old/original)"/>
                      <compare-texts description="…" href1="… (new)" href2=… (old/original)"/>
                    )*
                </application>
                …
            </some-root-element>
            
            Output is a document containing the results. Look for differences="true" attributes to find problems.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:import href="../xplmod/yatc-general.mod.xpl"/>
        <p:import href="../xplmod/component-parameter-names.mod.xpl"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The document with the compare instructions See step description. -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="xml">
            <!-- Some result XML. -->
        </p:output>

        <p:option name="parameters" as="map(*)?" required="false" select="()">
            <!-- The YATC parameters in effect. We need this to load the compare rules.
                 This option is optional for historic/compatibility reasons but should probably be considered required! -->
        </p:option>

        <p:option name="noDirectoryCompares" as="xs:boolean" required="false" select="false()">
            <!-- Whether to disable the directory compares -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- First deduplicate the list: -->
        <p:xslt>
            <p:with-input port="stylesheet" href="xsl-compare.mod/deduplicate-compare-list.xsl"/>
        </p:xslt>

        <!-- Get the compare rules: -->
        <p:if test="exists($parameters)">
            <yatcs:load-document-from-parameter>
                <p:with-option name="parameters" select="$parameters"/>
                <p:with-option name="parname" select="$yatcs:parnameYatcDocumentCompareRules"/>
                <p:with-option name="hrefSchema" select="resolve-uri('../xsd/compare-rules.xsd', static-base-uri())"/>
            </yatcs:load-document-from-parameter>
            <p:identity message="* Compare rules: &quot;{base-uri(/)}&quot;"/>
        </p:if>
        <p:variable name="compareRules" as="element()?" select="if (exists($parameters)) then /* else ()"/>

        <!-- Go and compare: -->
        <p:for-each>
            <p:with-input select="/*/application" pipe="source@do-compares"/>

            <p:variable name="application" as="xs:string" select="string(/*/@name)"/>
            <p:variable name="version" as="xs:string" select="string(/*/@version)"/>

            <p:identity message=""/>
            <p:identity message="* Comparing for {$application}/{$version}"/>

            <p:for-each>
                <p:with-input select="/*/*"/>
                <p:variable name="description" as="xs:string" select="xs:string(/*/@description)"/>
                <p:variable name="hrefNew" as="xs:string" select="string(/*/@href1)"/>
                <p:variable name="hrefOld" as="xs:string" select="string(/*/@href2)"/>
                <p:variable name="compareFlags" as="xs:string" select="string(/*/@compare-flags)"/>

                <p:choose>

                    <!-- Directory compare, but disabled: -->
                    <p:when test="$noDirectoryCompares and exists(/*/self::compare-directories)">
                        <p:identity>
                            <p:with-input>
                                <p:empty/>
                            </p:with-input>
                        </p:identity>
                    </p:when>

                    <!-- Compare directories: -->
                    <p:when test="exists(/*/self::compare-directories)">
                        <p:identity message="  * Directory compare: {$description}"/>
                        <p:identity message="    * New system dir: &quot;{$hrefNew}&quot;"/>
                        <p:identity message="    * Old system dir: &quot;{$hrefOld}&quot;"/>

                        <yatcs:compare-directories href1="{$hrefNew}" href2="{$hrefOld}" description="{$description}" compareFlags="{$compareFlags}">
                            <p:with-option name="compareRules" select="$compareRules"/>
                        </yatcs:compare-directories>

                        <p:variable name="uncomparedCount" as="xs:integer" select="xs:integer(/*/@not-compared)"/>
                        <p:identity message="    * Documents: {/*/@document-count}{if ($uncomparedCount eq 0) then () else (' - NOT COMPARED: ' || $uncomparedCount)}"/>
                        <p:if test="xs:boolean(/*/@differences)">
                            <p:identity message="    * {count(/*/*[not(self::uncomparable)])} DIFFERENCE(S) DETECTED"/>
                        </p:if>
                    </p:when>

                    <!-- Compare (XML) documents: -->
                    <p:when test="exists(/*/self::compare-documents)">
                        <p:identity message="  * Documents compare: {$description}"/>
                        <p:identity message="    * New system doc: &quot;{$hrefNew}&quot;"/>
                        <p:identity message="    * Old system doc: &quot;{$hrefOld}&quot;"/>

                        <yatcs:compare-documents href1="{$hrefNew}" href2="{$hrefOld}">
                            <p:with-option name="compareRules" select="$compareRules"/>
                        </yatcs:compare-documents>

                        <p:variable name="differences" as="xs:boolean" select="exists(/*//message)"/>
                        <p:add-attribute attribute-name="differences" match="/*" attribute-value="{$differences}"/>
                        <p:add-attribute attribute-name="description" match="/*" attribute-value="{$description}"/>

                        <p:if test="$differences">
                            <p:identity message="    * DIFFERENCE(S) DETECTED"/>
                        </p:if>
                    </p:when>

                    <p:when test="exists(/*/self::compare-texts)">
                        <p:identity message="  * Texts compare: {$description}"/>
                        <p:identity message="    * New system txt: &quot;{$hrefNew}&quot;"/>
                        <p:identity message="    * Old system txt: &quot;{$hrefOld}&quot;"/>

                        <yatcs:compare-texts href1="{$hrefNew}" href2="{$hrefOld}"/>

                        <p:if test="xs:boolean(/*/@differences)">
                            <p:identity message="    * DIFFERENCE(S) DETECTED"/>
                        </p:if>
                    </p:when>

                    <p:otherwise>
                        <p:error code="yatcs:error">
                            <p:with-input>
                                <p:inline content-type="text/plain" xml:space="preserve">Internal error: Invalid compare element: {name(/*)}</p:inline>
                            </p:with-input>
                        </p:error>
                    </p:otherwise>

                </p:choose>

            </p:for-each>

            <p:variable name="differences" as="xs:boolean" select="some $doc in collection() satisfies exists($doc//*[xs:boolean(@differences)])" collection="true"/>
            <p:wrap-sequence wrapper="application"/>
            <p:add-attribute attribute-name="application" match="/*" attribute-value="{$application}"/>
            <p:add-attribute attribute-name="version" match="/*" attribute-value="{$version}"/>
            <p:add-attribute attribute-name="differences" match="/*" attribute-value="{$differences}"/>

            <p:if test="$differences">
                <p:identity message="  * DIFFERENCE(S) DETECTED FOR {$application}/{$version}"/>
            </p:if>

        </p:for-each>

        <!-- Finalize: -->
        <p:variable name="differences" as="xs:boolean" select="some $doc in collection() satisfies exists($doc//*[xs:boolean(@differences)])" collection="true"/>
        <p:wrap-sequence wrapper="compares"/>
        <p:add-attribute attribute-name="timestamp" match="/*" attribute-value="{current-dateTime()}"/>
        <p:add-attribute attribute-name="differences" match="/*" attribute-value="{$differences}"/>
        <p:add-attribute attribute-name="no-directory-compares" match="/*" attribute-value="{$noDirectoryCompares}"/>
        <p:namespace-delete prefixes="yatcs"/>

        <p:if test="$differences">
            <p:identity message="* DIFFERENCE(S) DETECTED"/>
        </p:if>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:compare-documents">
        <!-- 
            This step compares two XML documents (identified by href-s), 
            using ../xslmod/compare.mod.xsl (see there for the exact comparison strategy).
            
            It returns on its result port:
            
            <compare-documents href1="..." href2="..." differences="true/false">
                 (in case of differences, one or more <message> elements with information)
            </compare-documents>
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="false" content-types="xml">
            <!-- Result of the comparison. See step header. -->
        </p:output>

        <p:option name="href1" as="xs:string" required="true">
            <!-- Href of the document to compare -->
        </p:option>

        <p:option name="href2" as="xs:string" required="true">
            <!-- Href of the document to compare -->
        </p:option>

        <p:option name="compareRules" as="element()?" required="false" select="()">
            <!-- The optional document compare rules according to ../xsd/compare-rules.xsd -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:xslt>
            <p:with-input>
                <null/>
            </p:with-input>
            <p:with-input port="stylesheet" href="xsl-compare.mod/do-compare-documents.xsl"/>
            <p:with-option name="parameters" select="map{'href1': $href1, 'href2': $href2, 'compareRules': $compareRules}"/>
        </p:xslt>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:compare-texts">
        <!-- Compares two text documents (identified by href-s). 
        
            It returns on its result port:
            
            <compare-texts href1="..." href2="..." differences="true/false">
                 (in case of differences, one or more <message> elements with information)
            </compare-documents>
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="false" content-types="xml">
            <!-- Result of the comparison. See step header. -->
        </p:output>

        <p:option name="href1" as="xs:string" required="true">
            <!-- Href of the document to compare -->
        </p:option>

        <p:option name="href2" as="xs:string" required="true">
            <!-- Href of the document to compare -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:xslt>
            <p:with-input>
                <null/>
            </p:with-input>
            <p:with-input port="stylesheet" href="xsl-compare.mod/do-compare-texts.xsl"/>
            <p:with-option name="parameters" select="map{'href1': $href1, 'href2': $href2}"/>
        </p:xslt>

        <p:variable name="differences" as="xs:boolean" select="exists(/*//message)"/>
        <p:add-attribute attribute-name="differences" match="/*" attribute-value="{$differences}"/>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:compare-directories">
        <!-- 
             This step compares two directories (without sub-directories) (identified by href-s), 
             using compare-documents.xpl to compare contents
             All files are presumed to be valid XML documents. Some documents are recognized as non-XML and 
             therefore not compared. 
             
             It returns on its result port:
             
             <compare-directories href1="…" href2="…" differences="true/false" not-compared="…">
                  (the <compare-documents> elements produced by compare-documents.xpl)
             </compare-directories>
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="false" content-types="xml">
            <!-- Result of the comparison. See step header. -->
        </p:output>

        <p:option name="href1" as="xs:string" required="true">
            <!-- Href of the directory to compare -->
        </p:option>

        <p:option name="href2" as="xs:string" required="true">
            <!-- Href of the directory to compare -->
        </p:option>

        <p:option name="compareFlags" as="xs:string" required="true">
            <!-- The value of the @compare-flags attribute. -->
        </p:option>

        <p:option name="pruneIdenticalDocumentsOutput" as="xs:boolean" required="false" select="true()">
            <!-- If true, the information on identical (and non-compared) documents is pruned from the result. -->
        </p:option>

        <p:option name="description" as="xs:string?" required="false" select="()">
            <!-- Description to add as @description to the output root element. -->
        </p:option>

        <p:option name="compareRules" as="element()?" required="false" select="()">
            <!-- The optional document compare rules according to ../xsd/compare-rules.xsd -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Get the contents of the directories and combine these into a single document: -->
        <p:variable name="excludedFiles" as="xs:string*" select="('\.DS_Store$')"/>
        <p:try name="list-href1">
            <p:directory-list path="{$href1}">
                <p:with-option name="exclude-filter" select="$excludedFiles"/>
            </p:directory-list>
            <p:catch>
                <p:identity>
                    <p:with-input>
                        <no-directory href="{$href1}"/>
                    </p:with-input>
                </p:identity>
            </p:catch>
        </p:try>
        <p:try name="list-href2">
            <p:directory-list path="{$href2}">
                <p:with-option name="exclude-filter" select="$excludedFiles"/>
            </p:directory-list>
            <p:catch>
                <p:identity>
                    <p:with-input>
                        <no-directory href="{$href2}"/>
                    </p:with-input>
                </p:identity>
            </p:catch>
        </p:try>

        <p:insert position="last-child">
            <p:with-input>
                <compare-directories href1="{$href1}" href2="{$href2}"/>
            </p:with-input>
            <p:with-input port="insertion" pipe="@list-href1"/>
        </p:insert>
        <p:insert position="last-child">
            <p:with-input port="insertion" pipe="@list-href2"/>
        </p:insert>

        <!-- Prepare the comparison by merging the two lists (and catch some obvious errors): -->
        <p:xslt name="prepared-lists">
            <p:with-input port="stylesheet" href="xsl-compare.mod/prepare-compare-directories.xsl"/>
            <p:with-option name="parameters" select="map{'compareFlags': $compareFlags}"/>
        </p:xslt>
        <p:variable name="uncomparableCount" as="xs:integer" select="count(/*/uncomparable)"/>

        <!-- Do comparisons (if any): -->
        <p:for-each name="comparisons">
            <p:with-input select="/*/compare"/>
            <yatcs:compare-documents href1="{/*/@href1}" href2="{/*/@href2}">
                <p:with-option name="compareRules" select="$compareRules"/>
            </yatcs:compare-documents>
        </p:for-each>

        <!-- Create the correct output: -->
        <p:insert position="last-child">
            <p:with-input pipe="@prepared-lists"/>
            <p:with-input port="insertion" pipe="@comparisons"/>
        </p:insert>
        <p:delete match="compare"/>
        <p:variable name="differences-count" as="xs:integer" select="count(/*//message)"/>
        <p:add-attribute attribute-name="differences" match="/*" attribute-value="{$differences-count gt 0}"/>
        <p:if test="$differences-count gt 0">
            <p:add-attribute attribute-name="differences-count" match="/*" attribute-value="{$differences-count}"/>
        </p:if>
        <p:add-attribute attribute-name="description" match="/*" attribute-value="{$description}"/>
        <p:add-attribute attribute-name="not-compared" match="/*" attribute-value="{$uncomparableCount}"/>

        <!-- Prune if requested: -->
        <p:if test="$pruneIdenticalDocumentsOutput">
            <p:delete match="/*/compare-documents[not(xs:boolean(@differences))]"/>
        </p:if>

    </p:declare-step>

</p:library>
