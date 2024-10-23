<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211886557380100">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA xml to wiki table(s) History:
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

    <xsl:output method="text" encoding="UTF-16"/>

    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>

    <xsl:import href="../../ADA2test-wiki-table-mp.xsl"/>

    <!-- ======================================================================= -->

    <xsl:param name="do-ada-files" select="true()"/>

    <xsl:param name="order-by-mbh" required="false" select="string(true())"/>
    
    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>

    <!-- whether to generate a user instruction description text from the structured information, 
         from MP 910 onwards this is always true, so only has effect on older stuff -->
    <xsl:param name="generateInstructionText" as="xs:boolean?" select="true()"/>
    
    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.102</xsl:param>
    
    <!-- ================================================================== -->

    <xsl:template match="/">
        <!--  -->
        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Raadplegen medicatiegegevens 9.0.7: addendum inhoudelijke gegevens kwalificatie}}

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:choose>
            <xsl:when test="xs:boolean($order-by-mbh)">
                <xsl:choose>
                    <xsl:when test="$do-ada-files">
                        <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wikiOrderByMbh"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="adaxml/data/*" mode="wikiOrderByMbh"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="$do-ada-files">
                        <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wiki"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>

[[Categorie:Kwalificatie]]</xsl:text>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml/data/*" mode="wikiOrderByMbh">
        <!-- The adaxml/data template which orders by MBH -->
        <xsl:variable name="patient" select="patient"/>
        <xsl:variable name="patient-achternaam" select="$patient/naamgegevens/geslachtsnaam/achternaam/@value"/>
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabel voor patiënt -->
                <xsl:apply-templates select="$patient" mode="maak-tabel"/>
                <!-- tabel voor documentgegevens -->
                <xsl:apply-templates select=".//(documentgegevens)" mode="maak-tabel"/>
                <!-- tabel voor iedere mbh -->
                <xsl:for-each select="./medicamenteuze_behandeling">
                    <medicamenteuze_behandeling id="{./identificatie/@value}">
                        <!-- tabel voor iedere bouwsteen -->
                        <xsl:apply-templates select="./(medicatieafspraak | verstrekkingsverzoek | toedieningsafspraak | medicatie_gebruik | verstrekking | medicatieverstrekking)" mode="maak-tabel"/>
                    </medicamenteuze_behandeling>
                </xsl:for-each>
            </tabellen>
        </xsl:variable>
        <xsl:text>
==Patiënt </xsl:text>
        <xsl:value-of select="normalize-space(string-join($patient/naamgegevens//*[not(local-name() eq 'naamgebruik')]/@value, ' '))"/>
        <xsl:text>==
</xsl:text>
        <xsl:value-of select="concat('&lt;section begin=', $patient-achternaam, ' /&gt;')"/>
        <xsl:apply-templates select="$tabel/tabel[@type eq 'patient']" mode="wiki"/>
        <xsl:value-of select="concat('&lt;section end=', $patient-achternaam, ' /&gt;')"/>
        <xsl:if test=".//documentgegevens">
            <xsl:text>
===Documentgegevens </xsl:text>
            <xsl:value-of select="$patient-achternaam"/>
            <xsl:text> ===
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=DG_', $patient-achternaam, ' /&gt;')"/>
            <xsl:apply-templates select="$tabel/tabel[@type eq 'documentgegevens']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=DG_', $patient-achternaam, ' /&gt;')"/>
        </xsl:if>
        <xsl:value-of select="concat('&lt;section begin=ALLMBHS_', $patient-achternaam, ' /&gt;')"/>
        <xsl:for-each select="$tabel/medicamenteuze_behandeling">
            <xsl:value-of select="concat('&lt;section begin=MBH_', @id, ' /&gt;')"/>
            <xsl:text>
====Medicamenteuze behandeling </xsl:text>
            <xsl:value-of select="./@id"/>
            <xsl:text> ====
</xsl:text>
            <xsl:apply-templates select="./tabel[@type eq 'medicatieafspraak']" mode="wiki"/>
            <xsl:apply-templates select="./tabel[@type eq 'verstrekkingsverzoek']" mode="wiki"/>
            <xsl:apply-templates select="./tabel[@type eq 'toedieningsafspraak']" mode="wiki"/>
            <xsl:apply-templates select="./tabel[@type = ('verstrekking', 'medicatieverstrekking')]" mode="wiki"/>
            <xsl:apply-templates select="./tabel[@type eq 'medicatie_gebruik']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=MBH_', ./@id, ' /&gt;')"/>
        </xsl:for-each>
        <xsl:value-of select="concat('&lt;section end=ALLMBHS_', $patient-achternaam, ' /&gt;')"/>
    </xsl:template>
</xsl:stylesheet>
