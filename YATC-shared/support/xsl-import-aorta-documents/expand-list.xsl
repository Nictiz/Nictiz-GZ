<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.a3w_5rz_21c" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" xmlns:yatcs-iad="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
      Old version, superseded by expand-list-2.xsl. No longer used.
      
      Kept because code might be interesting for different purposes.
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

    <xsl:output method="xml" indent="true" encoding="UTF-8"/>

    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:mode name="mode-process-includes-imports" on-no-match="shallow-skip"/>

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:variable name="regexpDocRef" as="xs:string" select="yatcs:str2regexp('doc(''', false()) || '(.+?)' || yatcs:str2regexp(''')', false())"/>
    
    <xsl:variable name="indent-spaces" as="xs:integer" select="2"/>

    <!-- ================================================================== -->

    <xsl:template match="yatcs-iad:document">
        <xsl:variable name="href" as="xs:string" select="string(@href) => yatcs:href-canonical()"/>
        <xsl:message>  * Processing main document {$href}</xsl:message>
        <xsl:call-template name="process-document">
            <xsl:with-param name="href" select="$href"/>
            <xsl:with-param name="hrefRel" select="@href-rel"/>
            <xsl:with-param name="hrefsProcessed" select="()"/>
            <xsl:with-param name="baseDocument" select="true()"/>
            <xsl:with-param name="indent" select="0"/>
            <xsl:with-param name="from" select="'[MAIN]'"/>
        </xsl:call-template>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template name="process-document">
        <xsl:param name="href" as="xs:string" required="yes"/>
        <xsl:param name="hrefRel" as="xs:string" required="yes"/>
        <xsl:param name="hrefsProcessed" as="xs:string*" required="true"/>
        <xsl:param name="baseDocument" as="xs:boolean" required="false" select="false()"/>
        <xsl:param name="hrefBaseDocument" as="xs:string" required="false" select="$href"/>
        <xsl:param name="hrefRelBaseDocument" as="xs:string" required="false" select="$hrefRel"/>
        <xsl:param name="indent" as="xs:integer" required="yes"/>
        <xsl:param name="from" as="xs:string" required="yes"/>

        <xsl:variable name="indent-string" as="xs:string" select="yatcs:char-repeat(' ', $indent * $indent-spaces)"/>
        <xsl:choose>
            <!--<xsl:when test="not($href = $hrefsProcessed)">-->
            <xsl:when test="not(local:in-sequence-case-insensitive($href, $hrefsProcessed))">
                <xsl:message>{$indent-string}{$indent}[{count($hrefsProcessed)}]* {$href} [{$from}]</xsl:message>
                <!-- First the document itself: -->
                <document href="{$href}" href-rel="{$hrefRel}" base-document="{$baseDocument}"/>

                <!-- And process it: -->
                <xsl:variable name="doc" as="document-node()?" select="if (doc-available($href)) then doc($href) else ()"/>
                <xsl:choose>
                    <xsl:when test="exists($doc)">
                        <xsl:variable name="importsIncludes" as="node()*">
                            <xsl:apply-templates select="$doc" mode="mode-process-includes-imports">
                                <xsl:with-param name="baseHref" select="$href" tunnel="true"/>
                                <xsl:with-param name="baseHrefRel" select="$hrefRel" tunnel="true"/>
                                <xsl:with-param name="baseHrefBaseDocument" select="$hrefBaseDocument" tunnel="true"/>
                                <xsl:with-param name="baseHrefRelBaseDocument" select="$hrefRelBaseDocument" tunnel="true"/>
                                <xsl:with-param name="hrefsProcessed" as="xs:string*" select="($hrefsProcessed, $href)" tunnel="true"/>
                                <xsl:with-param name="indent" as="xs:integer" select="$indent + 1" tunnel="true"/>
                            </xsl:apply-templates>
                        </xsl:variable>
                        <xsl:if test="exists($importsIncludes)">
                            <xsl:comment> == START IMPORTS/INCLUDES {$href} == </xsl:comment>
                            <xsl:sequence select="$importsIncludes"/>
                            <xsl:comment> == END IMPORTS/INCLUDES {$href} == </xsl:comment>
                        </xsl:if>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- There are errors in some documents that I don't understand. The files are ok in oXygen, but Saxon
                             refuses to load ?!? For instance (and maybe just this one): AORTA/trunk/XML/schemas_codeGen_flat/xml.xsd
                             For now, we're going to carry on and assume there are no imports/includes in these files...
                        -->
                        <xsl:comment> == NOT EXIST OR NOT WELL-FORMED: {$href} == </xsl:comment>
                    </xsl:otherwise>
                </xsl:choose>

            </xsl:when>
            <xsl:otherwise>
                <xsl:message>{$indent-string}* [DONE] {$href}</xsl:message>
                <xsl:comment>Already processed: {$href}</xsl:comment>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="(*:include | *:import)[exists(@href) or exists(@schemaLocation)]" mode="mode-process-includes-imports">
        <xsl:param name="baseHref" as="xs:string" required="yes" tunnel="true"/>
        <xsl:param name="baseHrefRel" as="xs:string" required="yes" tunnel="true"/>
        <xsl:param name="baseHrefBaseDocument" as="xs:string" required="yes" tunnel="true"/>
        <xsl:param name="baseHrefRelBaseDocument" as="xs:string" required="yes" tunnel="true"/>
        <xsl:param name="hrefsProcessed" as="xs:string*" required="yes" tunnel="true"/>
        <xsl:param name="indent" as="xs:integer" required="true" tunnel="true"/>

        <xsl:variable name="hrefRaw" as="xs:string" select="(@href, @schemaLocation)[1]"/>
        <xsl:variable name="href" as="xs:string" select="yatcs:href-concat((yatcs:href-path($baseHref), $hrefRaw)) => yatcs:href-canonical()"/>
        <xsl:variable name="hrefRel" as="xs:string" select="yatcs:href-concat((yatcs:href-path($baseHrefRel), $hrefRaw)) => yatcs:href-canonical()"/>
        <xsl:call-template name="process-document">
            <xsl:with-param name="href" select="$href"/>
            <xsl:with-param name="hrefRel" select="$hrefRel"/>
            <xsl:with-param name="hrefBaseDocument" select="$baseHrefBaseDocument"/>
            <xsl:with-param name="hrefRelBaseDocument" select="$baseHrefRelBaseDocument"/>
            <xsl:with-param name="hrefsProcessed" select="$hrefsProcessed"/>
            <xsl:with-param name="indent" select="$indent"/>
            <xsl:with-param name="from" select="$baseHref"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@*[matches(., $regexpDocRef)]" mode="mode-process-includes-imports">
        <!-- This is an attempt to catch documents included using the doc() function. Don't knwo whether it is good enough… -->
        <xsl:param name="baseHref" as="xs:string" required="yes" tunnel="true"/>
        <xsl:param name="baseHrefRel" as="xs:string" required="yes" tunnel="true"/>
        <xsl:param name="baseHrefBaseDocument" as="xs:string" required="yes" tunnel="true"/>
        <xsl:param name="baseHrefRelBaseDocument" as="xs:string" required="yes" tunnel="true"/>
        <xsl:param name="hrefsProcessed" as="xs:string*" required="yes" tunnel="true"/>
        <xsl:param name="indent" as="xs:integer" required="true" tunnel="true"/>

        <!-- Remark: Schematron documents must be resolved against the location of the base document (the main document that includes
             the others). Therefore, some special handling for Schematron. -->
        <xsl:variable name="isSchematron" as="xs:boolean" select="namespace-uri(..) eq 'http://purl.oclc.org/dsdl/schematron'"/>

        <xsl:analyze-string select="string(.)" regex="{$regexpDocRef}">
            <xsl:matching-substring>
                <xsl:variable name="hrefRaw" as="xs:string" select="regex-group(1)"/>
                <xsl:variable name="href" as="xs:string" select="yatcs:href-concat((yatcs:href-path(if ($isSchematron) then $baseHrefBaseDocument else $baseHref), $hrefRaw)) => yatcs:href-canonical()"/>
                <xsl:variable name="hrefRel" as="xs:string" select="yatcs:href-concat((yatcs:href-path(if ($isSchematron) then $baseHrefRelBaseDocument else $baseHrefRel), $hrefRaw)) => yatcs:href-canonical()"/>
                <xsl:call-template name="process-document">
                    <xsl:with-param name="href" select="$href"/>
                    <xsl:with-param name="hrefRel" select="$hrefRel"/>
                    <xsl:with-param name="hrefBaseDocument" select="$baseHrefBaseDocument"/>
                    <xsl:with-param name="hrefRelBaseDocument" select="$baseHrefRelBaseDocument"/>
                    <xsl:with-param name="hrefsProcessed" select="$hrefsProcessed"/>
                    <xsl:with-param name="indent" select="$indent"/>
                    <xsl:with-param name="from" select="$baseHref"/>
                </xsl:call-template>
            </xsl:matching-substring>
            <xsl:non-matching-substring/>
        </xsl:analyze-string>
    </xsl:template>
    
    <!-- ======================================================================= -->
    
    <xsl:function name="local:in-sequence-case-insensitive" as="xs:boolean">
        <xsl:param name="in" as="xs:string"/>
        <xsl:param name="seq" as="xs:string*"/>
        
        <xsl:variable name="in-lc" as="xs:string" select="lower-case($in)"/>
        <xsl:sequence select="some $s in $seq satisfies lower-case($s) eq $in-lc"/>
    </xsl:function>
    
</xsl:stylesheet>
