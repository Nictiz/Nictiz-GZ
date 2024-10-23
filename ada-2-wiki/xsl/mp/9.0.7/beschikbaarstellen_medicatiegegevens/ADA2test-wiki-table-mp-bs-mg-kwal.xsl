<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:html="http://www.w3.org/1999/xhtml" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211884557370100">
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

    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>

    <xsl:import href="../../ADA2test-wiki-table-mp.xsl"/>

    <!-- ======================================================================= -->

    <xsl:param name="do-ada-files" select="true()"/>

    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>

    <!-- whether to generate a user instruction description text from the structured information, 
         from MP 910 onwards this is always true, so only has effect on older stuff -->
    <xsl:param name="generateInstructionText" as="xs:boolean?" select="true()"/>

    <xsl:param name="order-by-mbh" as="xs:string" required="false" select="string(true())"/>

    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.102</xsl:param>

    <xsl:param name="debug" as="xs:boolean?" select="true()"/>

    <xsl:param name="htmlOutputDirectory" as="xs:string" required="true"/>

    <!-- whether or not to output HTML -->
    <xsl:param name="outputHtml" as="xs:string" required="false" select="string(true())"/>

    <!-- these variables influence whether to include community data in the gegevenselementen for the wiki tables. -->
    <xsl:param name="communityName" as="xs:string?">kwalificatie</xsl:param>
    <xsl:param name="communityLabels" as="xs:string*" select="'Verplichtingskleur', 'Toelichting', 'Synoniemen'"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!--  -->
        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Raadplegen medicatiegegevens 9.0.7: addendum inhoudelijke gegevens kwalificatie}}

=Addenda voor inhoudelijke gegevens voor het kwalificatieteam=</xsl:text>
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
                    <medicamenteuze_behandeling id="{identificatie/@value}" comment="{@comment}">
                        <!-- tabel voor iedere bouwsteen -->
                        <xsl:apply-templates select="(medicatieafspraak | verstrekkingsverzoek | toedieningsafspraak | medicatie_gebruik | verstrekking | medicatieverstrekking)" mode="maak-tabel"/>
                    </medicamenteuze_behandeling>
                </xsl:for-each>
            </tabellen>
        </xsl:variable>
        <!-- now add community stuff to this table, if appropriate -->
        <xsl:variable name="tableWithCommunity" as="element()">
            <xsl:choose>
                <xsl:when test="$communityName">
                    <xsl:apply-templates select="$tabel" mode="AddCommunityStuff"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:copy-of select="$tabel"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tableWithCommunity"/>
            <xsl:with-param name="filename" select="@id"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>

        <xsl:text>
==Patiënt </xsl:text>
        <xsl:value-of select="normalize-space(string-join($patient/naamgegevens//*[not(local-name() eq 'naamgebruik')]/@value, ' '))"/>
        <xsl:text>==
</xsl:text>
        <xsl:value-of select="concat('&lt;section begin=', $patient-achternaam, ' /&gt;')"/>
        <xsl:apply-templates select="$tableWithCommunity/tabel[@type eq 'patient']" mode="wiki"/>
        <xsl:value-of select="concat('&lt;section end=', $patient-achternaam, ' /&gt;')"/>
        <xsl:if test=".//documentgegevens">
            <xsl:text>
===Documentgegevens </xsl:text>
            <xsl:value-of select="$patient-achternaam"/>
            <xsl:text> ===
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=DG_', $patient-achternaam, ' /&gt;')"/>
            <xsl:apply-templates select="$tableWithCommunity/tabel[@type eq 'documentgegevens']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=DG_', $patient-achternaam, ' /&gt;')"/>
        </xsl:if>
        <xsl:value-of select="concat('&lt;section begin=ALLMBHS_', $patient-achternaam, ' /&gt;')"/>
        <xsl:for-each select="$tableWithCommunity/medicamenteuze_behandeling">
            <xsl:value-of select="concat('&lt;section begin=MBH_', @id, ' /&gt;')"/>
            <xsl:text>
====Medicamenteuze behandeling </xsl:text>
            <xsl:value-of select="@id"/>
            <xsl:if test="string-length(@comment) gt 0">
                <xsl:value-of select="concat(' ''''', @comment, '''''')"/>
            </xsl:if>
            <xsl:text> ====
</xsl:text>
            <xsl:apply-templates select="./tabel[@type = 'medicatieafspraak']" mode="wiki"/>
            <xsl:apply-templates select="./tabel[@type = 'verstrekkingsverzoek']" mode="wiki"/>
            <xsl:apply-templates select="./tabel[@type = 'toedieningsafspraak']" mode="wiki"/>
            <xsl:apply-templates select="./tabel[@type = ('verstrekking', 'medicatieverstrekking')]" mode="wiki"/>
            <xsl:apply-templates select="./tabel[@type = 'medicatie_gebruik']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=MBH_', @id, ' /&gt;')"/>
        </xsl:for-each>
        <xsl:value-of select="concat('&lt;section end=ALLMBHS_', $patient-achternaam, ' /&gt;')"/>

        <!-- now if appropriate create HTML -->
        <xsl:if test="xs:boolean($outputHtml)">
            <xsl:call-template name="startHtmlpage">
                <xsl:with-param name="tables" select="$tableWithCommunity"/>
                <xsl:with-param name="adaTransaction" select="."/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="doWikiRowOverride4Community" match="gegevenselement | groep" mode="doWikiRow">
        <!--  This template overrides the default template for groep or gegevenselement to wiki in adainstance_2_wikitable, since we want specific stuff for community kwalificatie -->
        <xsl:param name="tabel-diepte">
            <!-- Depth of the table -->
        </xsl:param>
        <xsl:apply-templates select="." mode="doWikiRow4KwalCommunity">
            <xsl:with-param name="tabel-diepte" select="$tabel-diepte"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="tabel" mode="wiki">
        <!-- Actually creates wiki from a table that was generated before, see template with mode 'maak-tabel' This template overrides the default one in adainstance_2_wikitable.xsl because we want a different title, using comment -->
        <xsl:param name="current-table" select=".">
            <!-- The table to create a wiki table from -->
        </xsl:param>
        <xsl:param name="widthGegevenselement">
            <!-- Breedte (percentage) van de kolom voor de naam van het gegevenselement --> 25</xsl:param>
        <xsl:variable name="tabel-diepte" select="max($current-table//*[not(*)]/count(ancestor-or-self::*))"/>

        <xsl:for-each select="$current-table">
            <xsl:call-template name="startWikiTable">
                <xsl:with-param name="tabel-diepte" select="$tabel-diepte"/>
                <xsl:with-param name="title">
                    <xsl:value-of select="@title"/>
                    <xsl:if test="string-length(@comment) gt 0">
                        <xsl:value-of select="concat(' ''''', @comment, '''''')"/>
                    </xsl:if>
                </xsl:with-param>
                <xsl:with-param name="widthGegevenselement" select="$widthGegevenselement"/>
            </xsl:call-template>
            <xsl:apply-templates select="*" mode="doWikiRow">
                <xsl:with-param name="tabel-diepte" select="$tabel-diepte"/>
            </xsl:apply-templates>
            <!-- end wiki table -->
            <xsl:text>
|}</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="startHtmlpage">
        <!-- start the HTML output -->
        <xsl:param name="tables" as="element()?">
            <!-- The intermediate table variable containing all the necessary tables to be outputted stuff in simple format. -->
        </xsl:param>
        <xsl:param name="adaTransaction" as="element()?">
            <!-- The ada transaction input -->
        </xsl:param>
        <xsl:for-each select="$tables">

            <!-- Create the resulting HTML file as text and add the DOCTYPE header: -->
            <xsl:variable name="htmlContents" as="element()">
                <html xml:lang="nl" lang="nl" xmlns="http://www.w3.org/1999/xhtml">
                    <xsl:comment> == CREATED <xsl:value-of select="current-dateTime()"/> == </xsl:comment>
                    <xsl:call-template name="makeHTMLhead"/>
                    <body>
                        <h2>
                            <xsl:value-of select="$adaTransaction/@title"/>
                        </h2>
                        <table border="0" cellspacing="2" cellpadding="2" width="100%">
                            <tr style="vertical-align: top;">
                                <td class="tabtab">
                                    <div>
                                        <button id="{concat('exp_', @id)}" class="expandAll" type="button">Alles uitklappen</button>
                                        <button id="{concat('col_', @id)}" class="collapseAll" type="button">Alles inklappen</button>
                                    </div>
                                    <table id="{concat('trTbl_', @id)}" class="treetable" width="100%" border="0" cellspacing="3" cellpadding="2">
                                        <tr>
                                            <th class="columnName" width="30%" style="text-align: left;">Gegevenselement</th>
                                            <th class="columnDetails" style="text-align: left;">Waarde</th>
                                        </tr>
                                        <xsl:for-each select="./tabel[@type = 'patient']">
                                            <xsl:variable name="tableId" select="concat(@type, $adaTransaction/@id, '-', position())"/>
                                            <tr data-tt-id="{$tableId}">
                                                <td class="togglertreetable" colspan="2">
                                                    <xsl:value-of select="@title"/>
                                                </td>
                                            </tr>
                                            <xsl:apply-templates select="." mode="doHtmlRow">
                                                <xsl:with-param name="parentId" select="$tableId"/>
                                            </xsl:apply-templates>
                                        </xsl:for-each>
                                        <xsl:for-each select="medicamenteuze_behandeling">
                                            <xsl:variable name="mbhId" select="concat(@id, '-', position())"/>
                                            <tr data-tt-id="{$mbhId}">
                                                <td class="togglertreetable" colspan="2">
                                                    <xsl:value-of disable-output-escaping="yes" select="concat('Medicamenteuze behandeling ', @id, ' &lt;i&gt;', @comment, '&lt;/i&gt;')"/>
                                                </td>
                                            </tr>
                                            <xsl:for-each select="tabel">
                                                <xsl:variable name="tableId" select="concat($mbhId, @type, '-', position())"/>
                                                <tr data-tt-id="{$tableId}" data-tt-parent-id="{$mbhId}">
                                                    <td class="togglertreetable" colspan="2">
                                                        <xsl:value-of disable-output-escaping="yes" select="concat(@title, ' &lt;i&gt;', @comment, '&lt;/i&gt;')"/>
                                                    </td>
                                                </tr>
                                                <xsl:apply-templates select="*" mode="doHtmlRow">
                                                    <xsl:with-param name="parentId" select="$tableId"/>
                                                </xsl:apply-templates>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </body>
                </html>
            </xsl:variable>

            <xsl:variable name="htmlDoctypeHeader" as="xs:string">
                <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html [
&lt;!ENTITY nbsp "&amp;#160;"&gt;
]&gt;
</xsl:text>
            </xsl:variable>

            <xsl:variable name="htmlFilename" as="xs:string" select="yatcs:href-concat(($htmlOutputDirectory, $adaTransaction/@id || '.html'))"/>
            <xsl:result-document href="{$htmlFilename}" method="text" encoding="UTF-8">
                <xsl:sequence select="$htmlDoctypeHeader || serialize($htmlContents, map{'method': 'xhtml', 'indent': true(), 'encoding': 'UTF-8', 'include-content-type': false()}) => replace('&amp;gt;', '&gt;') => replace('&amp;lt;', '&lt;')"/>
            </xsl:result-document>

        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
