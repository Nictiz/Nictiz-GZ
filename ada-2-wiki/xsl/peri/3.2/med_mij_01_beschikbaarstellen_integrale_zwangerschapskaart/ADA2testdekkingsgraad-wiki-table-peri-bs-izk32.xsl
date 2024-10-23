<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023040609012308810250200">
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
    
    <xsl:import href="../../ADA2test-wiki-table-peri.xsl"/>
    
    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>
    
    <!-- ======================================================================= -->
    
    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.90.77.4.2437</xsl:param>
    
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
        <xsl:variable name="kernset-gz" as="element(kernset_geboortezorg)*" select="if ($do-ada-files) then $ada-files/adaxml/data/kernset_geboortezorg else adaxml/data/kernset_geboortezorg"/>
        <xsl:text>
{{DISPLAYTITLE:Kernset Geboortezorg 2.3 - dekkingsgraad scenario's}}
__NUMBEREDHEADINGS__
{{IssueBox|Deze pagina is nog in bewerking}}
[[Bestand:Nictiz_logo_PO_rechts_rgb.png |link=https://www.nictiz.nl/|rechts|Naar nictiz.nl]]

=Dekkingsgraad scenario's voor Kernset Geboortezorg 2.3=
De volgende scenario's zijn meegenomen:</xsl:text>
        <xsl:for-each select="$kernset-gz">
            <xsl:text>
* </xsl:text>
            <xsl:value-of select="concat(./@title, '(id: ',./@id, ')')"/>
        </xsl:for-each>
        <xsl:text>
Zie voor de inhoud van deze scenario's: [[Gebz:Vdraft_AddendaKwalificatieKernsetGeboortezorg23]]. Onderstaande tabel toont de unieke waarden voor ieder veld. Lege velden worden niet geraakt door de meegenomen bovenstaande scenario's.</xsl:text>
        <xsl:apply-templates select="$doc-ada-new/kernset_geboortezorg" mode="dekkingsgraad">
            <xsl:with-param name="adaxml-gz" select="$kernset-gz"/>
        </xsl:apply-templates>
        <xsl:text>          
[[Categorie:Kwalificatie]]</xsl:text>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adres" mode="maak-tabel-rij-dekkingsgraad">
        <!--  only postcode is present in address in kernset 2.3, so no reason to nest the postcode under group 'adres' -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:param name="adaxml-element" as="element()*">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./postcode" mode="maak-tabel-rij-dekkingsgraad">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Adres - postcode</xsl:with-param>
            <xsl:with-param name="adaxml-element" select="$adaxml-element/adres/postcode"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="aanpakker_kind_groep" mode="maak-tabel-rij-dekkingsgraad">
        <!--  only rol_aanpakker_kind is present in aanpakker_kind_groep in kernset 2.3, so no reason to nest this under the group -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:param name="adaxml-element" as="element()*">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./rol_aanpakker_kind" mode="maak-tabel-rij-dekkingsgraad">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Aanpakker kind - rol aanpakker kind</xsl:with-param>
            <xsl:with-param name="adaxml-element" select="$adaxml-element/rol_aanpakker_kind"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="maternale_onderzoeksgegevens" mode="maak-tabel-rij-dekkingsgraad">
        <!--  only urine_bloed_en_aanvullende_onderzoeken/psie is present in maternale_onderzoeksgegevens in kernset 2.3, so no reason to nest this under the group -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:param name="adaxml-element" as="element()*">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./urine_bloed_en_aanvullende_onderzoeken/psie" mode="maak-tabel-rij-dekkingsgraad">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Maternale onderzoeksgegevens - urine bloed en aanvullende onderzoeken - PSIE</xsl:with-param>
            <xsl:with-param name="adaxml-element" select="$adaxml-element/urine_bloed_en_aanvullende_onderzoeken/psie"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="supervisor_groep" mode="maak-tabel-rij-dekkingsgraad">
        <!--  only rol_supervisor is present in supervisor_groep in kernset 2.3, so no reason to nest this under the group -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:param name="adaxml-element" as="element()*">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./rol_supervisor" mode="maak-tabel-rij-dekkingsgraad">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Supervisor - rol supervisor</xsl:with-param>
            <xsl:with-param name="adaxml-element" select="$adaxml-element/rol_supervisor"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="vorige_baring/demografische_gegevens" mode="maak-tabel-rij-dekkingsgraad">
        <!--  only geboortedatum is present in vorige_baring/demografische_gegevens in kernset 2.3, so no reason to nest the geboortedatum under group 'demografische_gegevens' -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:param name="adaxml-element" as="element()*">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./geboortedatum" mode="maak-tabel-rij-dekkingsgraad">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="adaxml-element" select="$adaxml-element/geboortedatum"/>
        </xsl:apply-templates>
    </xsl:template>
</xsl:stylesheet>
