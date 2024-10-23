<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:html="http://www.w3.org/1999/xhtml" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211890057460100">
    <!-- ================================================================== -->
    <!--
        This stylesheet takes its input (an html document) and expands all import elements
        with the body of the document they point to.
        
        The output is done as text (since this is what an ada-2-wiki build step expects)
    -->
    <!-- ================================================================== -->
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
    <!-- ================================================================== -->

    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:strip-space elements="*"/>

    <xsl:mode on-no-match="shallow-copy"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:variable name="expandedContents" as="element()">
            <xsl:apply-templates select="/*"/>
        </xsl:variable>
        <xsl:sequence select="serialize($expandedContents, map{'method': 'xhtml', 'indent': true(), 'encoding': 'UTF-8', 'include-content-type': false()}) => replace('&amp;gt;', '&gt;') => replace('&amp;lt;', '&lt;')"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="import">
        <!-- Expand import elements -->
        <xsl:variable name="htmDoc" select="doc(@href)"/>
        <xsl:copy-of select="$htmDoc/html:html/html:body/*"/>
    </xsl:template>
    
</xsl:stylesheet>
