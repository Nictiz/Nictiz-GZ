<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023040609012289831210200">
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
        <xsl:value-of select="'&lt;noinclude&gt;'"/>
        <xsl:text>
{{DISPLAYTITLE:Kernset Geboortezorg 2.3 - inhoud kwalificatie}}
__NUMBEREDHEADINGS__

=Addenda voor inhoudelijke gegevens Kernset Geboortezorg 2.3=</xsl:text>
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

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adres" mode="maak-tabel-rij">
        <!--  only postcode is present in address in kernset 2.3, so no reason to nest the postcode under group 'adres' -->
        <xsl:param name="level" select="xs:integer(1)">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./postcode" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Adres - postcode</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="aanpakker_kind_groep" mode="maak-tabel-rij">
        <!--  only rol_aanpakker_kind is present in aanpakker_kind_groep in kernset 2.3, so no reason to nest this under the group -->
        <xsl:param name="level" select="xs:integer(1)">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./rol_aanpakker_kind" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Aanpakker kind - rol aanpakker kind</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="maternale_onderzoeksgegevens" mode="maak-tabel-rij">
        <!--  only urine_bloed_en_aanvullende_onderzoeken/psie is present in maternale_onderzoeksgegevens in kernset 2.3, so no reason to nest this under the group -->
        <xsl:param name="level" select="xs:integer(1)">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./urine_bloed_en_aanvullende_onderzoeken/psie" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Maternale onderzoeksgegevens - urine bloed en aanvullende onderzoeken - PSIE</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="supervisor_groep" mode="maak-tabel-rij">
        <!--  only rol_supervisor is present in supervisor_groep in kernset 2.3, so no reason to nest this under the group -->
        <xsl:param name="level" select="xs:integer(1)">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./rol_supervisor" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Supervisor - rol supervisor</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="vorige_baring/demografische_gegevens" mode="maak-tabel-rij">
        <!--  only geboortedatum is present in vorige_baring/demografische_gegevens in kernset 2.3, so no reason to nest the geboortedatum under group 'demografische_gegevens' -->
        <xsl:param name="level" select="xs:integer(1)">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./geboortedatum" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Demografische gegevens - geboortedatum</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="placenta" mode="maak-tabel-rij">
        <!--  only geboorte_placenta is present in placenta in kernset 2.3, so no reason to nest the geboorte_placenta under group 'placenta' -->
        <xsl:param name="level" select="xs:integer(1)">
            <!--  -->
        </xsl:param>
        <xsl:apply-templates select="./geboorte_placenta" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Placenta - geboorte placenta</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="lokale_persoonsidentificatie | dossiernummer | partusnummer" mode="maak-tabel-rij">
        <!-- Items that must be generated by the sending supplier, such as some identifications. We don't want very specific values in the tables. -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>

        <xsl:element name="gegevenselement" namespace="">
            <xsl:attribute name="level" select="$level"/>
            <xsl:attribute name="naam" select="nf:element-name(.)"/>
            <xsl:attribute name="waarde">* [waarde moet gegenereerd worden in het zendende systeem]</xsl:attribute>
        </xsl:element>

    </xsl:template>
</xsl:stylesheet>
