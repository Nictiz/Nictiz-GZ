<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.a3w_5rz_21c" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" xmlns:yatcs-iad="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
      Second version of this expand list stylesheet. Tries to avoid nasty circular references.
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
        <xsl:variable name="hrefRel" as="xs:string" select="string(@href-rel) => yatcs:href-canonical()"/>

        <xsl:message>  * {$href}</xsl:message>

        <document href="{$href}" href-rel="{$hrefRel}" base-document="{true()}"/>
        
        <xsl:variable name="hrefAbsPrefix" as="xs:string" select="substring-before($href, $hrefRel)"/>
        <xsl:variable name="children" as="xs:string*" select="local:process-document($href, $href, ()) => distinct-values()"/>
        <xsl:message>    * Children: {count($children)}</xsl:message>
        <xsl:for-each select="$children">
            <xsl:variable name="href" as="xs:string" select="."/>
            <xsl:variable name="hrefRel" as="xs:string" select="substring-after($href, $hrefAbsPrefix)"/>
            <document href="{$href}" href-rel="{$hrefRel}" base-document="{false()}"/>
        </xsl:for-each>
        
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:process-document" as="xs:string*">
        <!-- This function processes a document and returns the href-s of all the children and grand(grand)children.  -->
        <xsl:param name="hrefCurrentDocument" as="xs:string"/>
        <xsl:param name="hrefBaseDocument" as="xs:string"/>
        <xsl:param name="hrefDocumentsDetected" as="xs:string*"/>
        
        <!-- Get all the includes/imports of the current document, filtered against what we already detected -->
        <xsl:variable name="hrefChildDocumentsFiltered" as="xs:string*" select="local:get-all-includes-imports($hrefCurrentDocument, $hrefBaseDocument, $hrefDocumentsDetected)"/>

        <!-- Now get all the grand(grand)children, filtered also. -->
        <xsl:variable name="hrefGrandchildDocumentsFiltered" as="xs:string*">
            <!-- Getting the grand(grand)children is a complicated process. There were some schemas with horrible circular references…  
                 We iterate over all children and find all the grandchildren, recursively. While doing that we keep a list of all documents we've already detected
                 and =make sure we don't process these again.
            -->
            <xsl:iterate select="$hrefChildDocumentsFiltered">
                <xsl:param name="hrefDocumentsAlreadyDetected" as="xs:string*" select="($hrefDocumentsDetected, $hrefChildDocumentsFiltered)">
                    <!-- We work with a list of already detected documents, that includes the children of the current document as well. 
                         This avoids nasty circular reference loops. -->
                </xsl:param>
                <xsl:param name="hrefGrandchildDocumentsDetectedAccumulated" as="xs:string*" select="()">
                    <!-- This parameter accumulates all the found grand(grand)child documents during the iterations. -->
                </xsl:param>

                <xsl:variable name="hrefChildDocument" as="xs:string" select="."/>
                <xsl:variable name="hrefGrandchildDocumentsDetectedInChildDocument" as="xs:string*" select="local:process-document($hrefChildDocument, $hrefBaseDocument, $hrefDocumentsAlreadyDetected)"/>
                
                <!-- See if we're done. if so, output all the accumulated grand(grand)child URIs. -->
                <xsl:choose>
                    <xsl:when test="position() ne last()">
                        <xsl:next-iteration>
                            <xsl:with-param name="hrefDocumentsAlreadyDetected" select="($hrefDocumentsAlreadyDetected, $hrefGrandchildDocumentsDetectedInChildDocument)"/>
                            <xsl:with-param name="hrefGrandchildDocumentsDetectedAccumulated" select="($hrefGrandchildDocumentsDetectedAccumulated, $hrefGrandchildDocumentsDetectedInChildDocument)"/>
                        </xsl:next-iteration>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:break select="($hrefGrandchildDocumentsDetectedAccumulated, $hrefGrandchildDocumentsDetectedInChildDocument)"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:iterate>
        </xsl:variable>

        <!-- Done. Output the direct children and all the grand(grand)children: -->
        <xsl:sequence select="($hrefChildDocumentsFiltered, $hrefGrandchildDocumentsFiltered)"/>
    </xsl:function>

    <!-- ======================================================================= -->
    <!-- GET LIST OF ALL INCLUDES/IMPORTS: -->

    <xsl:function name="local:get-all-includes-imports" as="xs:string*">
        <xsl:param name="hrefCurrentDocument" as="xs:string"/>
        <xsl:param name="hrefBaseDocument" as="xs:string"/>
        <xsl:param name="hrefIgnores" as="xs:string*"/>
        
        <xsl:choose>
            <xsl:when test="doc-available($hrefCurrentDocument)">
                <xsl:apply-templates select="doc($hrefCurrentDocument)" mode="mode-process-includes-imports">
                    <xsl:with-param name="hrefCurrentDocument" as="xs:string" select="$hrefCurrentDocument" tunnel="true"/>
                    <xsl:with-param name="hrefBaseDocument" as="xs:string" select="$hrefBaseDocument" tunnel="true"/>
                    <xsl:with-param name="hrefIgnores" as="xs:string*" select="$hrefIgnores" tunnel="true"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:otherwise>
                <!-- Document not available, ignore... -->
                <xsl:sequence select="()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="(*:include | *:import)[exists(@href) or exists(@schemaLocation)]" mode="mode-process-includes-imports" as="xs:string?">
        <xsl:param name="hrefCurrentDocument" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="hrefIgnores" as="xs:string*" required="true" tunnel="true"/>

        <xsl:variable name="hrefRaw" as="xs:string" select="(@href, @schemaLocation)[1]"/>
        <xsl:variable name="href" as="xs:string" select="resolve-uri($hrefRaw, $hrefCurrentDocument) => yatcs:href-canonical()"/>
        <xsl:if test="not($href = $hrefIgnores)">
            <xsl:sequence select="$href"/>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@*[matches(., $regexpDocRef)]" mode="mode-process-includes-imports" as="xs:string*">
        <!-- This is an attempt to catch documents included using the doc() function. Don't know whether it is good enough… -->
        <xsl:param name="hrefCurrentDocument" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="hrefBaseDocument" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="hrefIgnores" as="xs:string*" required="true" tunnel="true"/>

        <!-- Remark: Schematron documents must be resolved against the location of the base document (the main document that includes
             the others). Therefore, some special handling for Schematron. -->
        <xsl:variable name="isSchematron" as="xs:boolean" select="namespace-uri(..) eq 'http://purl.oclc.org/dsdl/schematron'"/>
        <xsl:analyze-string select="string(.)" regex="{$regexpDocRef}">
            <xsl:matching-substring>
                <xsl:variable name="hrefRaw" as="xs:string" select="regex-group(1)"/>
                <xsl:variable name="resolveURI" as="xs:string" select="if ($isSchematron) then $hrefBaseDocument else $hrefCurrentDocument"/>
                <xsl:variable name="href" as="xs:string" select="resolve-uri($hrefRaw, $resolveURI) => yatcs:href-canonical()"/>
                <xsl:if test="not($href = $hrefIgnores)">
                    <xsl:sequence select="$href"/>
                </xsl:if>
            </xsl:matching-substring>
            <xsl:non-matching-substring/>
        </xsl:analyze-string>
    </xsl:template>

</xsl:stylesheet>
