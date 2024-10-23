<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"  xmlns:local="#local.oxz_g5k_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet implements the comparison of two XML documents.
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

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/href.mod.xsl"/>
    <xsl:include href="../../xslmod/compare.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:param name="href1" as="xs:string" required="true"/>
    <xsl:param name="href2" as="xs:string" required="true"/>
    
    <xsl:param name="compareRules" as="element()?" required="false" select="()"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">

        <xsl:variable name="href1Canonical" as="xs:string" select="yatcs:href-canonical($href1)"/>
        <xsl:variable name="href2Canonical" as="xs:string" select="yatcs:href-canonical($href2)"/>

        <!-- Check if the documents are there and, if so, do the comparison: -->
        <xsl:variable name="comparisonResults" as="element(yatcs:message)*">

            <xsl:variable name="doc1Available" as="xs:boolean" select="doc-available($href1Canonical)"/>
            <xsl:variable name="doc2Available" as="xs:boolean" select="doc-available($href2Canonical)"/>

            <xsl:if test="not($doc1Available)">
                <xsl:call-template name="local:create-message">
                    <xsl:with-param name="msg-parts" select="('Document not found (or not well-formed): ', yatcs:q($href1Canonical))"/>
                </xsl:call-template>
            </xsl:if>
            <xsl:if test="not($doc2Available)">
                <xsl:call-template name="local:create-message">
                    <xsl:with-param name="msg-parts" select="('Document not found (or not well-formed): ', yatcs:q($href2Canonical))"/>
                </xsl:call-template>
            </xsl:if>

            <xsl:if test="$doc1Available and $doc2Available">
                <xsl:call-template name="yatcs:compare-documents">
                    <xsl:with-param name="doc1" select="doc($href1Canonical)"/>
                    <xsl:with-param name="doc2" select="doc($href2Canonical)"/>
                    <xsl:with-param name="compareRules" select="$compareRules"/>
                </xsl:call-template>
            </xsl:if>

        </xsl:variable>
        
        <!-- Create the result element: -->
        <xsl:variable name="differences" as="xs:boolean" select="exists($comparisonResults)"/>
        <compare-documents href1="{$href1Canonical}" href2="{$href2Canonical}" differences="{$differences}">
            <!-- Output the messages (but without a namespace): -->
            <xsl:for-each select="$comparisonResults">
                <xsl:element name="{local-name(.)}">
                    <xsl:sequence select="@* | node()"/>
                </xsl:element>
            </xsl:for-each>
        </compare-documents>

    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template name="local:create-message" as="element(yatcs:message)">
        <xsl:param name="msg-parts" as="item()+" required="true"/>

        <yatcs:message>
            <xsl:value-of select="yatcs:items2str($msg-parts)"/>
        </yatcs:message>
    </xsl:template>

</xsl:stylesheet>
