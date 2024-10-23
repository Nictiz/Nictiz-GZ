<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211828913640100">
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
    
    <xsl:output method="text" encoding="utf-16"/>
    
    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>
    
    <xsl:import href="../../ADA2test-wiki-table-cio.xsl"/>
    
    <!-- ======================================================================= -->
    
    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>
    
    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.26.4.18</xsl:param>
    <xsl:param name="transactionType">beschikbaarstellen</xsl:param>
    
    <xsl:param name="doAdaFiles" as="xs:boolean" select="true()"/>

    <xsl:param name="debug" as="xs:boolean" select="true()"/>
    
    <!-- Make sure the conversion uses all applicable repo stuff -->
    <xsl:variable name="this" as="element()*">
        <xsl:choose>
            <xsl:when test="$doAdaFiles">
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
        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Beschikbaarstellen medicatiecontra-indicaties: addendum inhoudelijke gegevens}}

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:choose>
            <xsl:when test="$doAdaFiles">
                <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wiki"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml/data/*" mode="wiki">
        <!-- Override of the adaxml/data template from the imported stylesheet ADA2test-wiki-table.xsl. Makes it a bit nicer for cio -->
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabellen voor top level elementen -->
                <xsl:apply-templates select="patient" mode="maak-tabel"/>
                <xsl:for-each select="medicatie_contra_indicatie">
                    <xsl:apply-templates select="." mode="maak-tabel">
                        <!-- depending on test scenario, optionally add different addition for table title -->
                        <xsl:with-param name="appendToTitle" select="alert/alert_naam/@displayName"/>
                    </xsl:apply-templates>
                </xsl:for-each>
                <xsl:for-each select="zorgverlener | zorgaanbieder | contactpersoon">
                    <xsl:apply-templates select="." mode="maak-tabel"/>
                </xsl:for-each>
                <xsl:apply-templates select="*[not(local-name() = ('patient', 'medicatie_contra_indicatie', 'zorgverlener', 'zorgaanbieder', 'contactpersoon'))]" mode="maak-tabel"/>
            </tabellen>
        </xsl:variable>
        
        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tabel"/>
            <xsl:with-param name="filename" select="@id"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>

        <xsl:text>
</xsl:text>
        <xsl:value-of select="concat('&lt;section begin=', ./@id, ' /&gt;')"/>
        <xsl:text>
===Scenario </xsl:text>
        <xsl:value-of select="@title"/>
        <xsl:text>===
</xsl:text>

        <xsl:for-each select="$tabel/tabel">
            <xsl:text>
==== </xsl:text>
            <xsl:value-of select="@title"/>
            <xsl:text>====
</xsl:text>
            <xsl:apply-templates select="." mode="wiki">
                <xsl:with-param name="widthGegevenselement">30</xsl:with-param>
            </xsl:apply-templates>
        </xsl:for-each>
        <xsl:value-of select="concat('&lt;section end=', ./@id, ' /&gt;')"/>
    </xsl:template>
</xsl:stylesheet>
