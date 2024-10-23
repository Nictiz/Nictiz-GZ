<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.202303070821190125740100">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA xml to wiki table(s) 
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
    
    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>
    
    <xsl:import href="../../ADA2test-wiki-table-mp.xsl"/>
    
    <!-- ======================================================================= -->
    
    <xsl:param name="do-ada-files" select="true()"/>
    
    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>
    
    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.162</xsl:param>
    <xsl:param name="transactionType">raadplegen</xsl:param>

    <xsl:param name="debug" as="xs:boolean?" select="true()"/>

    <!-- whether to generate a user instruction description text from the structured information, 
         from MP 910 onwards this is always true, so only has effect on older stuff -->
    <xsl:param name="generateInstructionText" as="xs:boolean?" select="true()"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!--  -->
        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Raadplegen verstrekkingenvertaling 9.0.7: addendum inhoudelijke gegevens kwalificatie}}
[[Bestand:Nictiz_logo_PO_rechts_rgb.png |link=https://www.nictiz.nl/|rechts|Naar nictiz.nl]]

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:apply-templates select="$ada-files//adaxml/data/*" mode="wiki"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>

[[Categorie:Kwalificatie]]</xsl:text>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="toedieningsweg[@code='NI' and @codeSystem=$oidHL7NullFlavor]" mode="maak-tabel-rij"><!-- Custom template for toedieningsweg with nullFlavor NI, since we want to ignore those in verstrekkingenvertaling --></xsl:template>
</xsl:stylesheet>
