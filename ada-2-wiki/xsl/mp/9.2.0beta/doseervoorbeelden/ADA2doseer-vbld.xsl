<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:file="http://expath.org/ns/file" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211980943790100">
<!-- ================================================================== -->
<!--
        
            Author: Nictiz
            Purpose: This XSL was created to facilitate mapping from ADA xml to wiki for example dosage information.
            
                History:
                
                    2021-10-15 version 0.1 Initial version
                
            
        
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

<xsl:import href="../../ADA2test-wiki-table-mp.xsl"/>
<xsl:import href="https://raw.githubusercontent.com/Nictiz/HL7-mappings/master/ada_2_hl7/mp/9.2.0/2_hl7_mp_include_920.xsl"/>
<xsl:import href="https://raw.githubusercontent.com/Nictiz/HL7-mappings/MP920/ada_2_fhir-r4/zibs2020/payload/zib_latest_package.xsl"/>
<!--<xsl:import href="../../../../../HL7-mappings-dev/ada_2_fhir-r4/zibs2020/payload/zib_latest_package.xsl"/>-->
<xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-16"/>

<!-- param for ada2hl7 to always use concrete dateT for making HL7 instances -->
<!-- only give dateT a value if you want conversion of relative T dates -->
<xsl:param name="dateT" as="xs:date?" select="current-date()"/>

<!-- override ada release file and transaction to be handled -->
<xsl:param name="adaReleaseFile" select="document('../../../../projects/mp-mp920/definitions/mp-mp920-ada-release.xml')"/>
<xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.271</xsl:param>
<!--    <xsl:param name="doc-ada-new" select="document('../../../../projects/mp-mp907/new/sturen_voorschrift.xml')"/>-->
<xsl:param name="dir-4-ada" select="'../../9.2.0/doseervoorbeelden/ada_instance/'"/>

<xsl:param name="do-ada-files" select="true()"/>
<!--    <xsl:param name="do-ada-files" select="false()"/>-->

<!-- whether to generate a user instruction description text from the structured information, from MP 910 onwards this is always true, so only has effect on older stuff -->
<xsl:param name="generateInstructionText" as="xs:boolean?" select="true()"/>

<!-- FHIR metadata stuff -->

<xsl:param name="fhirMetadata" as="element()*">

<xsl:variable name="adaXmls" as="element()*">
<xsl:variable name="fileList" select="file:list($dir-4-ada)"/>
<xsl:for-each select="$fileList">
<xsl:if test="file:is-dir(concat($dir-4-ada, .))">
<xsl:variable name="ada-files" select="collection(concat('ada_instance/', ., '?select=*.xml'))"/>
<xsl:sequence select="$ada-files/adaxml"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>

<xsl:call-template name="buildFhirMetadata">
<xsl:with-param name="in" select="$adaXmls//(patient | reden_van_voorschrijven/probleem | medicatieverstrekking/afleverlocatie | bouwstenen/(zorgverlener | zorgaanbieder | farmaceutisch_product | contactpersoon))"/>
</xsl:call-template>
</xsl:param>

<!-- ================================================================== -->

<xsl:template match="/"><!--  -->
<xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Medicatieproces 9 2.0.0 beta: Voorbeelden doseringen}}
= Voorbeelden doseringen =
Deze paragraaf bevat uitgewerkte voorbeelden voor het concept "Gebruiksinstructie" uit de dataset van de Informatiestandaard Medicatieproces 9. Deze uitwerking is bedoeld als illustratie van de mogelijkheden die deze structuur biedt. De voorbeelden zijn ontleend aan zowel ambulante als instellingsmedicatie en dus niet altijd voor iedereen direct relevant. De software dient hierbij de eindgebruiker adequaat te ondersteunen.

</xsl:text>
<xsl:choose>
<xsl:when test="$do-ada-files">
<xsl:variable name="fileList" select="file:list($dir-4-ada)"/>

<xsl:for-each select="$fileList">
<xsl:if test="file:is-dir(concat($dir-4-ada, .))">
<xsl:variable name="headingString">
<xsl:value-of select="nf:first-cap(replace(substring(., 3, string-length(.) - 3), '-', ' '))"/>
</xsl:variable>
<xsl:text>
== </xsl:text><xsl:value-of select="$headingString"/> == 
                        <xsl:variable name="ada-files" select="collection(concat('ada_instance/', ., '?select=*.xml'))"/>
<xsl:apply-templates select="$ada-files/adaxml/data/*" mode="doseervoorbeeld"/>
</xsl:if>
</xsl:for-each>
<!-- legacy code, do xml files which are not in subdirectories -->
<xsl:variable name="ada-files" select="collection('ada_instance/?select=*.xml')"/>
<xsl:apply-templates select="$ada-files/adaxml/data/*" mode="doseervoorbeeld"/>
</xsl:when>
<xsl:otherwise>
<xsl:apply-templates select="adaxml/data/*" mode="doseervoorbeeld"/>
</xsl:otherwise>
</xsl:choose>
<xsl:text>
</xsl:text>
</xsl:template>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<xsl:template match="adaxml/data/*" mode="wiki"><!-- Override of the template from the imported stylesheet. Makes it a suitable for doseervoorbeelden 9 2.0.0 -->
<!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
<xsl:variable name="tabel" as="element()">
<tabellen>
<xsl:call-template name="tabel-ther-bouwsteen4doseervoorbeelden">
<xsl:with-param name="in" select=".//medicatieafspraak"/>
<!-- whether we want generated usage instructions based on the structured data -->
<xsl:with-param name="generateForPre910" select="$generateInstructionText"/>
</xsl:call-template>
</tabellen>
</xsl:variable>

<!-- output the contents in structure of dataset -->
<xsl:if test=".//medicatieafspraak">
<xsl:text>
====Medicatieafspraken </xsl:text>
<xsl:text> ====
</xsl:text>
<xsl:apply-templates select="$tabel/tabel[@type eq 'medicatieafspraak']" mode="wiki"/>
</xsl:if>

<!-- output the contents in HL7v3 CDA example -->
<xsl:text>
====in XML HL7v3 CDA====
{{Collapse top|XML contents}}
</xsl:text>
<syntaxhighlight lang="xml">
<xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9324_20201015132016">
<xsl:with-param name="in" select=".//medicatieafspraak"/>
</xsl:call-template>
</syntaxhighlight>
<xsl:text>
{{Collapse bottom}}</xsl:text>
<!-- output the contents in FHIR example -->

<xsl:text>
====in XML HL7 FHIR====
{{Collapse top|XML contents}}
</xsl:text>
<syntaxhighlight lang="xml">
<xsl:for-each select=".//medicatieafspraak">
<xsl:call-template name="nl-core-MedicationAgreement">
<xsl:with-param name="in" select="."/>
<xsl:with-param name="subject" select="../../patient"/>
<xsl:with-param name="requester" select="ancestor::adaxml/data/*/bouwstenen/zorgverlener[@id = current()/voorschrijver/zorgverlener/@value]"/>
</xsl:call-template>
</xsl:for-each>
</syntaxhighlight>
<xsl:text>
{{Collapse bottom}}</xsl:text>

</xsl:template>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<xsl:template name="ext-RenderedDosageInstruction" mode="ext-RenderedDosageInstruction" match="gebruiksinstructie" as="element(f:extension)?"><!-- Create the ext-RenderedDosageInstruction extension from ADA InstructionsForUse. -->
<xsl:param name="in" as="element()?" select=".">
<!-- The ADA instance to extract the rendered dosage instruction from, override for default function in nl-core-InstructionsForUse -->
</xsl:param>

<xsl:for-each select="$in">
<xsl:for-each select="omschrijving[@value != '']">
<f:extension url="http://nictiz.nl/fhir/StructureDefinition/ext-RenderedDosageInstruction">
<f:valueString>
<xsl:attribute name="value">
<xsl:choose>
<xsl:when test="$generateInstructionText">
<xsl:value-of select="nf:gebruiksintructie-string(..)"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@value"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
</f:valueString>
</f:extension>
</xsl:for-each>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>