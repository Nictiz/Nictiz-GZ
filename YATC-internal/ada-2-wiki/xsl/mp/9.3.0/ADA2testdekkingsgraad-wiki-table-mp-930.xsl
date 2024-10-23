<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023040508344753423960200">
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

    <xsl:output method="text" encoding="UTF-16"/>

    <xsl:include href="../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>

    <xsl:import href="../ADA2test-wiki-table-mp.xsl"/>

    <!-- ======================================================================= -->

    <xsl:param name="do-ada-files" as="xs:boolean" select="true()"/>

    <xsl:variable name="ada-files" as="document-node()*" select="yatcs:get-ada-files()"/>

    <xsl:param name="transactionShortname" as="xs:string" required="true"/>

    <xsl:variable name="adaView" as="element(view)" select="($adaReleaseFile/ada/applications/application/views/view[dataset[@shortName eq $transactionShortname]])[1]"/>

    <xsl:param name="transactionId" as="xs:string" select="xs:string($adaView/@transactionId)"/>

    <xsl:param name="docAdaNewDirectory" as="xs:string" required="yes"/>
    <xsl:variable name="docAdaNewFilename" as="xs:string" select="yatcs:href-concat(($docAdaNewDirectory, string($adaView/implementation/@shortName) || '.xml'))"/>
    <xsl:variable name="doc-ada-new" as="document-node()">
        <xsl:choose>
            <xsl:when test="doc-available($docAdaNewFilename)">
                <xsl:sequence select="doc($docAdaNewFilename)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('Specified ADA new document ', yatcs:q($docAdaNewFilename), ' not found or not well-formed')"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:variable name="mpTransaction" as="element()*" select="if ($do-ada-files) then $ada-files/adaxml/data/* else adaxml/data/*"/>
        <xsl:text>
{{DISPLAYTITLE:</xsl:text>
        <xsl:value-of select="$adaView/name/text()"/>
        <xsl:text> - dekkingsgraad scenario's}}
__NUMBEREDHEADINGS__
{{IssueBox|Deze pagina is nog in bewerking}}
[[Bestand:Nictiz_logo_PO_rechts_rgb.png |link=https://www.nictiz.nl/|rechts|Naar nictiz.nl]]

=Dekkingsgraad scenario's voor MP9 3.0 </xsl:text>
        <xsl:value-of select="$adaView/name/text()"/>
        <xsl:text>=
De volgende scenario's zijn meegenomen:</xsl:text>
        <xsl:for-each select="$mpTransaction">
            <xsl:text>
* </xsl:text>
            <xsl:value-of select="concat(@title, '(id: ',@id, ')')"/>
        </xsl:for-each>
        <xsl:text>
Onderstaande tabel toont de unieke waarden voor ieder veld. Lege velden worden niet geraakt door de meegenomen bovenstaande scenario's.</xsl:text>
        <xsl:apply-templates select="$doc-ada-new/*" mode="dekkingsgraad">
            <xsl:with-param name="adaxml-in" select="$mpTransaction"/>
        </xsl:apply-templates>
        <!-- IMPORTANT: The <xsl:text> below contains some (not very useful) spaces. These were introduced to make 
             comparison with the original reliable (the original apparently generated these spaces). -->
        <xsl:text>          
</xsl:text>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/*" mode="dekkingsgraad">
        <!-- Template for dekkingsgraad making use of the ada_new instance as context. Supplies all fields. -->
        <xsl:param name="adaxml-in" as="element()*">
            <!-- The adaxml instance(s) so that the coverage of the available fields from ada_new instance can be determined. -->
        </xsl:param>
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabel voor alle bovenste groepen -->
                <xsl:apply-templates select="$doc-ada-new/*/*[*]" mode="maak-tabel-dekkingsgraad">
                    <xsl:with-param name="adaxml-element" select="$adaxml-in/*[*]"/>
                </xsl:apply-templates>
            </tabellen>
        </xsl:variable>

        <!-- == Debug write (@href in original code: "../debug/mg-dekkingsgraad.xml"): == -->
        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tabel"/>
            <xsl:with-param name="filename" select="'mg-dekkingsgraad.xml' || mg-dekkingsgraad.xml"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>

        <xsl:for-each select="$tabel/tabel">
            <xsl:text>
== </xsl:text>
            <xsl:value-of select="./@title"/>
            <xsl:text> ==
</xsl:text>
            <xsl:apply-templates select="." mode="wiki"/>
        </xsl:for-each>
        <xsl:copy-of select="$tabel"/>
    </xsl:template>
</xsl:stylesheet>
