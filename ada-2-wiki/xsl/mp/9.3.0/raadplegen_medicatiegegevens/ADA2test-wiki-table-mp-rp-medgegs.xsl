<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023040508344678250330200">
    <!-- ================================================================== -->
    <!--
           This XSL was created to facilitate mapping from ADA xml to wiki table(s)
           
           This single stylesheet replaces the multiple stylesheets ADA2test-wiki-table-mp-rp-medgegs-*.xsl in the
           original Ant based code. It has two additional parameters ($abbreviation and $elementNameId) to take care
           of the differences.
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

    <!-- don't import the mp wiki here, since it does stuff not useful for filters -->
    <xsl:import href="../../../utils/adainstance_2_wikitable.xsl"/>

    <!-- ======================================================================= -->

    <!-- == ADA Collection in original code: "ada_instance_MA/?select=*.xml" == -->

    <xsl:param name="do-ada-files" select="true()"/>

    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>

    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.373</xsl:param>

    <xsl:param name="testGoal">test</xsl:param>

    <xsl:param name="debug" as="xs:boolean?" select="true()"/>


    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-ada-release-file.mod.xsl"/>




    <xsl:template match="/">

        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:</xsl:text>
        <xsl:value-of select="$testGoal"/>
        <xsl:text>}}

=Addenda voor gegevens voor raadplegen medicatiegegevens - filterscenario's =</xsl:text>
        <xsl:choose>
            <xsl:when test="$do-ada-files">

                <!-- The actual contents -->
                <xsl:for-each-group select="$ada-files/adaxml/data/*" group-by="concat(patient-id/@value, '-', type/@value)">
                    <xsl:variable name="groupType">
                        <group>
                            <xsl:sequence select="current-group()"/>
                        </group>
                    </xsl:variable>
                    <xsl:apply-templates select="$groupType" mode="wiki">
                        <xsl:sort select="
                                if (replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$1') castable as xs:integer) then
                                    xs:integer(replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$1'))
                                else
                                    0"/>
                        <xsl:sort select="
                                if (replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$2') castable as xs:integer) then
                                    xs:integer(replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$2'))
                                else
                                    0"/>
                        <xsl:sort select="scenario-nr/@value"/>
                    </xsl:apply-templates>
                </xsl:for-each-group>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>

[[Categorie:Kwalificatie]]</xsl:text>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->


    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml/data/* | group" mode="wiki">
        <!--  -->
        <xsl:variable name="patient-id" select="((* | .)/patient-id/@value)[1]"/>
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- Een tabel per top-level group -->
                <xsl:for-each select=".[not(self::group)] | *">
                    <xsl:if test="nf:get-concept-type(.) eq 'group'">
                        <xsl:variable name="groepNaam" as="xs:string*">
                            <xsl:value-of select="type/@value"/>
                        </xsl:variable>
                        <tabel type="{type/@value}" title="{string-join($groepNaam, ' - ')}">
                            <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                                <xsl:attribute name="id" select="normalize-space(@id)"/>
                            </xsl:if>
                            <xsl:if test="ancestor-or-self::*[@app][1]/@id[string-length(normalize-space()) gt 0]">
                                <xsl:attribute name="instance-id" select="normalize-space(ancestor-or-self::*[@app][1]/@id)"/>
                            </xsl:if>
                            <!-- een tabelrij (gegevenselement of groep) per onderliggend dataset concept -->
                            <xsl:apply-templates select="./*" mode="maak-tabel-rij"/>
                        </tabel>
                    </xsl:if>
                </xsl:for-each>
            </tabellen>
        </xsl:variable>
        <xsl:variable name="transactie-shortname" select="./@shortName"/>
        <xsl:for-each select="$tabel/tabel">
            <xsl:text>
</xsl:text>
            <xsl:value-of select="$tabelKopMarker"/>
            <xsl:value-of select="./@title"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="$tabelKopMarker"/>
            <xsl:text>
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=', ./@type, '_', $patient-id, ' /&gt;')"/>
            <xsl:apply-templates select="." mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=', ./@type, '_', $patient-id, ' /&gt;')"/>
        </xsl:for-each>


        <!-- == Debug write (@href in original code: "../debug/{@id}.xml"): == -->
        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tabel"/>
            <xsl:with-param name="filename" select="(* | .)/@id"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="subscenario" mode="maak-tabel-rij">
        <!-- Creates a wiki table row, override for backgroundcolour -->
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer">
            <!-- The indent level in the table - starts with 1 --> </xsl:param>
        <xsl:param name="element-name" select="nf:element-name(.)" as="xs:string?">
            <!-- Optional param to override the default element name --> </xsl:param>
        <xsl:param name="value-domain" select="nf:get-concept-value-domain(., 'type')" as="xs:string?">
            <!-- Optional param to override the value domain. Is retrieved from ada-release file by default. --> </xsl:param>
        <xsl:variable name="concept-type" select="nf:get-concept-type(.)"/>

        <xsl:variable name="groepNaam" as="xs:string*">
                     <xsl:value-of select="$element-name"/>        
        </xsl:variable>
        <groep conceptId="{@conceptId}" level="{$level}" naam="{string-join($groepNaam, ' - ')}" backgroundColour="{$tabelkop-achtergrond-kleur}" fontColour="{$tabelkop-font-kleur}">
            <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                <xsl:attribute name="id" select="normalize-space(@id)"/>
            </xsl:if>
            <xsl:apply-templates select="*" mode="maak-tabel-rij">
                <xsl:with-param name="level" select="xs:integer($level + 1)"/>
            </xsl:apply-templates>
        </groep>
    </xsl:template>




</xsl:stylesheet>
