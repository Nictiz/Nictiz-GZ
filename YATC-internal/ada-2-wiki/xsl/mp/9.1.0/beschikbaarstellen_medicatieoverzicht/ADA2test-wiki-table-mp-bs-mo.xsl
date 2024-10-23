<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211915183320100">
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
    
    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.148</xsl:param>
    
    <xsl:param name="debug" as="xs:boolean?" select="true()"/>
    
    <!-- ================================================================== -->
    
    <xsl:template match="/">
        <!--  -->
        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Beschikbaarstellen medicatieoverzicht 9.1.0 - MA: addendum inhoudelijke gegevens kwalificatie}}

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:variable name="tabellen-overview-MOB" as="element()">
                    <tabellen>
                        <!-- group by main scenario number, i.e. group all scenario's with scenario-nr '1.' together, also for 2. -->
                        <xsl:for-each-group select="$ada-files/adaxml/data/*" group-by="substring-before(scenario-nr/@value, '.')">
                            <xsl:variable name="mainScenario" select="current-grouping-key()"/>
                            <tabel-simpel type="overview" subtype="MOB" title="Scenario's" main-scenario="{$mainScenario}">
                                <koprij>
                                    <kopkolom type="Scenario" waarde="Scenario"/>
                                    <kopkolom type="Beschrijving" waarde="Beschrijving"/>
                                    <kopkolom type="MBH id" waarde="MBH id"/>
                                    <kopkolom type="MA id" waarde="MA id"/>
                                </koprij>
                                <!-- now a row for each subscenario -->
                                <xsl:for-each-group select="current-group()" group-by="scenario-nr/@value">
                                    <!-- order by subscenario number -->
                                    <xsl:sort select="xs:integer(replace(current-grouping-key(), '.*\.(\d*).*', '$1'))"/>
                                    <!-- order by whole value string, to get 9.1a / 9.1b in correct order -->
                                    <xsl:sort select="current-grouping-key()"/>
                                    <rij>
                                        <kolom type="Scenario" waarde="{string-join((current-grouping-key(),scenario-nr-txt/@value), ' ')}"/>
                                        <kolom type="Beschrijving" waarde="{current-group()/@desc}"/>
                                        <kolom type="MBH id" waarde="{string-join(medicamenteuze_behandeling/identificatie/@value, '&lt;br&gt;')}"/>
                                        <kolom type="MA id" waarde="{string-join(medicamenteuze_behandeling/medicatieafspraak/identificatie/@value, '&lt;br&gt;')}"/>
                                    </rij>
                                </xsl:for-each-group>
                            </tabel-simpel>
                        </xsl:for-each-group>
                    </tabellen>
                </xsl:variable>
                <xsl:variable name="tabellen-overview-MOR" as="element()">
                    <tabellen>
                        <!-- group by main scenario number, i.e. group all scenario's with scenario-nr '1.' together, also for 2. -->
                        <xsl:for-each-group select="$ada-files/adaxml/data/*" group-by="substring-before(scenario-nr/@value, '.')">
                            <xsl:variable name="mainScenario" select="current-grouping-key()"/>
                            <tabel-simpel type="overview" subtype="MOR" title="Scenario's" main-scenario="{$mainScenario}">
                                <koprij>
                                    <kopkolom type="Scenario" waarde="Scenario"/>
                                    <kopkolom type="Beschrijving" waarde="Beschrijving"/>
                                    <kopkolom type="MBH id" waarde="MBH id"/>
                                    <kopkolom type="MA id" waarde="MA id"/>
                                </koprij>
                                <!-- now a row for each subscenario -->
                                <xsl:for-each-group select="current-group()" group-by="scenario-nr/@value">
                                    <!-- order by subscenario number -->
                                    <xsl:sort select="xs:integer(replace(current-grouping-key(), '.*\.(\d*).*', '$1'))"/>
                                    <!-- order by whole value string, to get 9.1a / 9.1b in correct order -->
                                    <xsl:sort select="current-grouping-key()"/>
                                    <xsl:variable name="scenario-id" select="replace(current-grouping-key(), '(\d*\.\d*([abcdef])?).*', '$1')"/>
                                    <rij>
                                        <kolom type="Scenario" waarde="{$scenario-id}"/>
                                        <kolom type="Beschrijving" waarde="{current-group()/@desc}"/>
                                        <kolom type="MBH id" waarde="{string-join(medicamenteuze_behandeling/identificatie/@value, '&lt;br&gt;')}"/>
                                        <kolom type="MA id" waarde="{string-join(medicamenteuze_behandeling/medicatieafspraak/identificatie/@value, '&lt;br&gt;')}"/>
                                    </rij>
                                </xsl:for-each-group>
                            </tabel-simpel>
                        </xsl:for-each-group>
                    </tabellen>
                </xsl:variable>
                
                <xsl:call-template name="yatcs:write-debug-document">
                    <xsl:with-param name="contents" select="$tabellen-overview-MOB"/>
                    <xsl:with-param name="filename" select="'overview'"/>
                    <xsl:with-param name="enabled" select="$debug"/>
                </xsl:call-template>
                
                <!-- output the overview stuff first -->
                <xsl:text>
== Overzicht van scenario's voor sturend/beschikbaarstellend systeem ==
</xsl:text>
                <xsl:apply-templates select="$tabellen-overview-MOB/tabel-simpel" mode="wiki">
                    <xsl:sort select="xs:integer(@main-scenario)"/>
                </xsl:apply-templates>
                
                <xsl:text>
== Overzicht van scenario's voor ontvangend/raadplegend systeem ==
</xsl:text>
                <xsl:apply-templates select="$tabellen-overview-MOR/tabel-simpel" mode="wiki">
                    <xsl:sort select="xs:integer(@main-scenario)"/>
                </xsl:apply-templates>
                
                <!-- The actual contents -->
                <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wiki">
                    <xsl:sort select="xs:integer(replace(scenario-nr/@value, '(\d*)\.(\d*).*', '$1'))"/>
                    <xsl:sort select="xs:integer(replace(scenario-nr/@value, '(\d*)\.(\d*).*', '$2'))"/>
                    <xsl:sort select="scenario-nr/@value"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>

[[Categorie:Kwalificatie]]</xsl:text>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="adaxml/data/*" mode="wiki">
        <!-- Override of the adaxml/data template from the imported stylesheet. Makes it a bit nicer for MP medicatiegegevens -->
        <xsl:variable name="patient" select="patient"/>
        <xsl:variable name="patient-achternaam" select="$patient/naamgegevens/geslachtsnaam/achternaam/@value"/>
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabel voor patiënt -->
                <xsl:apply-templates select="$patient" mode="maak-tabel"/>
                <!-- tabel voor documentgegevens -->
                <xsl:apply-templates select="documentgegevens[*]" mode="maak-tabel"/>
                <!-- tabel voor iedere medicatiebouwsteen bouwsteen -->
                <xsl:apply-templates select="medicamenteuze_behandeling/*[*]" mode="maak-tabel"/>
            </tabellen>
        </xsl:variable>
        
        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tabel"/>
            <xsl:with-param name="filename" select="@id"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>
        
        <xsl:text>
== </xsl:text>
        <xsl:value-of select="@title"/>
        <xsl:text>==
</xsl:text>
        <xsl:value-of select="concat('&lt;section begin=', @id, ' /&gt;')"/>
        <xsl:value-of select="concat('&lt;section begin=patient-', @id, ' /&gt;')"/>
        <xsl:apply-templates select="$tabel/tabel[@type = 'patient']" mode="wiki"/>
        <!-- documentgegevens -->
        <xsl:apply-templates select="$tabel/tabel[@type = 'documentgegevens']" mode="wiki"/>
        <xsl:value-of select="concat('&lt;section end=patient-', @id, ' /&gt;')"/>
        <!-- order the medication building blocks by MBH -->
        <xsl:value-of select="concat('&lt;section begin=mbhs-', @id, ' /&gt;')"/>
        <xsl:for-each-group select="$tabel/tabel[not(@type = ('patient'))][@mbh-id]" group-by="concat('Scenario ', @scenario-nr, ' - ', @mbh-id)">
            <xsl:text>
==== </xsl:text>
            <xsl:value-of select="current-grouping-key()"/>
            <xsl:text>====
</xsl:text>
            <xsl:apply-templates select="current-group()" mode="wiki"/>
        </xsl:for-each-group>
        <xsl:value-of select="concat('&lt;section end=mbhs-', @id, ' /&gt;')"/>
        <xsl:value-of select="concat('&lt;section end=', @id, ' /&gt;')"/>
    </xsl:template>
</xsl:stylesheet>
