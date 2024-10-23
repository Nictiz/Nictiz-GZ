<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.dx5_5kz_21c" xmlns:yatcs-iad="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" version="3.0" exclude-inline-prefixes="#all" name="import-aorta-documents" type="yatcs:import-aorta-documents">
    <!-- ======================================================================= -->
    <!-- 
        This support pipeline was written to import files from AORTA into YATC. This
        includes the directory tree where they're located, including the files imported/included,
        recursively.
        
        It works for Stylesheets, Schematrons and XML Schemas.
        
        Watch out: Sometimes the documents we're talking about are stored in zip files. These
        must be unzipped before this works!
        
        The input is a simple data file (that must be valid against import-aorta-documents.xsd).
        
        You must also tell YATC where a checkout of AORTA is located. Do this in the YATC parameter
        AORTADirectory located in your local override parameters file (data/parameters.xml).
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

    <p:import href="../xplmod/yatc-general.mod.xpl"/>
    <p:import href="../xplmod/yatc-parameters.mod.xpl"/>
    <p:import href="../xplmod/component-parameter-names.mod.xpl"/>

    <!-- ======================================================================= -->

    <p:option static="true" name="develop" as="xs:boolean" select="false()"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:input port="source" primary="true" sequence="false" content-types="xml">
        <!-- The specification document for this import. Must be valid against import-aorta-documents.xsd.  -->
        <p:document href="test/test-input-import-aorta-documents.xml" use-when="$develop"/>
    </p:input>

    <p:output port="result" primary="true" sequence="false" content-types="xml" pipe="@end-result" serialization="map{'omit-xml-declaration': true()}">
        <!-- A small report about what was done. -->
    </p:output>

    <!-- ================================================================== -->
    <!-- MAIN: -->

    <p:variable name="hrefInput" as="xs:string" select="base-uri(/)"/>
    <p:variable name="mainAORTADirectoryName" as="xs:string" select="'AORTA'"/>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    <!-- Get the parameters in and see whether the AORTADirectory parameter is ok: -->

    <yatcs:get-combined-parameters-map>
        <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/>
    </yatcs:get-combined-parameters-map>
    <p:variable name="parameters" as="map(*)" select="."/>

    <p:variable name="AORTADirectory" as="xs:string" select="string($parameters($yatcs:parnameAORTADirectory))"/>
    <p:if test="not(ends-with($AORTADirectory, '/' || $mainAORTADirectoryName))">
        <p:error code="yatcs:error">
            <p:with-input>
                <p:inline content-type="text/plain" xml:space="preserve">The YATC parameter {$yatcs:parnameAORTADirectory} is undefined or invalid (must end with {$mainAORTADirectoryName}).</p:inline>
            </p:with-input>
        </p:error>
    </p:if>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    <!-- Check and pre-process the specification document: -->

    <yatcs:validate-with-xml-schema>
        <p:with-input pipe="source@import-aorta-documents"/>
        <p:with-input port="schema" href="import-aorta-documents.xsd"/>
    </yatcs:validate-with-xml-schema>

    <!-- Flatten the list (remove all directory elements and make the filenames complete): -->
    <p:xslt message="* Pre-processing document list {base-uri(/)}">
        <p:with-input port="stylesheet" href="xsl-import-aorta-documents/flatten-list.xsl"/>
        <p:with-option name="parameters" select="map{
                'AORTADirectory': $AORTADirectory,
                'yatcInternalDirectory': $parameters($yatcs:parnameYatcInternalDirectory)
        }"/>
    </p:xslt>

    <!-- Expand the list to find all import documents: -->
    <p:xslt message="* Finding includes/imports">
        <p:with-input port="stylesheet" href="xsl-import-aorta-documents/expand-list-2.xsl"/>
    </p:xslt>
    
    <!-- Deduplicate the list. Also computes the target for each document. -->
    <p:xslt>
        <p:with-input port="stylesheet" href="xsl-import-aorta-documents/deduplicate-list.xsl"/>
    </p:xslt>
    <p:identity name="enhanced-document-list"/>

    <!-- Go and copy: -->
    <p:for-each>
        <p:with-input select="//yatcs-iad:document[@href][@href-target]"/>

        <p:variable name="href-source" as="xs:string" select="/*/@href"/>
        <p:variable name="href-target" as="xs:string" select="/*/@href-target"/>
        <p:identity message="* ({p:iteration-position()}/{p:iteration-size()}) Copying {tokenize($href-source, '/')[last()]}"/>

        <!-- For Schematron documents, we have to fix the double variable name problem, so we have to do some special handling: -->
        <p:variable name="isSchematronDocument" as="xs:boolean" select="
            if (doc-available($href-source)) then (namespace-uri(doc($href-source)/*) eq 'http://purl.oclc.org/dsdl/schematron')
            else false()
        "/>
        <p:choose>
            <p:when test="$isSchematronDocument">
                <p:output pipe="result-uri@store-schematron-document"/>
                <p:xslt>
                    <p:with-input href="{$href-source}"/>
                    <p:with-input port="stylesheet" href="../xsl/fix-schematron-double-varnames.xsl"/>
                </p:xslt>
                <p:store href="{$href-target}" serialization="map{'method': 'xml', 'indent': true()}" name="store-schematron-document"/>
            </p:when>
            <p:otherwise>
                <p:file-copy>
                    <p:with-option name="href" select="$href-source"/>
                    <p:with-option name="target" select="$href-target"/>
                </p:file-copy>
            </p:otherwise>
        </p:choose>
    </p:for-each>

    <!-- Report: -->
    <p:variable name="count" select="count(collection())" collection="true"/>
    <p:identity name="end-result">
        <p:with-input>
            <import-aorta-documents-result timestamp="{current-dateTime()}" count="{$count}"/>
        </p:with-input>
    </p:identity>

    <!-- Add a readme: -->
    <p:identity>
        <p:with-input pipe="@enhanced-document-list"/>
    </p:identity>
    <p:variable name="hrefTargetDir" as="xs:string" select="/*/@href-target"/>
    <p:variable name="hrefReadme" as="xs:string" select="string-join(($hrefTargetDir, 'README.md'), '/')"/>
    <p:xslt>
        <p:with-input port="stylesheet" href="xsl-import-aorta-documents/create-readme.xsl"/>
        <p:with-option name="parameters" select="map{'hrefPipeline': static-base-uri(), 'hrefInput': $hrefInput}"/>
    </p:xslt>
    <p:store href="{$hrefReadme}" serialization="map{'method': 'text'}" message="* Storing README: {$hrefReadme}"/>

</p:declare-step>
