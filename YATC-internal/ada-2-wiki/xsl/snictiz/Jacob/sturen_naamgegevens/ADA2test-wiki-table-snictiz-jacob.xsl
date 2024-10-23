<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023040610442463347530200">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA xml to wiki table(s).
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
    <!-- SETUP: -->

    <xsl:output method="text" encoding="UTF-16"/>

    <xsl:import href="../../../utils/adainstance_2_wikitable.xsl"/>

    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>
    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-ada-release-file.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:param name="transactionId">2.16.9999.1.113883.2.4.3.11.9999.905.4.165</xsl:param>

    <xsl:param name="debug" as="xs:boolean?" select="true()"/>

    <xsl:param name="do-ada-files" select="true()"/>

    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>

    <!-- make sure the conversion uses all applicable repo stuff -->
    <xsl:variable name="this" as="element()*">
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:sequence select="$ada-files//adaxml/data/*"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="//adaxml/data/*"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!--  -->
        <xsl:value-of select="'&lt;noinclude&gt;'"/>
        <xsl:text>
{{DISPLAYTITLE:Sandbox Nictiz - Jacob - sturen naamgegevens - inhoud kwalificatie}}
__NUMBEREDHEADINGS__

=Addenda voor inhoudelijke gegevens Sturen naamgegevens=</xsl:text>
        <xsl:value-of select="'&lt;/noinclude&gt;'"/>
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wiki"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>
[[Categorie:Kwalificatie]]</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>
