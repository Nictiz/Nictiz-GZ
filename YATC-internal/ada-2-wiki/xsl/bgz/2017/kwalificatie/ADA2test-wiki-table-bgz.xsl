<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023041109011318520520200">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA xml to wiki table(s) 
        http://nictiz.nl/fhir/StructureDefinition/zib-MedicationAdministrationAgreement. 
        The HL7 V3 interaction contains both logistical information and therapeutic information.
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
    
    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-ada-release-file.mod.xsl"/>
    
    <xsl:import href="../../../utils/adainstance_2_wikitable.xsl"/>
    
    <xsl:strip-space elements="*"/>
    
    <!-- ======================================================================= -->

    <!-- donkerblauw -->
    <xsl:variable name="tabelkop-achtergrond-kleur">#1F497D;</xsl:variable>
    <xsl:variable name="tabelkop-font-kleur">white</xsl:variable>
    <!-- grijzig -->
    <xsl:variable name="element-achtergrond-kleur">#E3E3E3;</xsl:variable>
    <xsl:variable name="elementwaarde-achtergrond-kleur">white</xsl:variable>

    <xsl:variable name="debug" select="false()"/>

    <!-- ================================================================== -->

    <xsl:template match="/"><!--  -->
        <xsl:text>
__NUMBEREDHEADINGS__
=Addenda voor inhoudelijke gegevens=
Deze pagina bevat de gegevens voor de kwalificatiescenario's van de BgZ</xsl:text>
        <xsl:text>
=Scenario 1: Patiënt A=</xsl:text>
        <xsl:for-each select="//resource[starts-with(*/@title, 'bgz-msz--patA')]">
            <xsl:apply-templates select="*" mode="wiki"/>
        </xsl:for-each>
        <xsl:text>
=Scenario 1: Patiënt B=</xsl:text>
        <xsl:for-each select="//resource[starts-with(*/@title, 'bgz-msz-patB')]">
            <xsl:apply-templates select="*" mode="wiki"/>
        </xsl:for-each>
        <xsl:text>
[[Categorie:Kwalificatie]]</xsl:text>--&gt; </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="resource/*" mode="wiki">
        <!--  -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- Een tabel per top-level group -->
                <xsl:for-each select="./*">
                    <!-- If this ada element has an @id, let's put it in the group name and add an anchor in a span html element -->
                    <xsl:if test="nf:get-concept-type(.) eq 'group'">
                        <xsl:variable name="groepNaam" as="xs:string*">
                            <xsl:value-of select="nf:element-name(.)"/>
                        </xsl:variable>
                        <tabel type="{./local-name()}" title="{concat($groepNaam, ' [', ../@title, ']')}" section="{../@title}">
                            <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                                <xsl:attribute name="id" select="normalize-space(@id)"/>
                            </xsl:if>
                            <!-- een tabelrij (gegevenselement of groep) per onderliggend dataset concept -->
                            <xsl:apply-templates select="./*[not(@hidden)]" mode="maak-tabel-rij"/>
                        </tabel>
                    </xsl:if>
                </xsl:for-each>
            </tabellen>
        </xsl:variable>
        <xsl:if test="$debug">
            <xsl:variable name="href" select="concat('debug/', @title, '.xml')"/>
            <xsl:result-document href="{$href}" format="xml" indent="true">
                <xsl:copy-of select="$tabel"/>
            </xsl:result-document>
        </xsl:if>
        <xsl:variable name="transactie-shortname" select="./@shortName"/>
        <xsl:for-each select="$tabel/tabel">
            <xsl:text>
</xsl:text>
            <xsl:value-of select="$tabelKopMarker"/>
            <xsl:value-of select="@title"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="$tabelKopMarker"/>
            <xsl:text>
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=', @section, ' /&gt;')"/>
            <xsl:apply-templates select="." mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=', @section, ' /&gt;')"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="hcimroot" mode="maak-tabel-rij">
        <!-- Creates a wiki table row, omits most hcimroot data -->
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer"/>

        <!-- item -->
        <xsl:for-each select=".//patient[@value]">
            <xsl:variable name="element-name" select="nf:element-name(.)" as="xs:string?"/>
            <xsl:variable name="value-domain" select="nf:get-concept-value-domain(., 'type')" as="xs:string?"/>
            <xsl:variable name="concept-type" select="nf:get-concept-type(.)"/>
            <xsl:element name="gegevenselement" namespace="">
                <xsl:attribute name="conceptId" select="@conceptId"/>
                <xsl:attribute name="level" select="$level"/>
                <xsl:attribute name="naam" select="$element-name"/>
                <xsl:attribute name="waarde" select="nf:maak-waarde-basedon-valuedomain(., $value-domain, false(), true())"/>
                <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                    <xsl:attribute name="id" select="normalize-space(@id)"/>
                </xsl:if>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:element-name" as="xs:string?">
        <!-- Create a wiki friendly element name -->
        <xsl:param name="current-element" as="element()?">
            <!-- The element for which to make the name -->
        </xsl:param>
        <xsl:variable name="local-name" select="$current-element/local-name()"/>
        <xsl:variable name="conceptId" select="$current-element/@conceptId"/>
        <xsl:variable name="conceptDef" select="$adaReleaseFile//concept[@id=$conceptId][@statusCode!='deprecated'][1]"/>
        <xsl:variable name="name">
            <xsl:choose>
                <xsl:when test="$conceptDef/contains[@ref]">
                    <xsl:variable name="refDef" select="$adaReleaseFile//concept[@id=$conceptDef/contains/@ref][@statusCode!='deprecated'][1]"/>
                    <xsl:value-of select="concat('referentie:', $refDef[1]/name[@language='nl-NL'], ' (reference:', $refDef[1]/name[@language='en-US'], ')')"/>
                </xsl:when>
                <xsl:when test="$conceptDef">
                    <xsl:value-of select="concat($conceptDef[1]/name[@language='nl-NL'], ' (', $conceptDef[1]/name[@language='en-US'], ')')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="translate(nf:first-cap($local-name), '_', ' ')"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:value-of select="$name"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:get-concept-value-domain" as="xs:string?">
        <!-- Finds valuedomain @type or @originaltype of a concept in ada release file. -->
        <xsl:param name="currentConcept" as="element()?">
            <!-- The current ada concept, must have @conceptId to find the corresponding concept in ada release file -->
        </xsl:param>
        <xsl:param name="attributeToReturn" as="xs:string?">
            <!-- The attribute to return, currently supported: type and originaltype. Defaults to type. -->
        </xsl:param>
        <xsl:if test="$currentConcept">
            <xsl:variable name="adaReleaseConcept" select="($adaReleaseFile//concept[@id = $currentConcept/@conceptId])[1]"/>
            <xsl:choose>
                <xsl:when test="upper-case(normalize-space($attributeToReturn)) = 'ORIGINALTYPE'">
                    <xsl:value-of select="$adaReleaseConcept/valueDomain/@originaltype"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <!-- @type reference is no longer used in ada release files, so let's add it here, so we know when to make a hyperlink in wiki -->
                        <xsl:when test="$adaReleaseConcept[valueDomain/@type = 'string' and contains]">reference</xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$adaReleaseConcept/valueDomain/@type"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:zorgaanbieder-string" as="xs:string*">
        <!--  -->
        <xsl:param name="in" as="element()?">
            <!--  -->
        </xsl:param>
        <xsl:value-of select="string-join($in/zorgaanbieder/zorgaanbieder_identificatie_nummer//concat(@root, ' - ', @value), ' ')"/>
        <xsl:value-of select="string-join($in/zorgaanbieder/organisatie_naam//@value, ' ')"/>
        <xsl:if test="$in//afdeling_specialisme/@displayName">
            <xsl:value-of select="concat(' - ', $in//specialisme/@displayName, '. ')"/>
        </xsl:if>
        <xsl:value-of select="string-join($in/zorgaanbieder/adres//string-join(@value | @displayName, ' - '), ' ')"/>
        <xsl:value-of select="string-join($in/zorgaanbieder/telefoon_email//string-join(@value | @displayName, ' - '), ' ')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:zorgverlener-string" as="xs:string*">
        <!--  -->
        <xsl:param name="in" as="element()?">
            <!--  -->
        </xsl:param>
        <xsl:value-of select="string-join($in/zorgverlener/zorgverlener_naam//@value, ' ')"/>
        <xsl:if test="$in//specialisme/@displayName">
            <xsl:value-of select="concat(' - ', $in//specialisme/@displayName, '. ')"/>
        </xsl:if>
        <xsl:value-of select="string-join($in//zorgaanbieder/organisatie_naam/@value, ' ')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:persoon-string" as="xs:string*">
        <!--  -->
        <xsl:param name="in" as="element(persoon)?">
            <!--  -->
        </xsl:param>
        <xsl:value-of select="string-join($in/naamgegevens//@value, ' ')"/>
        <xsl:if test="$in/rol_of_functie/@displayName">
            <xsl:value-of select="concat(' - ', $in/rol_of_functie/@displayName, '. ')"/>
        </xsl:if>
        <xsl:value-of select="string-join($in/adresgegevens//@value, ' ')"/>
    </xsl:function>
</xsl:stylesheet>
