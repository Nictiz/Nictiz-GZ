<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.202304060901230203290200">
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
    
    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.90.77.4.2446</xsl:param>
    
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
        <xsl:variable name="kernset-nn" as="element(kernset_neonatologie)*" select="if ($do-ada-files) then $ada-files/adaxml/data/kernset_neonatologie else adaxml/data/kernset_neonatologie"/>
        <xsl:text>
{{DISPLAYTITLE:Kernset Neonatologie 3.0 - dekkingsgraad scenario's}}
__NUMBEREDHEADINGS__
{{IssueBox|Deze pagina is nog in bewerking}}
[[Bestand:Nictiz_logo_PO_rechts_rgb.png |link=https://www.nictiz.nl/|rechts|Naar nictiz.nl]]

=Dekkingsgraad scenario's voor Kernset Neonatologie 3.0=
De volgende scenario's zijn meegenomen:</xsl:text>
        <xsl:for-each select="$kernset-nn">
            <xsl:text>
* </xsl:text>
            <xsl:value-of select="concat(./@title, '(id: ',./@id, ')')"/>
        </xsl:for-each>
        <xsl:text>
Zie voor de inhoud van deze scenario's: [[Gebz:Vdraft_AddendaKwalificatieKernsetNeonatologie30]]. Onderstaande tabel toont de unieke waarden voor ieder veld. Lege velden worden niet geraakt door de meegenomen bovenstaande scenario's.</xsl:text>
        <xsl:apply-templates select="$doc-ada-new/kernset_neonatologie" mode="dekkingsgraad">
            <xsl:with-param name="adaxml" select="$kernset-nn"/>
        </xsl:apply-templates>
        <xsl:text>          
[[Categorie:Kwalificatie]]</xsl:text>
    </xsl:template>
</xsl:stylesheet>
