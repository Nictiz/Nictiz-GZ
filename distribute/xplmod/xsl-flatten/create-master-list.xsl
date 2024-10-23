<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.kbx_zvs_jzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This creates a (nested) master list with the includes.
       
       Input is the output of the <yatcs:safe-directory-list> step in yatcs-geeral.mod.xpl.
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

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:mode on-no-match="fail"/>

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/href.mod.xsl"/>

    <xsl:include href="../../xslmod/flatten-types.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="hrefTargetDirectory" as="xs:string" select="xs:string(/*/@target-directory) => yatcs:href-canonical()"/>
    <xsl:variable name="hrefIncludeDirectory" as="xs:string" select="xs:string(/*/@href-include) => yatcs:href-canonical()"/>
    <xsl:variable name="flattenType" as="xs:string" select="xs:string(/*/@type)"/>

    <!-- Find out what we have to check on/change, depending on the type of flattening: -->
    <xsl:variable name="namespace" as="xs:string">
        <xsl:choose>
            <xsl:when test="$flattenType eq $flattenTypeStylesheet">
                <xsl:sequence select="'http://www.w3.org/1999/XSL/Transform'"/>
            </xsl:when>
            <xsl:when test="$flattenType eq $flattenTypeSchema">
                <xsl:sequence select="'http://www.w3.org/2001/XMLSchema'"/>
            </xsl:when>
            <xsl:when test="$flattenType eq $flattenTypeSchematron">
                <xsl:sequence select="'http://purl.oclc.org/dsdl/schematron'"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="($yatcs:internal-error-prompt, 'Unrecognized flatten type: ', yatcs:q($flattenType))"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <xsl:variable name="includeElements" as="xs:string+">
        <xsl:sequence select="'include'"/>
        <xsl:if test="$flattenType = ($flattenTypeStylesheet, $flattenTypeSchema)">
            <xsl:sequence select="'import'"/>
        </xsl:if>
    </xsl:variable>

    <xsl:variable name="attributeName" as="xs:string">
        <xsl:choose>
            <xsl:when test="$flattenType = ($flattenTypeStylesheet, $flattenTypeSchematron)">
                <xsl:sequence select="'href'"/>
            </xsl:when>
            <xsl:when test="$flattenType eq $flattenTypeSchema">
                <xsl:sequence select="'schemaLocation'"/>
            </xsl:when>
            <!-- No error defined here, will be caught at computing $namespace. -->
        </xsl:choose>
    </xsl:variable>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/flatten-master">
        <flatten timestamp="{current-dateTime()}" flatten-type="{$flattenType}" href-target="{$hrefTargetDirectory}" href-include="{$hrefIncludeDirectory}" namespace="{$namespace}" include-elements="{string-join($includeElements, ' ')}" attribute-name="{$attributeName}">
            <xsl:copy-of select="@*[starts-with(local-name(.), 'distribution-')]"/>
            <xsl:apply-templates/>
        </flatten>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="master-document">

        <xsl:variable name="hrefSourceCanonical" as="xs:string" select="yatcs:href-canonical(@href-source)"/>
        <xsl:variable name="hrefTargetCanonical" as="xs:string" select="yatcs:href-canonical(@href-target)"/>
        <xsl:variable name="filename" as="xs:string" select="yatcs:href-name($hrefSourceCanonical)"/>

        <master href-source="{$hrefSourceCanonical}" name="{$filename}" href-target="{$hrefTargetCanonical}">
            <xsl:call-template name="investigate-include-structure">
                <xsl:with-param name="hrefCanonical" select="$hrefSourceCanonical"/>
            </xsl:call-template>
        </master>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:load-document" as="document-node()">
        <!-- Loads a document and does some checks on it. -->
        <xsl:param name="href" as="xs:string"/>
        <xsl:param name="isMaster" as="xs:boolean"/>

        <xsl:variable name="errorPrompt" as="xs:string" select="if ($isMaster) then 'Master' else 'Include/Import'"/>
        <xsl:if test="not(doc-available($href))">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="($errorPrompt, ' document for flattening not found or not well-formed: ', yatcs:q($href))"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:variable name="document" as="document-node()" select="doc($href)"/>
        <xsl:if test="namespace-uri($document/*) ne $namespace">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="($errorPrompt, ' document for flattening ', yatcs:q($href), ' is not in the correct namespace for type ', $flattenType)"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:sequence select="$document"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="investigate-include-structure">
        <!-- Investigate a document for includes/imports, recursively. -->
        <xsl:param name="hrefCanonical" as="xs:string" required="yes"/>
        <xsl:param name="alreadyProcessedHrefs" as="xs:string*" required="false" select="()">
            <!-- Sequence of canonical hrefs of the documents already processed (to detect circular references) -->
        </xsl:param>

        <xsl:if test="$hrefCanonical = $alreadyProcessedHrefs">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="('Circular reference detected; ', $flattenType, ' document included/imported more than once: ', yatcs:q($hrefCanonical))"/>
            </xsl:call-template>
        </xsl:if>

        <xsl:variable name="document" as="document-node()" select="local:load-document($hrefCanonical, empty($alreadyProcessedHrefs))"/>
        <xsl:for-each select="$document/*/*[namespace-uri(.) eq $namespace][local-name(.) = $includeElements][exists(@*[local-name(.) eq $attributeName])]">
            <xsl:variable name="href" as="xs:string" select="string(@*[local-name(.) eq $attributeName])"/>
            <xsl:variable name="hrefInclude" as="xs:string" select="resolve-uri($href, $hrefCanonical) => yatcs:href-canonical()"/>
            <xsl:variable name="includeFilename" as="xs:string" select="yatcs:href-name($hrefInclude)"/>
            <xsl:variable name="hrefTarget" as="xs:string" select="yatcs:href-concat(($hrefIncludeDirectory, $includeFilename))"/>
            <include href-source="{$hrefInclude}" href-target="{$hrefTarget}" name="{$includeFilename}">
                <xsl:call-template name="investigate-include-structure">
                    <xsl:with-param name="hrefCanonical" select="$hrefInclude"/>
                    <xsl:with-param name="alreadyProcessedHrefs" select="($alreadyProcessedHrefs, $hrefCanonical)"/>
                </xsl:call-template>
            </include>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="comment() | processing-instruction() | text()">
        <!-- Discard… -->
    </xsl:template>


</xsl:stylesheet>
