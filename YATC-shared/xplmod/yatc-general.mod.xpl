<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.n2x_r3y_2wb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       Module with steps for general use in YATC pipelines.
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

    <p:option static="true" name="yatcs:standardXmlSerialization" as="map(*)" select="map{
            'method': 'xml', 
            'indent': true(),
            'omit-xml-declaration': true(),
            'standalone': ()
    }">
        <!-- Standard serialization options, to be used for any XML document that is written to disk. -->
    </p:option>

    <p:option static="true" name="yatcs:allIndicator" as="xs:string+" select="('#all', '%all')">
        <!-- Indicator string to be used for the "all" option for pruning on applications/versions or distributions.
             Remark: We specifically added %all to overcome problems on command lines in Windows Powershell. Here
             the # character acts as the start of an end-of-line-comment :(
        -->
    </p:option>

    <p:option static="true" name="yatcs:spacesPerMessageIndentLevel" as="xs:integer" select="2">
        <!-- The number of spaces output for a certain message indent level. So the total number of spaces suffixed to a message is 
             $messageIndentLevel * $yatcs:spacesPerMessageIndentLevel -->
    </p:option>

    <p:option static="true" name="yatcs:defaultMessagePrompt" as="xs:string" select="'* '">
        <!-- The string that is prefixed to all messages. -->
    </p:option>

    <p:option static="true" name="yatcs:defaultActionMarker" as="xs:string" select="'[A]'">
        <!-- Default action marker for the -list option of the YATC commands. Used to flag application/version combinations that have actions. -->
    </p:option>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    <!-- Debug settings: -->

    <p:option static="true" name="general.mod-debug" as="xs:boolean" select="false()">
        <!-- Set this to true to get some additional output/behavior for debugging purposes -->
    </p:option>

    <!-- ======================================================================= -->
    <!-- GENERAL SUPPORT STEPS: -->

    <p:declare-step type="yatcs:message" name="yatcs-message">
        <!-- Outputs a (regular) message on the console. Acts as an identity step. -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any" pipe="source@yatcs-message"/>

        <p:option name="level" as="xs:integer" required="true"/>
        <p:option name="msg" as="xs:string" required="true"/>
        <p:option name="enabled" as="xs:boolean" required="false" select="true()"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:if test="$enabled">
            <p:identity message="{string-join(for $i in (1 to ($level * $yatcs:spacesPerMessageIndentLevel)) return ' ')}{$yatcs:defaultMessagePrompt}{$msg}"/>
        </p:if>

    </p:declare-step>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <p:declare-step type="yatcs:message-empty-line" name="yatcs-message-empty-line">
        <!-- Outputs an empty line message on the console. Acts as an identity step. -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any" pipe="source@yatcs-message-empty-line"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:identity message=""/>

    </p:declare-step>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <p:declare-step type="yatcs:keep-first-document" name="keep-first-document">
        <!-- This step takes a sequence of documents and only retains the first one. It is used primarily
             to reduce input sequences in test situations. -->

        <p:input port="source" primary="true" sequence="true" content-types="any"/>
        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="enabled" as="xs:boolean" required="false" select="false()"/>
        <p:option name="msg-level" as="xs:integer" required="true"/>
        <p:option name="msg-suffix" as="xs:string" required="false" select="'TEST MODE: reducing documents to process'"/>

        <p:if test="$enabled">
            <p:variable name="count" as="xs:integer" select="count(collection())" collection="true"/>
            <p:if test="$count gt 1">
                <p:output pipe="matched@reduce-sequence"/>
                <yatcs:message level="{$msg-level}" msg="{$msg-suffix} ({$count}=&gt;1)"/>
                <p:split-sequence test="position() eq 1" initial-only="true" name="reduce-sequence"/>
            </p:if>
        </p:if>

    </p:declare-step>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <p:declare-step type="yatcs:sanitize-filenames-in-attributes">
        <!-- Sanitizes all filenames in attributes (removing the local path) -->
        
        <p:input port="source" primary="true" sequence="false" content-types="xml"/>
        <p:output port="result" primary="true" sequence="false" content-types="xml"/>
        
        <p:option name="enabled" as="xs:boolean" required="false" select="true()"/>
        
        <p:if test="$enabled">
            <p:xslt >
                <p:with-input port="stylesheet" href="../xsl/yatcs-sanitize-filenames.xsl"/>
            </p:xslt>
        </p:if>
        
    </p:declare-step>
    
    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:report-yatc-error">
        <!-- 
            Simple step for uniformly reporting a YATC error. Meant to be used in a <p:catch> like this:
            
             <p:catch code="yatcs:error" name="error-catch">
                <yatcs:report-yatc-error/>
             </p:catch>
        -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The error document that is produced in a <p:catch> -->
        </p:input>

        <p:output port="result" primary="true" sequence="true" content-types="any">
            <!-- Not used but there for convenience (a p:catch must usually have an output port). -->
        </p:output>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Get the actual message. Sometimes these messages come from inside a stylesheet. Remove the confusing suffix. -->
        <p:variable name="message" as="xs:string" select="string(/*) => replace('^Error.+?'':\s*', '')"/>
        <p:identity message="ERROR: {$message}">
            <p:with-input>
                <p:empty/>
            </p:with-input>
        </p:identity>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:empty-results">
        <!-- 
            This step acts as a stop on results. 
            - If $enabled is set to true (default), the only thing that comes out is empty. If however $enabled is set to 
              false it acts as an identity step.
            - If $enabled and $reportCount are true, it outputs a <c:result count="…"/> element, with @count the number 
              of documents on the source port.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <null/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="enabled" as="xs:boolean" required="false" select="true()">
            <!-- If set to false, the step acts as an identity step ($reportCount is ignored).  -->
        </p:option>

        <p:option name="reportCount" as="xs:boolean" required="false" select="false()">
            <!-- If true *and* $enabled, the step reports the count of documents on the input port as a
                 <c:result count=…"/> element. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:choose>
            <p:when test="$enabled and $reportCount">
                <p:variable name="count" as="xs:integer" select="count(collection())" collection="true"/>
                <p:identity>
                    <p:with-input>
                        <c:result count="{$count}"/>
                    </p:with-input>
                </p:identity>
            </p:when>
            <p:when test="$enabled">
                <p:identity>
                    <p:with-input>
                        <p:empty/>
                    </p:with-input>
                </p:identity>
            </p:when>
            <p:otherwise>
                <p:identity/>
            </p:otherwise>
        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:create-clear-directory" name="create-clear-directory">
        <!-- 
            This step does two things:
            * When $clear is true it removes an (optionally) existing directory
            * Then it makes sure the directory exists
            It doesn't matter whether the directory exists beforehand. The step itself acts as an identity step. 
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any" pipe="source@create-clear-directory"/>

        <p:option name="hrefDir" as="xs:string" required="true">
            <!-- The full path/URI of the directory to delete. -->
        </p:option>

        <p:option name="clear" as="xs:boolean" required="false" select="true()">
            <!-- Whether or not to make sure the directory is empty -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:if test="$clear" name="delete-directory">
            <p:file-delete href="{$hrefDir}" recursive="true" fail-on-error="false"/>
        </p:if>
        <p:file-mkdir href="{$hrefDir}" depends="delete-directory"/>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:safe-directory-list">
        <!-- 
            Safe version of p:directory-list. If the requested directory does not exist or is inaccessible, it returns an
            empty list instead of raising an error. The filtering is changed so it is on *filename only*!
            
            It has some extended features:
            * If you set option $prepare to true, it will make a flat list, like this:
            
               <directory-list href-source-canonical="…">
                   <file href-source="…"/>
                   …
               </directory-list>
            
            * If you (on top of that) set a path to some target directory in $hrefTarget, it will compute the 
              target path in file/@href-target. This was meant for preparing a file copy operation.
              
            All paths will be absolute and canonical.  
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- The following prolog was copied from the specs (https://spec.xproc.org/master/head/file/#c.directory-list): -->
        <p:output port="result" content-types="application/xml"/>
        <p:option name="path" required="true" as="xs:anyURI"/>
        <p:option name="detailed" as="xs:boolean" required="false" select="false()"/>
        <p:option name="max-depth" as="xs:string?" required="false" select="'1'"/>
        <p:option name="include-filter" as="xs:string*" required="false" select="()"/>
        <p:option name="exclude-filter" as="xs:string*" required="false" select="()"/>
        <p:option name="override-content-types" as="array(array(xs:string))?" required="false" select="()"/>

        <!-- Options for extensions on top of the functionality of p:directory-list: -->
        <p:option name="prepare" as="xs:boolean" required="false" select="false()"/>
        <p:option name="hrefTarget" as="xs:string?" required="false" select="()"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:try>
            <p:directory-list>
                <p:with-option name="path" select="$path"/>
                <p:with-option name="detailed" select="$detailed"/>
                <p:with-option name="max-depth" select="$max-depth"/>
                <p:with-option name="override-content-types" select="$override-content-types"/>
            </p:directory-list>
            <!-- Filter on filename only: -->
            <p:viewport match="c:file">
                <p:variable name="filename" as="xs:string" select="string(/*/@xml:base)"/>
                <p:variable name="isIncluded" as="xs:boolean" select="empty($include-filter) or (some $f in $include-filter satisfies matches($filename, $f))"/>
                <p:variable name="isExcluded" as="xs:boolean" select="some $f in $exclude-filter satisfies matches($filename, $f)"/>
                <p:choose>
                    <p:when test="$isIncluded and not($isExcluded)">
                        <p:identity/>
                    </p:when>
                    <p:otherwise>
                        <p:identity>
                            <p:with-input>
                                <p:empty/>
                            </p:with-input>
                        </p:identity>
                    </p:otherwise>
                </p:choose>
            </p:viewport>
            <p:catch>
                <p:identity>
                    <p:with-input>
                        <c:directory xml:base="{$path}" name="{(tokenize($path, '/')[.])[last()]}" error="true"/>
                    </p:with-input>
                </p:identity>
            </p:catch>
        </p:try>

        <!-- Extensions: -->
        <p:if test="$prepare">
            <p:xslt name="prepared-result">
                <p:with-input port="stylesheet" href="xsl-yatc-general.mod/prepare-directory-list.xsl"/>
                <p:with-option name="parameters" select="map{
                    'hrefSource': $path,    
                    'hrefTarget': $hrefTarget
                    }"/>
            </p:xslt>
        </p:if>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:safe-directory-list-from-patterns">
        <!-- 
            This step extends the yatcs:safe-directory-list step.
            
            It takes some element of schema type ct-copy-patterns (as defined in ../xsd/general.xsd) 
            and processes things according to the <include> and <exclude> child elements.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" content-types="application/xml"/>

        <p:option name="copyPatternsElement" as="element()" required="true">
            <!-- The element of schema type ct-copy-patterns. This defines the filters used. -->
        </p:option>

        <p:option name="path" required="true" as="xs:anyURI"/>
        <p:option name="detailed" as="xs:boolean" required="false" select="false()"/>
        <p:option name="max-depth" as="xs:string?" required="false" select="'1'"/>
        <p:option name="override-content-types" as="array(array(xs:string))?" required="false" select="()"/>
        <p:option name="prepare" as="xs:boolean" required="false" select="false()"/>
        <p:option name="hrefTarget" as="xs:string?" required="false" select="()"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="includeFilters" as="xs:string*" select="$copyPatternsElement/*:include/@pattern[normalize-space(.) ne ''] ! string()"/>
        <p:variable name="excludeFilters" as="xs:string*" select="$copyPatternsElement/*:exclude/@pattern[normalize-space(.) ne ''] ! string()"/>
        <yatcs:safe-directory-list>
            <p:with-option name="path" select="$path"/>
            <p:with-option name="include-filter" select="$includeFilters"/>
            <p:with-option name="exclude-filter" select="$excludeFilters"/>
            <p:with-option name="detailed" select="$detailed"/>
            <p:with-option name="max-depth" select="$max-depth"/>
            <p:with-option name="override-content-types" select="$override-content-types"/>
            <p:with-option name="prepare" select="$prepare"/>
            <p:with-option name="hrefTarget" select="$hrefTarget"/>
        </yatcs:safe-directory-list>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:report-count" name="report-count">
        <!-- 
            Reports a count of documents as a message:
            * If all documents on the source port are <c:result count=…"/>: Sum all the counts and report this.
            * Any other input: Report the total number of documents on the source port
            * Nothing happens (no reporting) if $enabled is false
            * The step acts as an identity step.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any" pipe="source@report-count"/>

        <p:option name="prompt" as="xs:string" required="false" select="'Count: '">
            <!-- The string to put in front of the count. -->
        </p:option>

        <p:option name="indentLevel" as="xs:integer" required="false" select="0">
            <!-- The indent level for the messages. -->
        </p:option>

        <p:option name="enabled" as="xs:boolean" required="false" select="true()">
            <!-- If true the count is reported. If false, nothing at all happens. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:if test="$enabled">
            <p:variable name="isReportedCounts" as="xs:boolean" select="every $doc in collection() satisfies exists($doc/c:result[@count])" collection="true"/>
            <p:choose>
                <p:when test="$isReportedCounts">
                    <p:variable name="count" as="xs:integer" select="sum(collection()/c:result/@count ! xs:integer(.))" collection="true"/>
                    <yatcs:message level="{$indentLevel}" msg="{$prompt} {$count}"/>
                </p:when>
                <p:otherwise>
                    <p:variable name="count" as="xs:integer" select="count(collection())" collection="true"/>
                    <yatcs:message level="{$indentLevel}" msg="{$prompt} {$count}"/>
                </p:otherwise>
            </p:choose>
        </p:if>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:filter-document-sequence-on-directory">
        <!-- 
            Filters a sequence of documents on the source port for all documents coming from a specified directory.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="hrefDirectory" as="xs:string" required="true">
            <!-- The full path/URI of the directory to filter on. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- To make sure we don't suffer from variations in how the URI is written we do some (simple) normalization. 
             Multiple slashes are turned into one, an optional final slash is removed. -->
        <p:variable name="hrefDirectoryNormalized" select="$hrefDirectory => replace('/+', '/') => replace('/$', '')"/>

        <!-- Filter the stuff coming in on the documents port on anything coming from the source directory: -->
        <p:for-each>
            <p:variable name="documentDirectory" select="replace(base-uri(/), '(.*)[/\\][^/\\]+$', '$1')"/>
            <p:variable name="documentDirectoryNormalized" select="$documentDirectory => replace('/+', '/') => replace('/$', '')"/>
            <p:if test="$documentDirectoryNormalized ne $hrefDirectoryNormalized">
                <yatcs:empty-results/>
            </p:if>
        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:fiter-document-sequence">
        <!-- 
            Filters a sequence of documents on include/exclude filters. Filtering is done on the document *name* only.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="includeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be included in the copy. -->
        </p:option>

        <p:option name="excludeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be excluded from the copy. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:for-each>
            <p:variable name="documentName" as="xs:string" select="replace(base-uri(/), '.*[/\\]([^/\\]+)$', '$1')"/>
            <p:variable name="isIncluded" as="xs:boolean" select="empty($includeFilters) or (some $f in $includeFilters satisfies matches($documentName, $f))"/>
            <p:variable name="isExcluded" as="xs:boolean" select="some $f in $excludeFilters satisfies matches($documentName, $f)"/>
            <p:choose>
                <p:when test="$isIncluded and not($isExcluded)">
                    <p:identity/>
                </p:when>
                <p:otherwise>
                    <yatcs:empty-results/>
                </p:otherwise>
            </p:choose>
        </p:for-each>

    </p:declare-step>

    <!-- ======================================================================= -->
    <!-- VALIDATION SUPPORT: -->

    <p:declare-step type="yatcs:validate-with-schematron" name="validate-with-schematron" xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
        <!-- 
            This step validates the document appearing on its primary source port using a Schematron. 
            If an assertion failed it raises an error with a somewhat sanitized error message. 
            If all is OK, it acts as an identity step.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml"/>
        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@validate-with-schematron"/>

        <p:input port="schema" primary="false" sequence="false" content-types="xml"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:validate-with-schematron assert-valid="false" name="schematron-validation">
            <p:with-input port="schema" pipe="schema@validate-with-schematron"/>
        </p:validate-with-schematron>

        <p:identity>
            <p:with-input pipe="report@schematron-validation"/>
        </p:identity>
        <p:if test="exists(//svrl:failed-assert)">
            <p:error code="yatcs:error">
                <p:with-input>
                    <p:inline content-type="text/plain" xml:space="preserve">{string-join(//svrl:failed-assert, '; ')}</p:inline>
                </p:with-input>
            </p:error>
        </p:if>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:validate-with-xml-schema" name="validate-with-xml-schema">
        <!-- 
            This step validates the document appearing on its primary source port using a W3C XML Schema. 
            If validation fails it raises an error. If all is OK, it acts as an identity step.
            
            Remark: This step is almost the same as the built-in step p:validate-with-xml-schema. However, the built-in step 
            produces a schema-enhanced version of the input document (with, for instance, missing default attributes added). This
            sometimes gives unexpected and unwanted side-effects. Therefore, this yatcs:validate-with-xml-schema step acts as a 
            true identity step and does not alter the input document in any way.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml"/>
        <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="source@validate-with-xml-schema"/>

        <p:input port="schema" primary="false" sequence="false" content-types="xml"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:validate-with-xml-schema>
            <p:with-input port="schema" pipe="schema@validate-with-xml-schema"/>
        </p:validate-with-xml-schema>

    </p:declare-step>

    <!-- ======================================================================= -->
    <!-- LOADING DOCUMENTS: -->

    <p:declare-step type="yatcs:load-document">
        <!-- 
            Generic step to load a document from an href. It provides some additional services:
            * You can pass in whether XInclude processing should take place, using the $processXIncludes option
            * You can pass in the href of a W3C XML Schema and Schematron Schema. The resulting document
              (after optional XInclude processing) will be validated against these.
            * Any existing schema references are removed. These will be no longer be valid because they usually contain a *relative* 
              reference that no longer makes sense after loading. 
            * Tries to enhance some of the hard to understand error messages issued
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="false" content-types="xml">
            <!-- The resulting document. -->
        </p:output>

        <p:option name="hrefDocument" as="xs:string" required="true">
            <!-- The href of the document to load. -->
        </p:option>

        <p:option name="hrefSchema" as="xs:string?" required="false" select="()">
            <!-- Optional href of the W3C XML Schema to validate the loaded document with. 
                 If empty, no W3C XML Schema validation will take place.  -->
        </p:option>

        <p:option name="hrefSchematron" as="xs:string?" required="false" select="()">
            <!-- Optional href of the Schematron schema to validate the loaded document with. 
                 If empty, no Schematron validation will take place.  -->
        </p:option>

        <p:option name="processXIncludes" as="xs:boolean" required="false" select="false()">
            <!-- Whether to process any <xi:include> elements in the loaded file.-->
        </p:option>

        <p:option name="addXmlBase" as="xs:boolean" required="false" select="false()">
            <!-- Whether or not to add @xml:base attribute(s) to the result (so we can see where the contents came from). 
                 When true, it is always added to the root element and, if any, to the root elements of included contents.
            -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Try to load the document: -->
        <p:try>
            <p:load href="{$hrefDocument}" content-type="text/xml"/>
            <p:catch>
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Error(s) loading document "{$hrefDocument}"</p:inline>
                    </p:with-input>
                </p:error>
            </p:catch>
        </p:try>

        <!-- Add @xml:base if requested: -->
        <p:if test="$addXmlBase">
            <p:add-attribute attribute-name="xml:base" attribute-value="{base-uri(/)}"/>
        </p:if>

        <!-- Remove schema references: -->
        <p:delete match="@xsi:*"/>
        <p:delete match="processing-instruction(xml-model)"/>

        <!-- Process XIncludes (if requested): -->
        <!-- Remark: This <p:choose> is a workaround for a (probable) bug in Morgana. It seems to loose the document in the 
             out-commented <p:if> below… The problem has been reported (20231205). -->
        <p:choose>
            <p:when test="$processXIncludes">
                <p:try>
                    <!-- Remark: The XInclude processing does not provide any useful nor informative error message. 
                         Therefore we catch it and produce one of our own... -->
                    <p:xinclude fixup-xml-base="{$addXmlBase}"/>
                    <p:catch>
                        <p:error code="yatcs:error">
                            <p:with-input>
                                <p:inline content-type="text/plain" xml:space="preserve">Error(s) processing XIncludes for document "{$hrefDocument}"</p:inline>
                            </p:with-input>
                        </p:error>
                    </p:catch>
                </p:try>
            </p:when>
            <p:otherwise>
                <p:identity/>
            </p:otherwise>
        </p:choose>
        <!--<p:if test="$processXIncludes">
            <p:try>
                <!-\- Remark: The XInclude processing does not provide any useful nor informative error message. 
                     Therefore we catch it and produce one of our own... -\->
                <p:xinclude fixup-xml-base="{$addXmlBase}"/>
                <p:catch>
                    <p:error code="yatcs:error">
                        <p:with-input>
                            <p:inline content-type="text/plain" xml:space="preserve">Error(s) processing XIncludes for document "{$hrefDocument}"</p:inline>
                        </p:with-input>
                    </p:error>
                </p:catch>
            </p:try>
        </p:if>-->

        <!-- Validate (if requested): -->
        <p:if test="normalize-space($hrefSchema) ne ''">
            <yatcs:validate-with-xml-schema>
                <p:with-input port="schema" href="{$hrefSchema}"/>
            </yatcs:validate-with-xml-schema>
        </p:if>
        <p:if test="normalize-space($hrefSchematron) ne ''">
            <yatcs:validate-with-schematron>
                <p:with-input port="schema" href="{$hrefSchematron}"/>
            </yatcs:validate-with-schematron>
        </p:if>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:load-document-from-parameter">
        <!-- 
            This step extends yatcs:load-document. It loads load a document of which the href is in a YATC parameter.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="false" content-types="xml">
            <!-- The resulting document. -->
        </p:output>

        <p:option name="parameters" as="map(*)" required="true">
            <!-- The YATC parameters in effect. -->
        </p:option>

        <p:option name="parname" as="xs:string" required="true">
            <!-- The name of the parameter that holds the href of the document to load. -->
        </p:option>

        <!-- See yatcs:load-document for the meaning of the following options: -->
        <p:option name="hrefSchema" as="xs:string?" required="false" select="()"/>
        <p:option name="hrefSchematron" as="xs:string?" required="false" select="()"/>
        <p:option name="processXIncludes" as="xs:boolean" required="false" select="false()"/>
        <p:option name="addXmlBase" as="xs:boolean" required="false" select="false()"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="hrefDocument" as="xs:string?" select="$parameters($parname)[1]"/>

        <p:choose>
            <!-- Catch a missing or empty parameter value: -->
            <p:when test="normalize-space($hrefDocument) eq ''">
                <p:error code="yatcs:error">
                    <p:with-input>
                        <p:inline content-type="text/plain" xml:space="preserve">Parameter "{$parname}" not found or empty</p:inline>
                    </p:with-input>
                </p:error>
            </p:when>
            <!-- Try to load the document: -->
            <p:otherwise>
                <yatcs:load-document>
                    <p:with-option name="hrefDocument" select="$hrefDocument"/>
                    <p:with-option name="hrefSchema" select="$hrefSchema"/>
                    <p:with-option name="hrefSchematron" select="$hrefSchematron"/>
                    <p:with-option name="processXIncludes" select="$processXIncludes"/>
                    <p:with-option name="addXmlBase" select="$addXmlBase"/>
                </yatcs:load-document>
            </p:otherwise>
        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->
    <!-- DIRECTORY/FILE COPYING: -->

    <p:declare-step type="yatcs:copy-dir" name="copy-dir">
        <!-- 
            This step copies a directory and all its contents from one location to the other. 
            * If $clearTarget is true (default), before copying the target directory is cleared/emptied. 
            * If the source directory is empty, it simply creates an empty target directory.
            * It can do include/exclude filtering on filename, using XPath regular expressions.
            * If $loadResults is true, the output is the sequence of copied documents, otherwise…
            * If $loadResults is false and $reportCount is true, the step outputs a <c:result count=…"/> element. 
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="true" content-types="any">
            <!-- Depends on $loadResults and $reportCount. See step description. -->
        </p:output>

        <p:option name="hrefSource" as="xs:string" required="true">
            <!-- The full path/URI of the source directory. This directory must exist, otherwise an error will be raised.-->
        </p:option>

        <p:option name="hrefTarget" as="xs:string" required="true">
            <!-- The full path/URI of the target directory. Any non-existing parent directories leading up to 
                 this directory will be automatically created.  -->
        </p:option>

        <p:option name="includeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be included in the copy. -->
        </p:option>

        <p:option name="excludeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be excluded from the copy. -->
        </p:option>

        <p:option name="recurse" as="xs:boolean" required="false" select="false()">
            <!-- When true copies all subdirectories also, recursive. -->
        </p:option>

        <p:option name="loadResults" as="xs:boolean" required="false" select="false()">
            <!-- Loads the results after copying and outputs these on the result port. -->
        </p:option>

        <p:option name="reportCount" as="xs:boolean" required="false" select="false()">
            <!-- If true *and* $loadResults is false, the step reports the count of documents on the input port as a
                 <c:result count="…"/> element. -->
        </p:option>

        <p:option name="clearTarget" as="xs:boolean" required="false" select="true()">
            <!-- Whether to clear the target before copying. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Get a filtered list of the files to copy and make a copy list: -->
        <yatcs:safe-directory-list prepare="true">
            <p:with-option name="max-depth" select="if ($recurse) then 'unbounded' else '1'"/>
            <p:with-option name="path" select="$hrefSource"/>
            <p:with-option name="include-filter" select="$includeFilters"/>
            <p:with-option name="exclude-filter" select="$excludeFilters"/>
            <p:with-option name="hrefTarget" select="$hrefTarget"/>
        </yatcs:safe-directory-list>

        <!-- Clear/empty the directory: -->
        <p:variable name="hrefTargetCanonical" as="xs:string" select="/*/@href-target-canonical"/>
        <yatcs:create-clear-directory hrefDir="{$hrefTargetCanonical}" clear="{$clearTarget}"/>

        <!-- Check what we have to do: -->
        <p:variable name="copyCount" as="xs:integer" select="count(/*/file)"/>
        <p:choose name="copy-action">
            <p:when test="$copyCount ne 0">
                <!-- File by file copy: -->
                <p:for-each>
                    <p:with-input select="/*/file"/>
                    <p:file-copy href="{/*/@href-source}" target="{/*/@href-target}"/>
                </p:for-each>
            </p:when>
            <p:otherwise>
                <!-- Only create the target directory: -->
                <p:file-mkdir href="{$hrefTargetCanonical}"/>
            </p:otherwise>
        </p:choose>

        <!-- Check if we have to load the results: -->
        <p:choose name="loaded-results">
            <p:with-input>
                <p:empty/>
            </p:with-input>
            <p:when test="$loadResults">
                <yatcs:load-documents-from-disk>
                    <p:with-option name="hrefSource" select="$hrefTargetCanonical"/>
                    <p:with-option name="recurse" select="$recurse"/>
                </yatcs:load-documents-from-disk>
            </p:when>
            <p:when test="$reportCount">
                <p:identity>
                    <p:with-input>
                        <c:result count="{$copyCount}"/>
                    </p:with-input>
                </p:identity>
            </p:when>
            <p:otherwise>
                <yatcs:empty-results/>
            </p:otherwise>
        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:copy-dir-from-patterns" name="copy-dir-from-patterns">
        <!-- 
            This step extends the yatcs:copy-dir step.
            
            It takes some element of schema type ct-copy-patterns (as defined in ../xsd/general.xsd) and copies 
            things accordingly. For instance, copy all XML files, except those with "example" in their name:
        
             <copy-data>
                <include pattern="\.xml$"/>
                <exclude pattern="example"/>
             </copy-data>
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="copyPatternsElement" as="element()" required="true">
            <!-- The element of schema type ct-copy-patterns. This defines the filters used. -->
        </p:option>

        <p:option name="hrefSource" as="xs:string" required="true"/>
        <p:option name="hrefTarget" as="xs:string" required="true"/>
        <p:option name="recurse" as="xs:boolean" required="false" select="false()"/>
        <p:option name="loadResults" as="xs:boolean" required="false" select="false()"/>
        <p:option name="reportCount" as="xs:boolean" required="false" select="false()"/>
        <p:option name="clearTarget" as="xs:boolean" required="false" select="true()"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="includeFilters" as="xs:string*" select="$copyPatternsElement/*:include/@pattern[normalize-space(.) ne ''] ! string()"/>
        <p:variable name="excludeFilters" as="xs:string*" select="$copyPatternsElement/*:exclude/@pattern[normalize-space(.) ne ''] ! string()"/>
        <yatcs:copy-dir>
            <p:with-option name="hrefSource" select="$hrefSource"/>
            <p:with-option name="hrefTarget" select="$hrefTarget"/>
            <p:with-option name="includeFilters" select="$includeFilters"/>
            <p:with-option name="excludeFilters" select="$excludeFilters"/>
            <p:with-option name="recurse" select="$recurse"/>
            <p:with-option name="loadResults" select="$loadResults"/>
            <p:with-option name="reportCount" select="$reportCount"/>
            <p:with-option name="clearTarget" select="$clearTarget"/>
        </yatcs:copy-dir>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:document-sequence-to-dir" name="document-sequence-to-dir">
        <!-- 
            This step copies a sequence of (XML) source documents from a sequence on the source port to disk.
            * If $clearTarget is true (default), before copying the target directory is cleared/emptied. 
            * If there are no source documents, it simply creates an empty target directory.
            * The filename part of the base-uri is used and suffixed with the provided $hrefTarget. 
            * It can do include/exclude filtering on filename, using XPath regular expressions.
            * If $loadResults is true, the output is the sequence of copied documents, otherwise…
            * If $loadResults is false and $reportCount is true, the step outputs a <c:result count=…"/> element. 
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="xml">
            <!-- A sequence of XML documents, to be filtered and written to disk. -->
            <p:empty/>
        </p:input>

        <p:output port="result" primary="true" sequence="true" content-types="xml">
            <!-- Depends on $loadResults and $reportCount. See step description. -->
        </p:output>

        <p:option name="hrefTarget" as="xs:string" required="true">
            <!-- The full path/URI of the target directory. Any non-existing parent directories leading up to 
                 this directory will be automatically created.  -->
        </p:option>

        <p:option name="includeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be included in the copy. -->
        </p:option>

        <p:option name="excludeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be excluded from the copy. -->
        </p:option>

        <p:option name="loadResults" as="xs:boolean" required="false" select="true()">
            <!-- Outputs the copied documents on the result port with their base-uri set to the target location. -->
        </p:option>

        <p:option name="reportCount" as="xs:boolean" required="false" select="false()">
            <!-- If true *and* $loadResults is false, the step reports the count of documents on the input port as a
                 <c:result count=…"/> element. -->
        </p:option>

        <p:option name="clearTarget" as="xs:boolean" required="false" select="true()">
            <!-- Whether to clear the target before copying. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Empty the target: -->
        <yatcs:create-clear-directory hrefDir="{$hrefTarget}" clear="{$clearTarget}"/>

        <!-- Filter and copy: -->
        <yatcs:fiter-document-sequence>
            <p:with-option name="includeFilters" select="$includeFilters"/>
            <p:with-option name="excludeFilters" select="$excludeFilters"/>
        </yatcs:fiter-document-sequence>
        <p:for-each>
            <!-- Set the document's base-uri and write it:  -->
            <p:variable name="documentName" as="xs:string" select="replace(base-uri(/), '.*[/\\]([^/\\]+)$', '$1')"/>
            <p:variable name="documentTargetBaseUri" as="xs:string" select="string-join(($hrefTarget, $documentName), '/')"/>
            <p:set-properties properties="map{'base-uri': $documentTargetBaseUri}"/>
            <p:store href="{$documentTargetBaseUri}" serialization="$yatcs:standardXmlSerialization"/>
        </p:for-each>

        <!-- See what we have to output: -->
        <yatcs:empty-results enabled="{not($loadResults)}" reportCount="{$reportCount}"/>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:document-sequence-to-dir-from-patterns" name="document-sequence-to-dir-from-patterns">
        <!-- 
            This step extends yatcs:document-sequence-to-dir. 
            
            It filters based on an element of schema type ct-copy-patterns (as defined in ../xsd/general.xsd) and copies things 
            accordingly. See yatcs:copy-dir-from-patterns for an example.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="xml">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="xml"/>

        <p:option name="copyPatternsElement" as="element()" required="true">
            <!-- The element of schema type ct-copy-patterns. This defines the filters used. -->
        </p:option>

        <p:option name="hrefTarget" as="xs:string" required="true"/>
        <p:option name="loadResults" as="xs:boolean" required="false" select="false()"/>
        <p:option name="reportCount" as="xs:boolean" required="false" select="false()"/>
        <p:option name="clearTarget" as="xs:boolean" required="false" select="true()"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->


        <p:variable name="includeFilters" as="xs:string*" select="$copyPatternsElement/*:include/@pattern[normalize-space(.) ne ''] ! string()"/>
        <p:variable name="excludeFilters" as="xs:string*" select="$copyPatternsElement/*:exclude/@pattern[normalize-space(.) ne ''] ! string()"/>
        <yatcs:document-sequence-to-dir>
            <p:with-option name="hrefTarget" select="$hrefTarget"/>
            <p:with-option name="includeFilters" select="$includeFilters"/>
            <p:with-option name="excludeFilters" select="$excludeFilters"/>
            <p:with-option name="loadResults" select="$loadResults"/>
            <p:with-option name="reportCount" select="$reportCount"/>
            <p:with-option name="clearTarget" select="$clearTarget"/>
        </yatcs:document-sequence-to-dir>


    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:load-documents-from-disk" name="load-documents-from-disk">
        <!-- 
            This steps loads a bunch of documents from disk, all residing in a single directory. However, if you have these 
            documents already loaded and present them on the source port, nothing will be done (except filtering)
            * If the source port contains any documents coming from the source directory, it is assumed that we can safely use 
              this sequence of documents as the complete source. No documents are read from disk.
            * It can do include/exclude filtering on filename, using XPath regular expressions.
            * Out comes the sequence of documents that are loaded from disk or filtered from the source port (if any), 
              with their base-uri set to the source location.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <!-- Optional sequence of already loaded documents. -->
            <p:empty/>
        </p:input>

        <p:output port="result" primary="true" sequence="true" content-types="any">
            <!-- The sequence of loaded documents. -->
        </p:output>

        <p:option name="hrefSource" as="xs:string" required="true">
            <!-- The full path/URI of the source directory. -->
        </p:option>

        <p:option name="recurse" as="xs:boolean" required="false" select="false()">
            <!-- When true loads all subdirectories also, recursive. -->
        </p:option>

        <p:option name="includeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be included in the load. -->
        </p:option>

        <p:option name="excludeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be excluded from the load. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <yatcs:filter-document-sequence-on-directory>
            <p:with-option name="hrefDirectory" select="$hrefSource"/>
        </yatcs:filter-document-sequence-on-directory>
        <p:variable name="countAfterFiltering" as="xs:integer" select="count(collection())" collection="true"/>

        <!-- See what we have to do. This depends on whether any document from the designated source directory 
             was present on the source port: -->
        <p:choose>
            <p:when test="$countAfterFiltering eq 0">
                <!-- No documents survived the filtering. This means we have load the stuff from disk. -->
                <p:identity message="*** LOAD-FROM-DISK {$hrefSource}" use-when="$general.mod-debug"/>
                <yatcs:safe-directory-list prepare="true">
                    <p:with-option name="max-depth" select="if ($recurse) then 'unbounded' else '1'"/>
                    <p:with-option name="path" select="$hrefSource"/>
                    <p:with-option name="include-filter" select="$includeFilters"/>
                    <p:with-option name="exclude-filter" select="$excludeFilters"/>
                </yatcs:safe-directory-list>
                <p:for-each>
                    <p:with-input select="/*/file"/>
                    <p:load href="{/*/@href-source}"/>
                </p:for-each>
            </p:when>
            <p:otherwise>
                <!-- Yes! There were documents that survived filtering. We assume now that all documents that need to be copied
                     are present. -->
                <p:identity message="*** LOAD-IN-MEMORY {$hrefSource}" use-when="$general.mod-debug"/>
                <yatcs:fiter-document-sequence>
                    <p:with-option name="includeFilters" select="$includeFilters"/>
                    <p:with-option name="excludeFilters" select="$excludeFilters"/>
                </yatcs:fiter-document-sequence>
            </p:otherwise>
        </p:choose>

        <p:group use-when="$general.mod-debug">
            <p:variable name="count" as="xs:integer" select="count(collection())" collection="true"/>
            <p:identity message="    *** LOAD-DOCUMENT-COUNT {$hrefSource}: {$count}"/>
        </p:group>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:load-documents-from-disk-from-patterns">
        <!-- 
            This step extends yatcs:load-documents-from-disk.
             
            It filters based on an element of schema type ct-copy-patterns (as defined in ../xsd/general.xsd) and loads 
            things accordingly. See step yatcs:copy-dir-from-patterns for an example.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="copyPatternsElement" as="element()" required="true">
            <!-- The element of schema type ct-copy-patterns. This defines the filters used. -->
        </p:option>

        <p:option name="hrefSource" as="xs:string" required="true"/>
        <p:option name="recurse" as="xs:boolean" required="false" select="false()"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="includeFilters" as="xs:string*" select="$copyPatternsElement/*:include/@pattern[normalize-space(.) ne ''] ! string()"/>
        <p:variable name="excludeFilters" as="xs:string*" select="$copyPatternsElement/*:exclude/@pattern[normalize-space(.) ne ''] ! string()"/>
        <yatcs:load-documents-from-disk>
            <p:with-option name="hrefSource" select="$hrefSource"/>
            <p:with-option name="includeFilters" select="$includeFilters"/>
            <p:with-option name="excludeFilters" select="$excludeFilters"/>
            <p:with-option name="recurse" select="$recurse"/>
        </yatcs:load-documents-from-disk>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:copy-documents" name="copy-documents">
        <!-- 
            This step copies documents from one directory to the other, but takes already loaded documents into account.
            * If the source port contains any documents coming from the source directory, it is assumed that we can safely use 
              this sequence of documents as the complete source. No documents are read from disk.
            * If there are no documents from the source directory on the source port, a disk-to-disk copy is done.
            * If $loadResults is true, the output is the sequence of copied documents, otherwise…
            * If $loadResults is false and $reportCount is true, the step outputs a <c:result count=…"/> element. 
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <!-- A check is done whether any (at least one) document on this port comes from the directory $hrefSource. 
                 If so, the step assumes it can safely use this stream of documents and does not attempt to load 
                 anything from disk. -->
        </p:input>

        <p:output port="result" primary="true" sequence="true" content-types="any">
            <!-- Depends on $loadResults and $reportCount. See step description. -->
        </p:output>

        <p:option name="hrefSource" as="xs:string" required="true">
            <!-- The full canonical path/URI of the source directory. -->
        </p:option>

        <p:option name="hrefTarget" as="xs:string" required="true">
            <!-- The full canonical path/URI of the target directory. -->
        </p:option>

        <p:option name="includeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be included in the load. -->
        </p:option>

        <p:option name="excludeFilters" as="xs:string*" required="false" select="()">
            <!-- Regular expression(s) for the filenames to be excluded from the load. -->
        </p:option>

        <p:option name="loadResults" as="xs:boolean" required="false" select="false()">
            <!-- Set to true to get all the copied documents on the result port. -->
        </p:option>

        <p:option name="reportCount" as="xs:boolean" required="false" select="false()">
            <!-- If true *and* $loadResults is false, the step reports the count of documents processed as a
                 <c:result count=…"/> element. -->
        </p:option>

        <p:option name="clearTarget" as="xs:boolean" required="false" select="true()">
            <!-- Whether to clear the target before copying. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <yatcs:filter-document-sequence-on-directory>
            <p:with-option name="hrefDirectory" select="$hrefSource"/>
        </yatcs:filter-document-sequence-on-directory>
        <p:variable name="countAfterFiltering" as="xs:integer" select="count(collection())" collection="true"/>

        <!-- See what we have to do. This depends on whether any document from the designated source directory 
             was present on the source port: -->
        <p:choose>
            <p:when test="$countAfterFiltering eq 0">
                <!-- No documents survived the filtering. This means we have to copy the documents from disk-to-disk. -->
                <p:identity message="*** COPY-DISK-TO-DISK {$hrefSource}" use-when="$general.mod-debug"/>
                <yatcs:copy-dir>
                    <p:with-option name="hrefSource" select="$hrefSource"/>
                    <p:with-option name="hrefTarget" select="$hrefTarget"/>
                    <p:with-option name="includeFilters" select="$includeFilters"/>
                    <p:with-option name="excludeFilters" select="$excludeFilters"/>
                    <p:with-option name="loadResults" select="$loadResults"/>
                    <p:with-option name="reportCount" select="$reportCount"/>
                    <p:with-option name="clearTarget" select="$clearTarget"/>
                </yatcs:copy-dir>
            </p:when>
            <p:otherwise>
                <!-- Yes! There were documents that survived filtering. We assume now that all documents that need to be copied
                     are present. -->
                <p:identity message="*** COPY-FROM-IN-MEMORY {$hrefSource}" use-when="$general.mod-debug"/>
                <yatcs:document-sequence-to-dir>
                    <p:with-option name="hrefTarget" select="$hrefTarget"/>
                    <p:with-option name="includeFilters" select="$includeFilters"/>
                    <p:with-option name="excludeFilters" select="$excludeFilters"/>
                    <p:with-option name="loadResults" select="$loadResults"/>
                    <p:with-option name="reportCount" select="$reportCount"/>
                    <p:with-option name="clearTarget" select="$clearTarget"/>
                </yatcs:document-sequence-to-dir>
            </p:otherwise>
        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:copy-documents-from-patterns" name="copy-documents-from-patterns">
        <!-- 
            This step extends yatcs:copy-documents.
            
            It filters based on an element of schema type ct-copy-patterns (as defined in ../xsd/general.xsd) and loads 
            things accordingly. See step yatcs:copy-dir-from-patterns for an example.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any"/>
        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <p:option name="copyPatternsElement" as="element()" required="true">
            <!-- The element of schema type ct-copy-patterns. This defines the filters used. -->
        </p:option>

        <p:option name="hrefSource" as="xs:string" required="true"/>
        <p:option name="hrefTarget" as="xs:string" required="true"/>
        <p:option name="loadResults" as="xs:boolean" required="false" select="false()"/>
        <p:option name="reportCount" as="xs:boolean" required="false" select="false()"/>
        <p:option name="clearTarget" as="xs:boolean" required="false" select="true()"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="includeFilters" as="xs:string*" select="$copyPatternsElement/*:include/@pattern[normalize-space(.) ne ''] ! string()"/>
        <p:variable name="excludeFilters" as="xs:string*" select="$copyPatternsElement/*:exclude/@pattern[normalize-space(.) ne ''] ! string()"/>
        <yatcs:copy-documents>
            <p:with-option name="hrefSource" select="$hrefSource"/>
            <p:with-option name="hrefTarget" select="$hrefTarget"/>
            <p:with-option name="includeFilters" select="$includeFilters"/>
            <p:with-option name="excludeFilters" select="$excludeFilters"/>
            <p:with-option name="loadResults" select="$loadResults"/>
            <p:with-option name="reportCount" select="$reportCount"/>
            <p:with-option name="clearTarget" select="$clearTarget"/>
        </yatcs:copy-documents>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:deduplicate-document-sequence">
        <!-- Makes sure that in a document sequence each base-uri only appears once. -->

        <p:input port="source" primary="true" sequence="true" content-types="any"/>
        <p:output port="result" primary="true" sequence="true" content-types="any"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Normalize all base-uri-s a bit to make sure we compare the correct things: -->
        <p:for-each>
            <p:variable name="normalizedBaseUri" select="base-uri(/) => replace('/+', '/')"/>
            <p:set-properties properties="map{'base-uri': $normalizedBaseUri}"/>
        </p:for-each>

        <!-- We are going to compare the count of distinct values of the base-uri-s with the number of documents. If this is
             the same we have nothing to do (which is good because faster). -->
        <p:variable name="documents" as="document-node()*" select="collection()" collection="true"/>
        <p:variable name="documentCount" as="xs:integer" select="count($documents)"/>
        <p:variable name="baseUrisUnique" as="xs:string*" select="(for $d in $documents return base-uri($d)) => distinct-values()"/>

        <!-- Check what we have to do: -->
        <p:choose>
            <p:when test="$documentCount eq count($baseUrisUnique)">
                <!-- All unique, nothing to do: -->
                <p:identity/>
            </p:when>
            <p:otherwise>
                <!-- Deduplicate: -->
                <p:for-each>
                    <p:with-input select="$baseUrisUnique">
                        <null/>
                    </p:with-input>
                    <p:variable name="baseUri" as="xs:string" select="."/>
                    <p:identity>
                        <p:with-input select="$documents[base-uri() eq $baseUri][1]"/>
                    </p:identity>
                </p:for-each>
            </p:otherwise>
        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->
    <!-- ZIPPING: -->

    <p:declare-step type="yatcs:zip-directory" name="zip-directory">

        <!-- Zips a directory into a single zip file. Acts as an identity step. -->

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any"/>
        <p:output port="result" primary="true" sequence="true" content-types="any" pipe="source@zip-directory"/>

        <p:option name="basePath" as="xs:string" required="true">
            <!-- URI of the directory which contents will be stored in the zip. -->
        </p:option>

        <p:option name="hrefTargetZip" as="xs:string" required="true">
            <!-- URI for the zip file to produce. -->
        </p:option>

        <p:option name="includeFilter" as="xs:string*" required="false">
            <!-- Optional regular expression include filters. -->
        </p:option>

        <p:option name="excludeFilter" as="xs:string*" required="false" select="'\.git/'">
            <!-- Optional regular expression exclude filters. By default, git directories are excluded. -->
        </p:option>

        <p:option name="depth" as="xs:integer" required="false" select="-1">
            <!-- The sub-directory depth to go. When lt 0, all sub-directories are processed. -->
        </p:option>

        <p:option name="includeBase" as="xs:boolean" required="false" select="true()">
            <!-- When true, the last part of $basePath (for instance a/b/c ==> c) is used as root directory for entries in the zip file. -->
        </p:option>

        <!-- ================================================================== -->

        <p:directory-list detailed="false">
            <p:with-option name="path" select="$basePath"/>
            <p:with-option name="max-depth" select="if ($depth lt 0) then 'unbounded' else $depth"/>
            <p:with-option name="include-filter" select="$includeFilter"/>
            <p:with-option name="exclude-filter" select="$excludeFilter"/>
        </p:directory-list>

        <p:xslt>
            <p:with-input port="stylesheet" href="xsl-yatc-general.mod/zip-directory-create-manifest.xsl"/>
            <p:with-option name="parameters" select="map{'includeBase': $includeBase}"/>
        </p:xslt>

        <p:archive name="step-create-archive">
            <p:with-input port="source">
                <p:empty/>
            </p:with-input>
            <p:with-input port="manifest" pipe="result"/>
        </p:archive>

        <p:store href="{$hrefTargetZip}"/>

    </p:declare-step>

</p:library>
