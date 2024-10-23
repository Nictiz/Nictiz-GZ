<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatcs-td="https://nictiz.nl/ns/YATC-shared/text-document" xmlns:local="#local.jf3_nqr_5wb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Support code for handling the YATC text document format, as defined in ../xsd/text-document.xsd
       
       This format is used for documenting XML structures.
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
    <p:import href="yatc-parameters.mod.xpl"/>
    <p:import href="yatc-cw.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:declare-step type="yatcs:yatc-text-document-2-markdown">
        <!-- Converts a YATC text document into Markdown. -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
        
        <p:import href="../general-engine/xplmod/general-engine.mod.xpl"></p:import>

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The YATC text document. It will be validated against its schema! -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="text">
            <!-- The resulting Markdown document -->
        </p:output>

        <!-- ======================================================================= -->


        <p:xinclude/>
        <yatcs:validate-with-xml-schema name="combined-and-validated-document">
            <p:with-input port="schema" href="../xsd/text-document.xsd"/>
        </yatcs:validate-with-xml-schema>

        <!-- Get the parameters and optionally merge them with the general engine configuration: -->
        <p:variable name="baseUri" as="xs:string" select="base-uri(/)"/>
        <yatcs:get-combined-parameters-map>
            <p:with-option name="callerStaticBaseUri" select="$baseUri"/>
        </yatcs:get-combined-parameters-map>
        <p:variable name="parametersRaw" as="map(*)" select="."/>
        <yatcs:combine-parameters-with-general-engine-configuration>
            <p:with-option name="parameters" select="$parametersRaw"/>
        </yatcs:combine-parameters-with-general-engine-configuration>
        <p:variable name="parameters" as="map(*)" select="."/>

        <!-- Substitute any YATC parameter references, based on the location of the input file: -->
        <yatcs:substitute-parameters substituteInTextNodes="true" substituteInAttributes="true" parametersMustExist="false" expandUserFriendly="true">
            <p:with-input pipe="@combined-and-validated-document"/>
            <p:with-option name="parameters" select="$parameters"/>
            <p:with-option name="callerStaticBaseUri" select="$baseUri"/>
        </yatcs:substitute-parameters>

        <!-- Substitute macros: -->
        <p:xslt>
            <p:with-input port="stylesheet" href="yatc-text-documents.mod/yatc-text-document-process-macros.xsl"/>
        </p:xslt>

        <!-- Check for command help texts: -->
        <p:viewport match="yatcs-td:include-command-help-text">
            <yatcs:get-cw-help markdown="true">
                <p:with-option name="commandStaticBaseUri" select="resolve-uri(/*/@href, base-uri(/))"/>
            </yatcs:get-cw-help>
            <p:wrap-sequence wrapper="yatcs-td:markdown"/>
        </p:viewport>

        <p:xslt>
            <p:with-input port="stylesheet" href="yatc-text-documents.mod/yatc-text-document-postprocess-elements.xsl"/>
        </p:xslt>
        <p:xslt>
            <p:with-input port="stylesheet" href="yatc-text-documents.mod/yatc-text-document-add-toc.xsl"/>
        </p:xslt>
        <p:xslt>
            <p:with-input port="stylesheet" href="yatc-text-documents.mod/yatc-text-document-to-md.xsl"/>
        </p:xslt>

    </p:declare-step>

</p:library>
