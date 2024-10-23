<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211833513620100">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA xml to wiki table(s) for cio
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

    <!-- donkerblauw -->
    <xsl:variable name="tabelkop-achtergrond-kleur">#1F497D;</xsl:variable>
    <xsl:variable name="tabelkop-font-kleur">white</xsl:variable>
    <!-- grijzig -->
    <xsl:variable name="element-achtergrond-kleur">#E3E3E3;</xsl:variable>
    <xsl:variable name="elementwaarde-achtergrond-kleur">white</xsl:variable>

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
    
    <xsl:template match="patient_als_auteur | patient_als_bron | onderwerp/patient | informatiebron/zorgverlener | auteur/zorgverlener_als_auteur" mode="maak-tabel-rij">
        <!-- Do nothing with obsolete groups, handle their children with the element name of the parent -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1, 
            but typically it is inputted from whoever is calling this template -->
        </xsl:param>
        <xsl:apply-templates select="*" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name" select="nf:element-name(.)"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*[@datatype='reference']" mode="maak-tabel-rij">
        <!-- Ada instance elements with datatype 'reference' need special handling -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1, 
            but typically it is inputted from whoever is calling this template -->
        </xsl:param>
        <xsl:variable name="theElement">
            <xsl:element name="{local-name()}">
                <xsl:copy-of select="@value | @conceptId"/>
            </xsl:element>
        </xsl:variable>
        <xsl:apply-templates select="$theElement" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name" select="nf:element-name(.)"/>
            <xsl:with-param name="value-domain" select="@datatype"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="betrokkene_als_auteur" mode="maak-tabel-rij">
        <!-- Do nothing with obsolete groups, handle their children with the element name of both parent and child -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1, 
            but typically it is inputted from whoever is calling this template -->
        </xsl:param>
        <xsl:apply-templates select="contactpersoon" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name" select="concat(nf:element-name(.), ' - contactpersoon')"/>
        </xsl:apply-templates>
    </xsl:template>

</xsl:stylesheet>
