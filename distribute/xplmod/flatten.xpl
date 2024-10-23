<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.hqw_sts_jzb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
        Pipelines for flattening an XSLT, Schema or Schematron document (move all include files into 
        a consolidated include directory)
 
        The input is "flatten master document" that looks like this:
        
        <flatten-master type="stylesheet/schema/schematron" (see the $flattenType static options below)
                        target-directory="…"
                        href-include="…" (full href of directory for all the included non-master documents)
                        clear-target="true/false" (default: true; only clears flatten-master/@target-directory!) 
                        add-additional-info="list of additional info items (see distribute data schema)"
                        distribution-name="..."
                        distribution-version="..."
                        distribution-timestamp="..."
        >
            <master-document href-source="…" 
                             href-target="…" 
            />*
        </flatten-master>
        
        All master documents must exist!
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
    <!-- CONSTANTS: -->

    <p:option static="true" name="flattenTypeStylesheet" as="xs:string" select="'stylesheet'"/>
    <p:option static="true" name="flattenTypeSchema" as="xs:string" select="'schema'"/>
    <p:option static="true" name="flattenTypeSchematron" as="xs:string" select="'schematron'"/>

    <!-- ======================================================================= -->

    <p:declare-step type="yatci:flatten" name="flatten">
        <!-- 
            This flattens all the appropriate documents in a given directory (you can specify filters if necessary)
            and copies this all to a target directory.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:import href="../../../YATC-shared/xplmod/yatc-general.mod.xpl"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml">
            <!-- The flatten master document (see top comment) -->
        </p:input>

        <p:output port="result" primary="true" sequence="false" content-types="xml">
            <!-- A report XML with all files involved, probably good for nothing, but anyway… -->
        </p:output>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:variable name="clearTarget" as="xs:boolean" select="xs:boolean((/*/@clear-target, true())[1])"/>
        <p:variable name="additionalInfo" as="xs:string" select="string(/*/@add-additional-info)"/>

        <!-- Create a master list: -->
        <p:xslt>
            <p:with-input port="stylesheet" href="xsl-flatten/create-master-list.xsl"/>
        </p:xslt>

        <!-- Reorganize it, so masters/includes are separated and the includes de-duplicated. -->
        <p:xslt>
            <p:with-input port="stylesheet" href="xsl-flatten/reorganize-master-list.xsl"/>
        </p:xslt>

        <!-- Handle any duplicate include document names. Target filenames for include files with 
             the same name but a different source directory are changed so they become unique. -->
        <p:xslt>
            <p:with-input port="stylesheet" href="xsl-flatten/handle-duplicate-names.xsl"/>
        </p:xslt>

        <!-- Ok, all preparations done. Copy all the stuff to the target, changing the include/import statements on the way: -->
        <p:variable name="flattenedDocumentList" as="document-node()" select="."/>

        <p:if test="$clearTarget">
            <yatcs:create-clear-directory clear="true">
                <p:with-option name="hrefDir" select="xs:string(/*/@href-target)"/>
            </yatcs:create-clear-directory>
        </p:if>

        <p:for-each name="adapt-documents">
            <p:with-input select="//document"/>

            <p:variable name="hrefSource" as="xs:string" select="xs:string(/*/@href-source)"/>
            <p:variable name="hrefTarget" as="xs:string" select="xs:string(/*/@href-target)"/>

            <p:xslt>
                <p:with-input href="{$hrefSource}"/>
                <p:with-input port="stylesheet" href="xsl-flatten/adapt-document.xsl"/>
                <p:with-option name="parameters" select="map{
                    'hrefDocumentSource': $hrefSource, 
                    'hrefDocumentTarget': $hrefTarget, 
                    'flattenedDocumentList': $flattenedDocumentList,
                    'additionalInfo': $additionalInfo
                }"/>
            </p:xslt>
            <p:store href="{$hrefTarget}" serialization="map{'method': 'xml'}"/>

            <!-- Switch back to the original loop input for reporting purposes: -->
            <p:identity>
                <p:with-input pipe="current@adapt-documents"/>
            </p:identity>

        </p:for-each>

        <p:wrap-sequence wrapper="flatten-documents"/>

    </p:declare-step>

</p:library>
