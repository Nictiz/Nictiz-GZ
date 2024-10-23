<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023040508344800547430200">
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

    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.398</xsl:param>

    <xsl:param name="debug" as="xs:boolean?" select="true()"/>

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
        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Sturen voorstel medicatieafspraak MP9 3.0: addendum inhoudelijke gegevens}}

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:variable name="tabellen-overview-VMAS" as="element()">
                    <tabellen>
                        <!-- group by main scenario number, i.e. group all scenario's with scenario-nr '1.' together, also for 2. -->
                        <xsl:for-each-group select="$ada-files/adaxml/data/*" group-by="substring-before(scenario-nr/@value, '.')">
                            <tabel-simpel type="overview" subtype="VMAS" title="Scenario's" main-scenario="{current-grouping-key()}">
                                <koprij>
                                    <kopkolom type="Scenario" waarde="Scenario"/>
                                    <kopkolom type="Screenshots" waarde="Screenshots?"/>
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
                                        <kolom type="Screenshots" waarde="{current-group()/screenshot/@value}"/>
                                        <kolom type="Beschrijving" waarde="{current-group()/@desc}"/>
                                        <kolom type="MBH id" waarde="{string-join(medicamenteuze_behandeling/identificatie/@value, '&lt;br&gt;')}"/>
                                        <kolom type="MA id" waarde="{string-join(medicamenteuze_behandeling/medicatieafspraak/identificatie/@value, '&lt;br&gt;')}"/>
                                    </rij>
                                </xsl:for-each-group>
                            </tabel-simpel>
                        </xsl:for-each-group>
                    </tabellen>
                </xsl:variable>
                <xsl:variable name="tabellen-overview-VMAO" as="element()">
                    <tabellen>
                        <!-- group by main scenario number, i.e. group all scenario's with scenario-nr '1.' together, also for 2. -->
                        <xsl:for-each-group select="$ada-files/adaxml/data/*" group-by="substring-before(scenario-nr/@value, '.')">
                            <tabel-simpel type="overview" subtype="VMAO" title="Scenario's" main-scenario="{current-grouping-key()}">
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

                <!-- == Debug write (@href in original code: "../debug/overview-vmas.xml"): == -->
                <xsl:call-template name="yatcs:write-debug-document">
                    <xsl:with-param name="contents" select="$tabellen-overview-VMAS"/>
                    <xsl:with-param name="filename" select="'overview-vmas.xml' || overview-vmas.xml"/>
                    <xsl:with-param name="enabled" select="$debug"/>
                </xsl:call-template>

                <!-- == Debug write (@href in original code: "../debug/overview-vmao.xml"): == -->
                <xsl:call-template name="yatcs:write-debug-document">
                    <xsl:with-param name="contents" select="$tabellen-overview-VMAO"/>
                    <xsl:with-param name="filename" select="'overview-vmao.xml' || overview-vmao.xml"/>
                    <xsl:with-param name="enabled" select="$debug"/>
                </xsl:call-template>

                <!-- output the overview stuff first -->
                <xsl:text>
== Overzicht van scenario's voor sturend/beschikbaarstellend systeem ==
</xsl:text>
                <xsl:apply-templates select="$tabellen-overview-VMAS/tabel-simpel" mode="wiki">
                    <xsl:sort select="                             if (replace(@main-scenario, '(\d+).*', '$1') castable as xs:integer) then                                 xs:integer(replace(@main-scenario, '(\d+).*', '$1'))                             else                                 0"/>
                    <xsl:sort select="@main-scenario"/>
                </xsl:apply-templates>

                <xsl:text>
== Overzicht van scenario's voor ontvangend systeem ==
</xsl:text>
                <xsl:apply-templates select="$tabellen-overview-VMAO/tabel-simpel" mode="wiki">
                    <xsl:sort select="                             if (replace(@main-scenario, '(\d+).*', '$1') castable as xs:integer) then                                 xs:integer(replace(@main-scenario, '(\d+).*', '$1'))                             else                                 0"/>
                    <xsl:sort select="@main-scenario"/>
                </xsl:apply-templates>

                <!-- The actual contents -->
                <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wiki">
                    <xsl:sort select="                             if (replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$1') castable as xs:integer) then                                 xs:integer(replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$1'))                             else                                 0"/>
                    <xsl:sort select="                             if (replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$2') castable as xs:integer) then                                 xs:integer(replace(scenario-nr/@value, '(\d*).*\.(\d*).*', '$2'))                             else                                 0"/>
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
        <!-- Override of the adaxml/data template from the imported stylesheet. Makes it a bit nicer for MP voorschrift -->
        <xsl:variable name="patient" select="patient"/>
        <xsl:variable name="patient-achternaam" select="$patient/naamgegevens/geslachtsnaam/achternaam/@value"/>
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabel voor patiënt -->
                <xsl:apply-templates select="$patient" mode="maak-tabel"/>
                <!-- tabel voor voorstelgegevens groep-->
                <xsl:apply-templates select="voorstel_gegevens[*]" mode="maak-tabel"/>
                <!-- tabel voor iedere medicatiebouwsteen bouwsteen -->
                <xsl:apply-templates select="medicamenteuze_behandeling/*[*]" mode="maak-tabel"/>
                <!-- tabel voor bouwstenen groep-->
                <xsl:apply-templates select="bouwstenen[*]" mode="maak-tabel"/>
            </tabellen>
        </xsl:variable>

        <!-- == Debug write (@href in original code: "../debug/{@id}.xml"): == -->
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
        <xsl:value-of select="concat('&lt;section end=patient-', @id, ' /&gt;')"/>
        <xsl:value-of select="concat('&lt;section begin=mbhs-', @id, ' /&gt;')"/>
        <xsl:for-each select="$tabel/tabel[@type = ('voorstel_gegevens')]">
            <xsl:text>
==== </xsl:text>
            <xsl:value-of select="@title"/>
            <xsl:text> ====</xsl:text>
            <xsl:apply-templates select="." mode="wiki"/>
        </xsl:for-each>
        <!-- the mbh's-->
        <xsl:for-each-group select="$tabel/tabel[not(@type = ('patient'))][@mbh-id]" group-by="concat('Scenario ', @scenario-nr, ' - ', @mbh-id)">
            <xsl:text>
==== </xsl:text>
            <xsl:value-of select="current-grouping-key()"/>
            <xsl:text>====
</xsl:text>
            <xsl:apply-templates select="current-group()" mode="wiki"/>
        </xsl:for-each-group>
        <!-- now the other stuff -->
        <xsl:for-each select="$tabel/tabel[not(@type = ('patient', 'voorstel_gegevens'))][not(@mbh-id)]">
            <xsl:text>
==== </xsl:text>
            <xsl:value-of select="@title"/>
            <xsl:text> ====</xsl:text>
            <xsl:apply-templates select="." mode="wiki"/>
        </xsl:for-each>
        <xsl:value-of select="concat('&lt;section end=mbhs-', @id, ' /&gt;')"/>
        <xsl:value-of select="concat('&lt;section end=', @id, ' /&gt;')"/>
    </xsl:template>
</xsl:stylesheet>
