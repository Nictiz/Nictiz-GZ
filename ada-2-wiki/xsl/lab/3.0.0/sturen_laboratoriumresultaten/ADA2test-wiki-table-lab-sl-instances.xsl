<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023020714593205900170100" xmlns:xs="http://www.w3.org/2001/XMLSchema">
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

    <xsl:output method="text" encoding="UTF-16"/>
    
    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>

    <xsl:import href="../../ADA2test-wiki-table-lab.xsl"/>

    <xsl:strip-space elements="*"/>

    <!-- ======================================================================= -->

    <!-- Get the working set of ADA files to process: -->
    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>

    <xsl:param name="transactionId" as="xs:string" select="'2.16.840.1.113883.2.4.3.11.60.25.4.28'"/>
    <xsl:param name="testGoal" as="xs:string" select="'test'"/>

    <xsl:param name="debug" as="xs:boolean?" select="true()"/>
    
    <xsl:param name="do-ada-files" as="xs:boolean" select="true()"/>

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
        <!-- Start template -->
        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Laboratoriumuitwisseling: addendum inhoudelijke gegevens </xsl:text>
        <xsl:value-of select="$testGoal"/>
        <xsl:text>}}

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:variable name="tabellen-overview-SL" as="element()">
                    <tabellen id="{($ada-files/adaxml/data/*)[1]/@id}">
                        <!-- group by main scenario number, i.e. group all scenario's with scenario-nr '1.' together, also for 2. -->
                        <xsl:for-each-group select="$ada-files/adaxml/data/*" group-by="substring-before(scenario-nr/@value, '.')">
                            <xsl:variable name="mainScenario" select="current-grouping-key()"/>
                            <tabel-simpel type="overview" subtype="LAB" title="Scenario's" main-scenario="{$mainScenario}">
                                <koprij>
                                    <kopkolom type="Scenario" waarde="Scenario"/>
                                    <kopkolom type="Screenshots" waarde="Screenshots?"/>
                                    <kopkolom type="Beschrijving" waarde="Beschrijving"/>
                                    <kopkolom type="LAB-id" waarde="Lab uitslag id"/>
                                </koprij>
                                <!-- now a row for each subscenario -->
                                <xsl:for-each-group select="current-group()" group-by="scenario-nr/@value">
                                    <!-- order by subscenario number -->
                                    <xsl:sort select="                                             if (replace(current-grouping-key(), '.*\.(\d+).*', '$1') castable as xs:integer) then                                                 xs:integer(replace(current-grouping-key(), '.*\.(\d+).*', '$1'))                                             else ()"/>
                                    <!-- order by whole value string, to get 9.1a / 9.1b in correct order -->
                                    <xsl:sort select="current-grouping-key()"/>
                                    <rij>
                                        <kolom type="Scenario" waarde="{string-join((current-grouping-key(),scenario-nr-txt/@value), ' ')}"/>
                                        <kolom type="Screenshots" waarde="{current-group()/screenshot/@value}"/>
                                        <kolom type="Beschrijving" waarde="{current-group()/@desc}"/>
                                        <kolom type="LAB-id" waarde="{string-join(onderzoeksresultaat/laboratorium_uitslag/laboratorium_uitslag_identificatie/@value, '&lt;br/&gt;')}"/>
                                    </rij>
                                </xsl:for-each-group>
                            </tabel-simpel>
                        </xsl:for-each-group>
                    </tabellen>
                </xsl:variable>
                
                <xsl:call-template name="yatcs:write-debug-document">
                    <xsl:with-param name="contents" select="$tabellen-overview-SL"/>
                    <xsl:with-param name="filename" select="'overview-SL-' || $tabellen-overview-SL/@id"/>
                    <xsl:with-param name="enabled" select="$debug"/>
                </xsl:call-template>
                
                <!-- output the overview stuff first -->
                <xsl:text>
== Overzicht van scenario's voor sturend/beschikbaarstellend systeem ==
</xsl:text>
                <xsl:apply-templates select="$tabellen-overview-SL/tabel-simpel" mode="wiki">
                    <xsl:sort select="                             if (replace(@main-scenario, '(\d+).*', '$1') castable as xs:integer) then                                 xs:integer(replace(@main-scenario, '(\d+).*', '$1'))                             else                                 0"/>
                    <xsl:sort select="@main-scenario"/>
                </xsl:apply-templates>

                <!-- The actual contents -->
                <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wiki">
                    <xsl:sort select="                             if (replace(@title, '(\d+).*', '$1') castable as xs:integer) then                                 xs:integer(replace(@title, '(\d+).*', '$1'))                             else                                 0"/>
                    <xsl:sort select="                             if (replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$1') castable as xs:integer) then                                 xs:integer(replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$1'))                             else                                 0"/>
                    <xsl:sort select="                             if (replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$2') castable as xs:integer) then                                 xs:integer(replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$2'))                             else                                 0"/>
                    <xsl:sort select="scenario-nr/@value"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
            </xsl:otherwise>
        </xsl:choose>
       
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml/data/*" mode="wiki">

        <!-- Override of the adaxml/data template from the imported stylesheet. Makes it a bit nicer for Lab -->
        <xsl:variable name="patient" select="patientgegevens/patient"/>
        <xsl:variable name="patient-achternaam" select="$patient/naamgegevens/geslachtsnaam/achternaam/@value"/>

        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabel voor patiënt -->
                <xsl:apply-templates select="$patient" mode="maak-tabel"/>
                <!-- tabel voor beschikbaarstellende_partij -->
                <xsl:apply-templates select="beschikbaarstellende_partij" mode="maak-tabel"/>
                <!-- tabel voor ieder lab resultaat -->
                <xsl:apply-templates select="onderzoeksresultaat" mode="maak-tabel"/>
            </tabellen>
        </xsl:variable>
        
        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tabel"/>
            <xsl:with-param name="filename" select="@id"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>
        
<!--        <xsl:text>
== </xsl:text>
        <xsl:value-of select="@title"/>-->
        <xsl:text>
==</xsl:text>
        <xsl:value-of select="concat(@title, '. Scenario: ', scenario-nr/@value)"/>
        <xsl:text>==
</xsl:text>


        <xsl:value-of select="concat('&lt;section begin=', @id, ' /&gt;')"/>
        <xsl:value-of select="concat('&lt;section begin=patient-', @id, ' /&gt;')"/>
        <xsl:apply-templates select="$tabel/tabel[@type = 'patient']" mode="wiki"/>
        <xsl:value-of select="concat('&lt;section end=patient-', @id, ' /&gt;')"/>
        <xsl:value-of select="concat('&lt;section begin=bp-', @id, ' /&gt;')"/>
        <xsl:apply-templates select="$tabel/tabel[@type = 'beschikbaarstellende_partij']" mode="wiki"/>
        <xsl:value-of select="concat('&lt;section end=bp-', @id, ' /&gt;')"/>
        <xsl:value-of select="concat('&lt;section begin=lr-', @id, ' /&gt;')"/>
        <xsl:apply-templates select="$tabel/tabel[@type = 'onderzoeksresultaat']" mode="wiki"/>
        <xsl:value-of select="concat('&lt;section end=lr-', @id, ' /&gt;')"/>
        <xsl:value-of select="concat('&lt;section end=', @id, ' /&gt;')"/>
    </xsl:template>
    
</xsl:stylesheet>
