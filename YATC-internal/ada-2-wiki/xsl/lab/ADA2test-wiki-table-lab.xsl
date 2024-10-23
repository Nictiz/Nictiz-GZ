<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:html="http://www.w3.org/1999/xhtml" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.202302071459321309330100" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <!-- ================================================================== -->
    <!--
         This XSL was created to facilitate mapping from ADA xml to wiki table(s) 
         http://nictiz.nl/fhir/StructureDefinition/zib-MedicationAdministrationAgreement. 
         The HL7 V3 interaction contains both logistical information and therapeutic information.
            
         History:
         2018-06-12 version 0.1 Initial version
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

    <xsl:import href="../utils/adainstance_2_wikitable.xsl"/>

    <xsl:include href="../../xslmod/ada-2-wiki-build-standard-ada-release-file.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:param name="transactionId" as="xs:string" select="'2.16.840.1.113883.2.4.3.11.60.25.4.28'"/>
    <xsl:param name="transactionType" as="xs:string" select="'raadplegen'"/>

    <!-- ======================================================================= -->

    <xsl:variable name="voorbeeld-string">
        <xsl:choose>
            <xsl:when test="$transactionType != 'raadplegen'">
                <xsl:value-of select="' [voorbeeldgegevens, mag gevuld met eigen testgegevens]'"/>
            </xsl:when>
        </xsl:choose>
    </xsl:variable>

    <!-- donkerblauw -->
    <xsl:variable name="tabelkop-achtergrond-kleur">#1F497D;</xsl:variable>
    <xsl:variable name="tabelkop-font-kleur">white</xsl:variable>
    <!-- grijzig -->
    <xsl:variable name="element-achtergrond-kleur">#E3E3E3;</xsl:variable>
    <xsl:variable name="elementwaarde-achtergrond-kleur">white</xsl:variable>

    <!-- bsn append string -->
    <xsl:variable name="bsnAppendString">[BSN]</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!--  -->
        <xsl:text>
__NUMBEREDHEADINGS__
{{{IssueBox|Deze pagina is nog in bewerking}}
[[Bestand:Nictiz_logo_PO_rechts_rgb.png |link=https://www.nictiz.nl/|rechts|Naar nictiz.nl]]

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaextension" mode="maak-tabel-rij-dekkingsgraad"><!-- No dekkingsgraad tabel rij for adaextension, ada extensions are not in use in lab --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nwf:clean-scenarionr" as="xs:string?">
        <!-- Cleans scenario number to just the number and letter: 1.2a or just 1 or just 1.1 
            No asterisk or other characters, no ' optioneel' or other words following a space -->
        <xsl:param name="dirtyScenarioId" as="xs:string?">
            <!-- The dirty scenario number containing stuff we don't want -->
        </xsl:param>
        <xsl:value-of select="replace(normalize-space($dirtyScenarioId), '((\d+[a-zA-Z]*\.?)+[a-zA-Z]*).*', '$1')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nwf:replace-string-for-wiki-table" as="xs:string*">
        <!--  Replaces contents of a string so that it is rendered correctly in a wiki table cell. 
            Override the "html-ready" function in adainstance_2_wikitable since it fails due to non-xml compliant strings in MP ada instances (i.e. non closing <br> tags) -->
        <xsl:param name="in" as="xs:string*">
            <!-- The string to be placed in the table cell -->
        </xsl:param>

        <xsl:for-each select="$in">
            <!-- replace carriage return &#xA with html <br/>, otherwise wiki renders it as next line and table structure is lost -->
            <xsl:value-of select="replace(., '&#xA;', '&lt;br/&gt;')"/>
        </xsl:for-each>
    </xsl:function>

</xsl:stylesheet>
