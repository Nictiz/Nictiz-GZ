<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:local="#local.zrl_tfw_k1c" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
        This module was created to overcome some serious performance problems using complicated
        XSLTs and/or Schematrons that were loaded over and over again when transforming/validating 
        a series of documents.
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

    <p:import href="yatc-general.mod.xpl"/>

    <p:option static="true" name="removeCompiledSchematrons" select="true()">
        <!-- Whether to remove any compiled Schematron files (Schematrons are compiled into XSLT before execution). Turn off for debugging. -->
    </p:option>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:mass-xslt" name="mass-xslt">
        <!-- Performs XSLT processing over the document sequence on the source port. -->

        <p:input port="source" primary="true" sequence="true" content-types="xml">
            <!-- The sequence of documents to transform. -->
        </p:input>

        <p:output port="result" primary="true" sequence="true" content-types="xml">
            <!-- The resulting documents, transformed. The base-uri of each document will be set to $hrefTargetDir, 
                 followed by the original filename -->
        </p:output>

        <p:output port="secondary" primary="false" sequence="true" content-types="xml" pipe="secondary@do-transformation">
            <!-- All the secondary documents created by the transformation. -->
        </p:output>

        <p:option name="hrefStylesheet" as="xs:string" required="true">
            <!-- The URI of the stylesheet to do the actual transformation with. 
                 Remark: We do this by option and not as a port because we need the URI to create a wrapper stylesheet. -->
        </p:option>

        <p:option name="hrefTargetDir" as="xs:string?" required="true">
            <!-- The URI of the base directory for the output documents. When $hrefTargetDir is (), the base URI of the input document is used. -->
        </p:option>

        <p:option name="parameters" as="map(xs:QName, item()*)?" required="false" select="()">
            <!-- The parameters to pass to the stylesheet. -->
        </p:option>

        <p:option name="enableFast" as="xs:boolean" required="false" select="true()">
            <!-- When true(), fast processing is enabled. Otherwise, the documents will be transformed the classic way, one by one. -->
        </p:option>

        <p:option name="catchErrors" as="xs:boolean" required="false" select="false()">
            <!-- When true, any dynamic XSLT error is caught and returned as element: 
                 <_error code="…" href-source="…" href-stylesheet="…">…description…</_error>  
            -->
        </p:option>

        <p:option name="messageIndentLevel" as="xs:integer" required="false" select="-1">
            <!-- The base indent level for the output of messages. Lowest value: 0 (means against the left margin). 
                 If you don't want messaging, use a negative value. -->
        </p:option>

        <p:option name="transformationPrompt" as="xs:string" required="false" select="'Transforming'">
            <!-- The prompt used in messages. You can change this in, for instance, 'Validating'. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:declare-step type="local:perform-single-transformation" name="perform-single-transformation">
            <!-- Performs a single transformation, taking care of all that annoying error handling. -->

            <p:input port="source" primary="true" sequence="false" content-types="xml"/>
            <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="result@do-single-transformation"/>
            <p:output port="secondary" primary="false" sequence="true" content-types="xml" pipe="secondary@do-single-transformation"/>

            <p:option name="hrefStylesheet" as="xs:string" required="true"/>
            <p:option name="hrefSource" as="xs:string" required="true"/>
            <p:option name="parameters" as="map(xs:QName, item()*)?" required="true"/>
            <p:option name="catchErrors" as="xs:boolean" required="true"/>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

            <p:choose name="do-single-transformation">
                <p:when test="$catchErrors">
                    <p:output port="result" primary="true"/>
                    <p:output port="secondary" primary="false" sequence="true" pipe="secondary@try-single-transformation-catch"/>
                    <!-- Perform the transformation in a <p:try> and catch the error(s): -->
                    <p:try name="try-single-transformation-catch">
                        <p:output port="result" primary="true"/>
                        <p:output port="secondary" primary="false" sequence="true" pipe="secondary@do-single-transformation-catch"/>
                        <p:xslt name="do-single-transformation-catch">
                            <p:with-input pipe="source@perform-single-transformation"/>
                            <p:with-input port="stylesheet" href="{$hrefStylesheet}"/>
                            <p:with-option name="parameters" select="$parameters"/>
                        </p:xslt>
                        <p:catch name="single-xslt-error-catch">
                            <p:output port="result" primary="true"/>
                            <!-- Turn the error into the appropriate <_error> element: -->
                            <p:for-each>
                                <!-- Remark: The error document available in an XProc try/catch can have *multiple* <c:error> entries. 
                                         Just take the first one… (https://spec.xproc.org/master/head/xproc/#err-vocab) -->
                                <p:with-input select="/*/c:error[1]" pipe="error@single-xslt-error-catch"/>
                                <p:identity>
                                    <p:with-input>
                                        <_error code="{/*/@code}" href-source="{$hrefSource}" href-stylesheet="{$hrefStylesheet}">{string(.)}</_error>
                                    </p:with-input>
                                </p:identity>
                            </p:for-each>
                        </p:catch>
                    </p:try>
                </p:when>
                <p:otherwise>
                    <p:output port="result" primary="true"/>
                    <p:output port="secondary" primary="false" sequence="true" pipe="secondary@do-single-transformation-no-catch"/>
                    <!-- Perform the transformation and let any error just fly… -->
                    <p:xslt name="do-single-transformation-no-catch">
                        <p:with-input pipe="source@perform-single-transformation"/>
                        <p:with-input port="stylesheet" href="{$hrefStylesheet}"/>
                        <p:with-option name="parameters" select="$parameters"/>
                    </p:xslt>
                </p:otherwise>
            </p:choose>

        </p:declare-step>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="docCount" as="xs:integer" select="count(collection())" collection="true"/>
        <p:variable name="doMessages" as="xs:boolean" select="$messageIndentLevel ge 0"/>

        <p:choose name="do-transformation">

            <p:when test="$docCount le 0">
                <p:output port="result" primary="true" sequence="true">
                    <p:empty/>
                </p:output>
                <p:output primary="false" port="secondary" sequence="true">
                    <p:empty/>
                </p:output>
                <p:identity>
                    <p:with-input>
                        <p:empty/>
                    </p:with-input>
                </p:identity>
            </p:when>

            <!-- Optimized fast version for a single document: -->
            <p:when test="$enableFast and ($docCount eq 1)">
                <p:output port="result" primary="true" sequence="true"/>
                <p:output port="secondary" primary="false" sequence="true" pipe="secondary@do-single-transformation"/>

                <p:variable name="hrefSource" as="xs:string" select="base-uri(/)"/>
                <p:variable name="filename" as="xs:string" select="tokenize($hrefSource, '/')[.][last()]"/>

                <yatcs:message enabled="{$doMessages}" level="{$messageIndentLevel}" msg="(1/1) {$transformationPrompt} {$filename}"/>

                <local:perform-single-transformation name="do-single-transformation">
                    <p:with-option name="hrefStylesheet" select="$hrefStylesheet"/>
                    <p:with-option name="hrefSource" select="$hrefSource"/>
                    <p:with-option name="parameters" select="$parameters"/>
                    <p:with-option name="catchErrors" select="$catchErrors"/>
                </local:perform-single-transformation>

                <p:variable name="hrefTarget" select="if (exists($hrefTargetDir)) then string-join(($hrefTargetDir, $filename), '/') else $hrefSource"/>
                <p:set-properties properties="map{'base-uri': $hrefTarget}"/>
            </p:when>

            <!-- Fast transform multiple documents: -->
            <p:when test="$enableFast">
                <p:output port="result" primary="true" sequence="true"/>
                <p:output primary="false" port="secondary" sequence="true" pipe="secondary@wrapped-transform"/>

                <!-- Create an overarching wrapper XSLT. What this looks like depends on whether we have to catch errors: -->
                <p:variable name="startTemplateName" as="xs:string" select="'_wrapper-template'"/>
                <p:variable name="hrefTargetAttributeName" as="xs:string" select="'_href-target'"/>
                <p:variable name="messageIndent" as="xs:string" select="if ($doMessages) then string-join(for $i in (1 to ($messageIndentLevel * $yatcs:spacesPerMessageIndentLevel)) return ' ') else ''"/>
                <p:choose name="stylesheet">
                    <p:when test="$catchErrors">
                        <p:identity>
                            <p:with-input>
                                <xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="#all" expand-text="false">
                                    <xsl:include href="{$hrefStylesheet}"/>
                                    <xsl:template name="{$startTemplateName}">
                                        <xsl:for-each select="collection()">
                                            <xsl:variable name="hrefSource" as="xs:string" select="base-uri(/)"/>
                                            <xsl:variable name="sourceName" as="xs:string" select="tokenize($hrefSource, '/')[.][last()]"/>
                                            <xsl:variable name="doc" as="document-node()">
                                                <xsl:document>
                                                    <xsl:try>
                                                        <xsl:if test="{$doMessages}()">
                                                            <xsl:message>{$messageIndent}* (<xsl:value-of select="position()"/>/<xsl:value-of select="last()"/>) {$transformationPrompt} <xsl:value-of select="$sourceName"/></xsl:message>
                                                        </xsl:if>
                                                        <xsl:apply-templates select="."/>
                                                        <xsl:catch>
                                                            <_error>
                                                                <xsl:attribute name="code" select="$err:code"/>
                                                                <xsl:attribute name="href-source" select="$hrefSource"/>
                                                                <xsl:attribute name="href-stylesheet" select="'{$hrefStylesheet}'"/>
                                                                <xsl:attribute name="{$hrefTargetAttributeName}" select="$hrefSource"/>
                                                                <xsl:value-of select="$err:description"/>
                                                            </_error>
                                                        </xsl:catch>
                                                    </xsl:try>
                                                </xsl:document>
                                            </xsl:variable>
                                            <xsl:for-each select="$doc/*">
                                                <xsl:document>
                                                    <xsl:copy>
                                                        <xsl:sequence select="@*"/>
                                                        <xsl:attribute name="{$hrefTargetAttributeName}" select="$hrefSource"/>
                                                        <xsl:sequence select="node()"/>
                                                    </xsl:copy>
                                                </xsl:document>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:template>
                                </xsl:stylesheet>
                            </p:with-input>
                        </p:identity>
                    </p:when>
                    <p:otherwise>
                        <p:identity>
                            <p:with-input>
                                <xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" exclude-result-prefixes="#all" expand-text="false">
                                    <xsl:include href="{$hrefStylesheet}"/>
                                    <xsl:template name="{$startTemplateName}">
                                        <xsl:for-each select="collection()">
                                            <xsl:variable name="hrefSource" as="xs:string" select="base-uri(/)"/>
                                            <xsl:variable name="sourceName" as="xs:string" select="tokenize($hrefSource, '/')[.][last()]"/>
                                            <xsl:variable name="doc" as="document-node()">
                                                <xsl:document>
                                                    <xsl:if test="{$doMessages}()">
                                                        <xsl:message>{$messageIndent}* (<xsl:value-of select="position()"/>/<xsl:value-of select="last()"/>) {$transformationPrompt} <xsl:value-of select="$sourceName"/></xsl:message>
                                                    </xsl:if>
                                                    <xsl:apply-templates select="."/>
                                                </xsl:document>
                                            </xsl:variable>
                                            <xsl:for-each select="$doc/*">
                                                <xsl:document>
                                                    <xsl:copy>
                                                        <xsl:sequence select="@*"/>
                                                        <xsl:attribute name="{$hrefTargetAttributeName}" select="$hrefSource"/>
                                                        <xsl:sequence select="node()"/>
                                                    </xsl:copy>
                                                </xsl:document>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </xsl:template>
                                </xsl:stylesheet>
                            </p:with-input>
                        </p:identity>
                    </p:otherwise>
                </p:choose>

                <!-- Now go and do the transformations: -->
                <p:xslt populate-default-collection="true" name="wrapped-transform">
                    <p:with-input pipe="source@mass-xslt"/>
                    <p:with-input port="stylesheet" pipe="@stylesheet"/>
                    <p:with-option name="template-name" select="$startTemplateName"/>
                    <p:with-option name="parameters" select="$parameters"/>
                </p:xslt>

                <!-- The output here is a *single* document with *multiple* root elements. 
                     The stylesheet above adds a special attribute with name $hrefTargetAttributeName, containing the input's base URI. We're using this 
                     to create the base URI for the result and then remove it again. -->
                <p:for-each>
                    <p:with-input select="/*"/>

                    <p:variable name="hrefSource" as="xs:string" select="/*/@*[local-name(.) eq $hrefTargetAttributeName]"/>
                    <p:variable name="filename" as="xs:string" select="tokenize($hrefSource, '/')[last()]"/>
                    <p:variable name="hrefTarget" select="if (exists($hrefTargetDir)) then string-join(($hrefTargetDir, $filename), '/') else $hrefSource"/>
                    <p:set-properties properties="map{'base-uri': $hrefTarget}"/>
                    <p:delete match="/*/@{$hrefTargetAttributeName}"/>
                </p:for-each>
            </p:when>

            <!-- Classic transform: -->
            <p:otherwise>
                <p:output port="result" primary="true" sequence="true"/>
                <p:output primary="false" port="secondary" sequence="true" pipe="secondary@do-classic-transformations"/>

                <p:for-each name="do-classic-transformations">
                    <p:output port="result" primary="true" sequence="true"/>
                    <p:output primary="false" port="secondary" sequence="true" pipe="secondary@classic-transform"/>

                    <p:variable name="hrefSource" as="xs:string" select="base-uri(/)"/>
                    <p:variable name="filename" as="xs:string" select="tokenize($hrefSource, '/')[last()]"/>

                    <yatcs:message enabled="{$doMessages}" level="{$messageIndentLevel}" msg="({p:iteration-position()}/{$docCount}) {$transformationPrompt} {$filename}"/>

                    <local:perform-single-transformation name="classic-transform">
                        <p:with-option name="hrefStylesheet" select="$hrefStylesheet"/>
                        <p:with-option name="hrefSource" select="$hrefSource"/>
                        <p:with-option name="parameters" select="$parameters"/>
                        <p:with-option name="catchErrors" select="$catchErrors"/>
                    </local:perform-single-transformation>

                    <p:variable name="hrefTarget" select="if (exists($hrefTargetDir)) then string-join(($hrefTargetDir, $filename), '/') else $hrefSource"/>
                    <p:set-properties properties="map{'base-uri': $hrefTarget}"/>
                </p:for-each>
            </p:otherwise>

        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:fast-validate-with-schematron" name="fast-validate-with-schematron">
        <!-- Validates the documents on the source port with a Schematron schema, and tries to do this fast... -->

        <p:input port="source" primary="true" sequence="true" content-types="xml html">
            <!-- The sequence of documents to validate. -->
        </p:input>

        <p:output port="result" primary="true" sequence="true" content-types="xml">
            <!-- The SVRL reports produced by the validation. The base URIs of these reports will be identical to the base URIs of the input documents. -->
        </p:output>

        <p:option name="catchErrors" as="xs:boolean" required="false" select="false()">
            <!-- When true, any dynamic validation is caught and returned as an appropriate piece of SVRL -->
        </p:option>

        <p:option name="hrefSchema" as="xs:string" required="true">
            <!-- The *absolute* URI of the Schematron schema. -->
        </p:option>

        <p:option name="fixGlobalVariables" as="xs:boolean" required="false" select="false">
            <!-- Whether an attempt is made to fix global variables using the same name. -->
        </p:option>

        <p:option name="enableFast" as="xs:boolean" required="false" select="true()">
            <!-- When true(), fast processing is enabled. Otherwise, the documents will be validated one by one. -->
        </p:option>

        <p:option name="messageIndentLevel" as="xs:integer" required="false" select="-1">
            <!-- The base indent level for the output of messages. Lowest value: 0 (means against the left margin). 
                 If you don't want messaging, use a negative value. -->
        </p:option>

        <p:option name="cleanSvrl" as="xs:boolean" required="false" select="false">
            <!-- When cleaning the SVRL, we only keep the failed-assert and successful-report elements. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Get a filename for the temporary file where we're going to store the compiled stylesheet: -->
        <p:file-create-tempfile delete-on-exit="{$removeCompiledSchematrons}" prefix="YATC-COMPILED-SCHEMATRON-STYLESHEET-" suffix=".xsl"/>
        <p:variable name="hrefCompiledSchema" as="xs:string" select="string(.)"/>

        <!-- Compile the schema to a stylesheet and store it: -->
        <p:if test="$messageIndentLevel ge 0" name="messaging">
            <yatcs:message level="{$messageIndentLevel}" msg="Compiling Schematron schema &quot;{tokenize($hrefSchema, '/')[last()]}&quot; into stylesheet {if ($fixGlobalVariables) then ' (fixing global variables)' else ()}"/>
            <yatcs:message p:use-when="not($removeCompiledSchematrons)" level="{$messageIndentLevel + 1}" msg="Retaining compiled Schematron in &quot;{$hrefCompiledSchema}&quot;"/>
        </p:if>
        <p:load depends="messaging">
            <p:with-option name="href" select="$hrefSchema"/>
        </p:load>
        <p:if test="$fixGlobalVariables">
            <p:xslt>
                <p:with-input port="stylesheet" href="../xsl/fix-schematron-double-varnames.xsl"/>
            </p:xslt>
        </p:if>
        <p:xslt>
            <p:with-input port="stylesheet" href="../../YATC-tools/schxslt/include.xsl"/>
        </p:xslt>
        <p:xslt>
            <p:with-input port="stylesheet" href="../../YATC-tools/schxslt/expand.xsl"/>
        </p:xslt>
        <p:xslt>
            <p:with-input port="stylesheet" href="../../YATC-tools/schxslt/compile-for-svrl.xsl"/>
        </p:xslt>

        <!-- Trick the XSLT processor that processes the compiled schema in telling it the XSLT is executed in the same
             location as the original schema. This is necessary because XML files with relative filenames are loaded in some cases.  -->
        <p:add-attribute attribute-name="xml:base" attribute-value="{$hrefSchema}"/>

        <!-- Store the schema (necessary because <p:mass-xslt> can only work with schemas on disk to perform its tricks). -->
        <p:store href="{$hrefCompiledSchema}" name="store-compiled-schema"/>

        <!-- Use this to validate all the input documents: -->
        <yatcs:mass-xslt transformationPrompt="Validating" p:depends="store-compiled-schema">
            <p:with-input pipe="source@fast-validate-with-schematron"/>
            <p:with-option name="hrefStylesheet" select="$hrefCompiledSchema"/>
            <p:with-option name="hrefTargetDir" select="()"/>
            <p:with-option name="messageIndentLevel" select="$messageIndentLevel"/>
            <p:with-option name="enableFast" select="$enableFast"/>
            <p:with-option name="catchErrors" select="$catchErrors"/>
        </yatcs:mass-xslt>

        <!-- Handle any errors and turn them into SVRL, if requested. Make sure it has the same base-uri as the 
             error document (because this is used further down the line): -->
        <p:if test="$catchErrors">
            <p:for-each>
                <p:if test="/*/self::_error">
                    <p:variable name="baseUri" as="xs:string" select="base-uri(/)"/>
                    <p:variable name="schematronErrorMessage" as="xs:string" select="'Schematron processing error ' || string(/*/@code) || ': ' || string(.)"/>
                    <p:identity>
                        <p:with-input>
                            <svrl:schematron-output title="Schematron processing error validating {/*/@href-source}">
                                <svrl:failed-assert role="fatal" test="(processing error)">{$schematronErrorMessage}</svrl:failed-assert>
                            </svrl:schematron-output>
                        </p:with-input>
                    </p:identity>
                    <p:set-properties properties="map{'base-uri': $baseUri}"/>
                </p:if>
            </p:for-each>
        </p:if>

        <!-- Clean the SVRL, if requested: -->
        <p:if test="$cleanSvrl">
            <p:for-each>
                <p:delete match="/*/*[not(exists(self::svrl:failed-assert)) and not(exists(self::svrl:successful-report))]"/>
            </p:for-each>
        </p:if>

    </p:declare-step>

</p:library>
