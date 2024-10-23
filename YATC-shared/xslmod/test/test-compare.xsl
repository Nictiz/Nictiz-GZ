<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.vmj_jk1_rzb" exclude-result-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Test driver for ../compare.mod.xsl
       
       Created to test the <compare-rules> functionality, but of course it also tests (some of) the general
       compare functionality.
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

    <xsl:include href="../general.mod.xsl"/>
    <xsl:include href="../compare.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- Setup: -->

    <xsl:variable name="doc1" as="document-node()">
        <xsl:document>
            <test>
                <IGNORETHIS>1x234</IGNORETHIS>
                <!--<TEXTNODIFF>1234</TEXTNODIFF>-->
                <ATTR nodiff="1234"/>
            </test>
        </xsl:document>
    </xsl:variable>

    <xsl:variable name="doc2" as="document-node()">
        <xsl:document>
            <test>
                <IGNORETHIS>12345</IGNORETHIS>
                <!--<TEXTNODIFF>12345</TEXTNODIFF>-->
                <ATTR nodiff="12345"/>
            </test>
        </xsl:document>
    </xsl:variable>

    <!-- Must be valid against: ../../xsdmod/compare-rules.mod.xsd-->
    <xsl:variable name="compareRules" as="element(compare-rules)">
        <compare-rules>
            <!--<ignore-elements simple-match="IGNORETHIS SOMETHINGELSE"/>-->
            <do-not-compare-text-nodes-on-match simple-match="IGNORETHIS" regexp="12"/>
            <do-not-compare-text-nodes-on-match simple-match="TEXTNODIFF" regexp="^12"/>
            <do-not-compare-attribute-values-on-match simple-match="ATTR/@*" regexp="^12"/>
            <!--<ignore-attributes simple-match="ATTR/@x x y z"/>-->
        </compare-rules>
    </xsl:variable>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <compare-test-result timestamp="{current-dateTime()}">
            <input-1>
                <xsl:copy-of select="$doc1/*"/>
            </input-1>
            <input-2>
                <xsl:copy-of select="$doc2/*"/>
            </input-2>
            <rules>
                <xsl:copy-of select="$compareRules"/>
            </rules>
            <compare-results>
                <xsl:call-template name="yatcs:compare-documents">
                    <xsl:with-param name="doc1" select="$doc1"/>
                    <xsl:with-param name="doc2" select="$doc2"/>
                    <xsl:with-param name="compareRules" select="$compareRules"/>
                </xsl:call-template>
            </compare-results>
        </compare-test-result>
    </xsl:template>


</xsl:stylesheet>
