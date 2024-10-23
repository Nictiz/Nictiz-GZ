<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.of5_wrr_5wb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       This step looks at all YATC-*//doc/src directories of the YATC repositories and converts the XML documents 
       here into Markdown. It assumes the XML documents in these src directories are in the YATC text document format, 
       as defined in ../xsd/text-document.xsd.
       
       It's a crude and simple step. It does not have any help attached (since it's meant for developers). 
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

    <p:import href="../xplmod/yatc-parameters.mod.xpl"/>
    <p:import href="../xplmod/component-parameter-names.mod.xpl"/>
    <p:import href="../xplmod/yatc-text-documents.mod.xpl"/>

    <!-- ================================================================== -->

    <p:declare-step type="local:safe-directory-list">
        <!-- Gets a directory list with text documents without failing when nothing's there... 
             Formats the list into a linear simple one.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:output port="result" primary="true" sequence="false" content-types="xml"/>

        <p:option name="path" as="xs:string" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:try>
            <!-- Remark: When a directory does not exist an error is raised. We're not interested in that... -->
            <p:directory-list path="{$path}" include-filter="doc/src/.*\.xml$" max-depth="4"/>
            <p:catch>
                <p:identity>
                    <p:with-input>
                        <c:directory xml:base="{$path}"/>
                    </p:with-input>
                </p:identity>
            </p:catch>
        </p:try>

        <p:xslt>
            <p:with-input port="stylesheet" href="xsl-text-documents-2-markdown/process-directory-list.xsl"/>
        </p:xslt>

    </p:declare-step>

    <!-- ======================================================================= -->

    <!-- Get the parameters so we can find the base directory: -->
    <yatcs:get-combined-parameters-map>
        <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/>
    </yatcs:get-combined-parameters-map>
    <p:variable name="parameters" as="map(*)" select="."/>

    <!-- Get the names of all the YATC subdirectories of the base directory: -->
    <p:directory-list path="{$parameters($yatcs:parnameYatcBaseDirectory)}" include-filter="YATC-"/>

    <!-- Get a list of all doc/src files for processing and turn them into Markdown: -->
    <p:for-each>
        <p:with-input select="/c:directory/c:directory"/>

        <p:variable name="directoryName" as="xs:string" select="/*/@name"/>
        <p:variable name="repoDirectory" as="xs:string" select="string-join(($parameters($yatcs:parnameYatcBaseDirectory), $directoryName), '/')"/>
        <local:safe-directory-list path="{$repoDirectory}" p:message="* Processing {$directoryName}"/>

        <p:for-each>
            <p:with-input select="/*/text-document"/>

            <p:variable name="hrefSource" as="xs:string" select="/*/@source"/>
            <p:variable name="hrefTarget" as="xs:string" select="/*/@target"/>

            <yatcs:yatc-text-document-2-markdown p:message="  * Document {/*/@name}">
                <p:with-input href="{$hrefSource}"/>
            </yatcs:yatc-text-document-2-markdown>

            <p:store href="{$hrefTarget}" serialization="map{'method': 'text'}"/>

        </p:for-each>

    </p:for-each>

</p:declare-step>
