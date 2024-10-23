<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:html="http://www.w3.org/1999/xhtml" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211992843880100">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA xml to wiki table(s) 
        http://nictiz.nl/fhir/StructureDefinition/zib-MedicationAdministrationAgreement. The HL7 V3 interaction contains both 
        logistical information and therapeutic information.
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

    <xsl:import href="mp-functions.xsl"/>

    <!-- ======================================================================= -->

    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.102</xsl:param>
    <xsl:param name="transactionType">raadplegen</xsl:param>

    <xsl:param name="date-conversion-xml" select="document('./date_conversion.xml')"/>
    <xsl:param name="debug" as="xs:boolean?" select="true()"/>

    <xsl:param name="communityName" as="xs:string?"/>
    <xsl:param name="communityLabels" as="xs:string*"/>

    <!-- whether to generate a user instruction description text from the structured information,
         from MP 910 onwards this is always true, so only has effect on older stuff -->
    <xsl:param name="generateInstructionText" as="xs:boolean?" select="false()"/>

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

    <!-- names for product codes, the primary and more generic ones -->
    <xsl:variable name="naam-prim">Geneesmiddel - primaire code</xsl:variable>
    <xsl:variable name="naam-gene">Geneesmiddel - generiekere code</xsl:variable>
    <!-- bsn append string -->
    <xsl:variable name="bsnAppendString">[BSN]</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:text>
__NUMBEREDHEADINGS__
{{IssueBox|Deze pagina is nog in bewerking}}
[[Bestand:Nictiz_logo_PO_rechts_rgb.png |link=https://www.nictiz.nl/|rechts|Naar nictiz.nl]]

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml/data/*" mode="doseervoorbeeld">
        <!-- doseervoorbeeld -->
        <xsl:text>
=== </xsl:text><xsl:value-of select="@title"/> === <xsl:apply-templates select="." mode="wiki"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml/data/*" mode="wiki">
        <!-- Override of the adaxml/data template from the imported stylesheet. Makes it a bit nicer for MP -->
        <xsl:variable name="patient" select="./patient"/>
        <xsl:variable name="patient-achternaam" select="$patient/naamgegevens/geslachtsnaam/achternaam/@value"/>
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabel voor patiënt -->
                <xsl:apply-templates select="$patient" mode="maak-tabel"/>
                <!-- tabel voor documentgegevens -->
                <xsl:apply-templates select=".//(documentgegevens)" mode="maak-tabel"/>
                <!-- tabel voor iedere therapeutische bouwsteen -->
                <xsl:apply-templates select=".//(medicatieafspraak | toedieningsafspraak | medicatie_gebruik | medicatiegebruik)" mode="maak-tabel"/>
                <!-- tabelrijen voor iedere logistieke bouwsteen -->
                <xsl:for-each select=".//(verstrekkingsverzoek | verstrekking | medicatieverstrekking)">
                    <xsl:variable name="level" select="xs:integer(1)"/>
                    <tabel type="{./local-name()}" title="{nf:element-name(.)}">
                        <xsl:apply-templates select="./identificatie" mode="maak-tabel-rij"/>
                        <xsl:for-each select="./(datum | aanschrijfdatum)[@value]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{nf:configurable-T-date(., false(), true())}"/>
                        </xsl:for-each>
                        <!-- auteur -->
                        <xsl:for-each select="./(auteur)[.//(@value | @code)]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{string-join(nf:zorgverlener-string(.), '')}"/>
                        </xsl:for-each>
                        <xsl:apply-templates select="./verstrekker" mode="maak-tabel-rij">
                            <xsl:with-param name="element-name">Verstrekker<xsl:value-of select="$voorbeeld-string"/></xsl:with-param>
                        </xsl:apply-templates>
                        <xsl:for-each select="./(te_verstrekken_hoeveelheid | verstrekte_hoeveelheid)[.//@value]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{nf:element-waarde(./aantal/@value, ./eenheid/@displayName)}"/>
                        </xsl:for-each>
                        <xsl:apply-templates select="./aantal_herhalingen" mode="maak-tabel-rij"/>
                        <xsl:for-each select=".//product[.//(@code | @value)]">
                            <xsl:call-template name="tabelrijen-product"/>
                        </xsl:for-each>
                        <xsl:for-each select="./verbruiksperiode[.//(@value)]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{nf:periode-string(ingangsdatum, duur, einddatum, ())}"/>
                        </xsl:for-each>
                        <xsl:apply-templates select="./verbruiksduur" mode="maak-tabel-rij"/>
                        <!-- beoogd verstrekker -->
                        <xsl:for-each select="./beoogd_verstrekker[.//(@value | @code)]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{string-join(nf:zorgverlener-string(.), '')}"/>
                        </xsl:for-each>
                        <xsl:apply-templates select="./(distributievorm | aanvullende_wensen | aanvullende_informatie | afleverlocatie | toelichting)" mode="maak-tabel-rij"/>
                        <xsl:for-each select="./(relatie_naar_medicatieafspraak | relatie_naar_verstrekkingsverzoek)[.//@value]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{./identificatie/@value}"/>
                        </xsl:for-each>
                        <!-- MBH identificatie -->
                        <xsl:apply-templates select="./../identificatie[.//(@value)]" mode="maak-tabel-rij">
                            <xsl:with-param name="element-name">MBH identificatie</xsl:with-param>
                        </xsl:apply-templates>
                    </tabel>
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

        <!-- == Debug write (@href in original code: "../debug/{@id}.xml"): == -->
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
        <xsl:if test=".//medicatieafspraak">
            <xsl:text>
===Medicatieafspraken </xsl:text>
            <xsl:value-of select="$patient-achternaam"/>
            <xsl:text> ===
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=MA_', $patient-achternaam, ' /&gt;')"/>
            <xsl:apply-templates select="$tableWithCommunity/tabel[@type eq 'medicatieafspraak']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=MA_', $patient-achternaam, ' /&gt;')"/>
        </xsl:if>
        <xsl:if test=".//verstrekkingsverzoek">

            <xsl:text>
===Verstrekkingsverzoeken </xsl:text>
            <xsl:value-of select="$patient-achternaam"/>
            <xsl:text> ===
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=VV_', $patient-achternaam, ' /&gt;')"/>
            <xsl:apply-templates select="$tableWithCommunity/tabel[@type eq 'verstrekkingsverzoek']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=VV_', $patient-achternaam, ' /&gt;')"/>
        </xsl:if>
        <xsl:if test=".//toedieningsafspraak">
            <xsl:text>
===Toedieningsafspraken </xsl:text>
            <xsl:value-of select="$patient-achternaam"/>
            <xsl:text> ===
		</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=TA_', $patient-achternaam, ' /&gt;')"/>
            <xsl:apply-templates select="$tableWithCommunity/tabel[@type eq 'toedieningsafspraak']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=TA_', $patient-achternaam, ' /&gt;')"/>
        </xsl:if>
        <xsl:if test=".//verstrekking">
            <xsl:text>
===Verstrekkingen </xsl:text>
            <xsl:value-of select="$patient-achternaam"/>
            <xsl:text> ===
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=MVE_', $patient-achternaam, ' /&gt;')"/>
            <xsl:apply-templates select="$tableWithCommunity/tabel[@type eq 'verstrekking']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=MVE_', $patient-achternaam, ' /&gt;')"/>
        </xsl:if>
        <xsl:if test=".//medicatie_gebruik">
            <xsl:text>
===Medicatiegebruik </xsl:text>
            <xsl:value-of select="$patient-achternaam"/>
            <xsl:text> ===
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=MGB_', $patient-achternaam, ' /&gt;')"/>
            <xsl:apply-templates select="$tableWithCommunity/tabel[@type eq 'medicatie_gebruik']" mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=MGB_', $patient-achternaam, ' /&gt;')"/>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-log-bouwsteen" match="verstrekkingsverzoek | verstrekking | medicatieverstrekking" mode="maak-tabel">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation -->
        <xsl:variable name="level" select="xs:integer(1)"/>

        <xsl:variable name="pre920app" select="('mp-mp9', 'mp-mp910')" as="xs:string*"/>

        <tabel type="{./local-name()}" title="{concat(nf:element-name(.), ' ', identificatie[1]/@value)}" mbh-id="{../identificatie/@value}" scenario-nr="{nwf:clean-scenarionr(../../scenario-nr/@value)}">
            <!-- let's see if the mbh has an 2id, we need an anchor in our html to be able to refer to it, we need this in voorstel ma / voorstel vv  -->
            <xsl:if test="..[@id]">
                <xsl:variable name="mbhWithId" as="element()">
                    <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41" id="{../@id}"/>
                </xsl:variable>
                <xsl:apply-templates select="$mbhWithId" mode="maak-tabel-rij"/>
            </xsl:if>

            <xsl:apply-templates select="identificatie" mode="maak-tabel-rij"/>
            <xsl:for-each select="(datum | verstrekkingsverzoek_datum | verstrekkingsverzoek_datum_tijd | medicatieverstrekkings_datum_tijd | aanschrijfdatum | aanschrijf_datum)[@value]">
                <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{nf:configurable-T-date(., false(), true())}"/>
            </xsl:for-each>
            <xsl:apply-templates select="geannuleerd_indicator" mode="maak-tabel-rij"/>
            <!-- auteur -->
            <!-- from 920 onwards, this is now a reference -->
            <xsl:apply-templates select="auteur[.//(@value | @code)][../../../not(@app = $pre920app)]" mode="maak-tabel-rij"/>
            <!-- the pre 920 way -->
            <xsl:for-each select="(auteur)[.//(@value | @code)][../../../@app = $pre920app]">
                <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{string-join(nf:zorgverlener-string(.), '')}"/>
            </xsl:for-each>
            <xsl:apply-templates select="verstrekker" mode="maak-tabel-rij">
                <xsl:with-param name="element-name">Verstrekker<xsl:value-of select="$voorbeeld-string"/></xsl:with-param>
            </xsl:apply-templates>
            <xsl:for-each select="(te_verstrekken_hoeveelheid | verstrekte_hoeveelheid)[.//@value]">
                <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{nf:element-waarde(aantal/@value, eenheid/@displayName)}"/>
            </xsl:for-each>
            <xsl:apply-templates select="verbruiksduur" mode="maak-tabel-rij"/>
            <xsl:apply-templates select="aantal_herhalingen" mode="maak-tabel-rij"/>
            <!-- geneesmiddel -->
            <xsl:variable name="productId" select=".//farmaceutisch_product/@value"/>
            <xsl:for-each select="../../bouwstenen/farmaceutisch_product[@id = $productId]">
                <xsl:call-template name="tabelrijen-product"/>
            </xsl:for-each>
            <!-- the pre 9 2.0 version for product which does not work with references -->
            <xsl:for-each select=".//product[.//(@code | @value)]">
                <xsl:call-template name="tabelrijen-product"/>
            </xsl:for-each>
            <xsl:for-each select="verbruiksperiode[.//(@value)]">
                <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{nf:periode-string(ingangsdatum |start_datum_tijd, duur | tijds_duur, einddatum | eind_datum_tijd, ())}"/>
            </xsl:for-each>
            <!-- beoogd verstrekker -->
            <!-- from 920 onwards, this is now a reference -->
            <xsl:apply-templates select="beoogd_verstrekker[.//(@value | @code)][../../../not(@app = $pre920app)]" mode="maak-tabel-rij"/>
            <!-- the pre 920 way -->
            <xsl:for-each select="beoogd_verstrekker[.//(@value | @code)][../../../@app = $pre920app]">
                <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{string-join(nf:zorgverlener-string(.), '')}"/>
            </xsl:for-each>
            <xsl:apply-templates select="(distributievorm | aanvullende_wensen | aanvullende_informatie | medicatieverstrekking_aanvullende_informatie | afleverlocatie | financiele_indicatiecode | toelichting)" mode="maak-tabel-rij"/>
            <xsl:for-each select="(relatie_naar_medicatieafspraak | relatie_medicatieafspraak | relatie_naar_verstrekkingsverzoek | relatie_verstrekkingsverzoek)[.//@value]">
                <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{identificatie/@value}"/>
            </xsl:for-each>
            <!-- MBH identificatie -->
            <xsl:apply-templates select="../identificatie[.//(@value)]" mode="maak-tabel-rij">
                <xsl:with-param name="element-name">MBH identificatie</xsl:with-param>
            </xsl:apply-templates>
        </tabel>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-ther-bouwsteen" match="medicatieafspraak | toedieningsafspraak | medicatie_gebruik | medicatiegebruik | wisselend_doseerschema | medicatietoediening" mode="maak-tabel">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation -->
        <xsl:param name="in" select=".">
            <!-- The ada therapeutic building block which contents are rendered in the nested 'tabel' -->
        </xsl:param>
        <xsl:param name="generateForPre910" as="xs:boolean?" select="$generateInstructionText">
            <!-- Parameter to generate the omschrijving using structured fields even though we are in a pre mp 910 ada instance. Defaults to global input param $generateInstructionText. -->
        </xsl:param>
        <xsl:for-each select="$in">
            <xsl:variable name="level" select="xs:integer(1)"/>
            <tabel type="{local-name()}" title="{concat(nf:element-name(.), ' ', identificatie[1]/@value)}" mbh-id="{../identificatie/@value}" scenario-nr="{nwf:clean-scenarionr(../../scenario-nr/@value)}" comment="{@comment}">
                <!-- bij het scenario nr alles achter spatie wegpoetsen en ook een eventuele * achter het nummer, maar niet een a of b achter het nummer -->
                <!-- let's see if the mbh has an id, we need an anchor in our html to be able to refer to it, we need this in voorstel ma / voorstel vv  -->
                <xsl:if test="..[@id]">
                    <xsl:variable name="mbhWithId" as="element()">
                        <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41" id="{../@id}"/>
                    </xsl:variable>
                    <xsl:apply-templates select="$mbhWithId" mode="maak-tabel-rij"/>
                </xsl:if>

                <!-- the contents of the bouwsteen -->
                <xsl:apply-templates select="identificatie" mode="maak-tabel-rij"/>
                <xsl:for-each select="(afspraakdatum | afspraak_datum_tijd | registratiedatum | registratie_datum_tijd | medicatieafspraak_datum_tijd | toedieningsafspraak_datum_tijd | medicatiegebruik_datum_tijd | wisselend_doseerschema_datum_tijd | toedienings_datum_tijd | afgesproken_datum_tijd)">
                    <gegevenselement conceptId="{@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{nf:configurable-T-date(., false(), true())}"/>
                </xsl:for-each>
                <xsl:apply-templates select="(gebruik_indicator | volgens_afspraak_indicator)[@value | @nullFlavor]" mode="maak-tabel-rij"/>

                <xsl:variable name="startdatumGebruik" select="(gebruiksperiode_start | gebruiksperiode/start_datum_tijd)[@value | @nullFlavor]" as="element()*"/>
                <xsl:variable name="duurGebruik" select="(gebruiksperiode | gebruiksperiode/tijds_duur)[@value | @unit | @nullFlavor]" as="element()*"/>
                <xsl:variable name="einddatumGebruik" select="(gebruiksperiode_eind | gebruiksperiode/eind_datum_tijd)[@value | @nullFlavor]" as="element()*"/>

                <xsl:variable name="gebruiksperiodeWaarde" select="nf:periode-string($startdatumGebruik, $duurGebruik, $einddatumGebruik, gebruiksperiode/criterium)"/>
                <xsl:if test="($startdatumGebruik | $duurGebruik | $einddatumGebruik)[@value | @nullFlavor]">
                    <groep conceptId="{gebruiksperiode/@conceptId}" level="{$level}" naam="Gebruiksperiode" waarde="{$gebruiksperiodeWaarde}">
                        <xsl:variable name="level" select="$level + 1"/>
                        <xsl:for-each select="$startdatumGebruik">
                            <!--<gegevenselement xmlns="" conceptId="{@conceptId}" level="{$level}" naam="Ingangsdatum" waarde="{nf:maak-waarde-basedon-valuedomain(., 'string', false(), true())}"/>-->
                            <gegevenselement conceptId="{@conceptId}" level="{$level}" naam="Ingangsdatum" waarde="{nf:configurable-T-date(., false(), true())}"/>
                        </xsl:for-each>
                        <xsl:for-each select="$duurGebruik">
                            <gegevenselement conceptId="{@conceptId}" level="{$level}" naam="Gebruiksduur" waarde="{nf:maak-waarde-basedon-valuedomain(., 'quantity', (), ())}"/>
                        </xsl:for-each>
                        <xsl:for-each select="$einddatumGebruik">
                            <gegevenselement conceptId="{@conceptId}" level="{$level}" naam="Einddatum" waarde="{nf:configurable-T-date(., true(), false())}"/>
                        </xsl:for-each>
                    </groep>
                </xsl:if>
                <xsl:apply-templates select="(geannuleerd_indicator | toegediende_hoeveelheid | afgesproken_hoeveelheid | toedieningsweg | toedieningssnelheid | prik_plak_locatie | stoptype | medicatieafspraak_stop_type | toedieningsafspraak_stop_type | medicatie_gebruik_stop_type | medicatiegebruik_stop_type | wisselend_doseerschema_stop_type)" mode="maak-tabel-rij"/>
                <!-- special handing for the pre 9 2.0 relations -->
                <xsl:for-each select="relatie_naar_afspraak_of_gebruik/*">
                    <xsl:variable name="element-name" as="xs:string*">
                        <xsl:value-of select="nf:element-name(./..)"/>
                        <xsl:choose>
                            <xsl:when test="local-name() eq 'identificatie'">
                                <xsl:value-of select="': MA'"/>
                            </xsl:when>
                            <xsl:when test="local-name() eq 'identificatie_23288'">
                                <xsl:value-of select="': TA'"/>
                            </xsl:when>
                            <xsl:when test="local-name() eq 'identificatie_23289'">
                                <xsl:value-of select="': MGB'"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:variable>
                    <gegevenselement conceptId="{@conceptId}" level="{$level}" naam="{string-join($element-name, '')}" waarde="{./@value}"/>
                </xsl:for-each>

                <xsl:apply-templates select="voorschrijver | verstrekker | informant[not(parent::medicatie_gebruik)] | auteur[not(parent::medicatie_gebruik)] | toediener | volgende_behandelaar" mode="maak-tabel-rij"/>

                <!-- informant for pre 9 2.0- -->
                <xsl:for-each select="./informant[parent::medicatie_gebruik][.//(@value | @code)]">
                    <xsl:variable name="waarde" as="xs:string*">
                        <xsl:choose>
                            <xsl:when test="./persoon">Persoon: <xsl:value-of select="nf:persoon-string(./persoon)"/></xsl:when>
                            <xsl:when test="./informant_is_patient/@value = 'true'">Patiënt</xsl:when>
                            <xsl:when test="./informant_is_zorgverlener[.//(@value | @code)]">Zorgverlener<xsl:value-of select="$voorbeeld-string"/>: <xsl:value-of select="nf:zorgverlener-string(./informant_is_zorgverlener)"/></xsl:when>
                        </xsl:choose>
                    </xsl:variable>
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(.)}" waarde="{$waarde}"/>
                </xsl:for-each>
                <!-- auteur for pre 9 2.0-->
                <xsl:for-each select="./auteur[parent::medicatie_gebruik][.//(@value | @code)]">
                    <xsl:variable name="waarde" as="xs:string*">
                        <xsl:choose>
                            <xsl:when test="./auteur_is_patient/@value = 'true'">Patiënt</xsl:when>
                            <xsl:when test="./auteur_is_zorgverlener[.//(@value | @code)]">Zorgverlener<xsl:value-of select="$voorbeeld-string"/>: <xsl:value-of select="nf:zorgverlener-string(./auteur_is_zorgverlener)"/></xsl:when>
                            <xsl:when test="./auteur_is_zorgaanbieder[.//(@value | @code)]">Zorgaanbieder<xsl:value-of select="$voorbeeld-string"/>: <xsl:value-of select="nf:zorgaanbieder-string(./auteur_is_zorgaanbieder)"/></xsl:when>
                        </xsl:choose>
                    </xsl:variable>
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(.)}" waarde="{$waarde}"/>
                </xsl:for-each>

                <xsl:apply-templates select="reden_afspraak | reden_wijzigen_of_staken | toedieningsafspraak_reden_wijzigen_of_staken | medicatie_toediening_reden_van_afwijken | medicatietoediening_reden_van_afwijken" mode="maak-tabel-rij"/>

                <xsl:apply-templates select="reden_van_voorschrijven/probleem/probleem_naam[@code]" mode="maak-tabel-rij">
                    <xsl:with-param name="element-name" select="nf:element-name(reden_van_voorschrijven)" as="xs:string?"/>
                </xsl:apply-templates>

                <!-- geneesmiddel -->
                <xsl:variable name="productId" select=".//farmaceutisch_product/@value"/>
                <xsl:for-each select="../../bouwstenen/farmaceutisch_product[@id = $productId]">
                    <xsl:call-template name="tabelrijen-product"/>
                </xsl:for-each>
                <!-- the pre 9 2.0 version for product which does not work with references -->
                <xsl:for-each select=".//(product)[.//(@code | @value)]">
                    <xsl:call-template name="tabelrijen-product"/>
                </xsl:for-each>

                <xsl:for-each select="gebruiksinstructie">
                    <groep conceptId="{@conceptId}" level="{$level}" naam="{nf:element-name(.)}">
                        <xsl:variable name="level" select="xs:integer($level + 1)"/>
                        <xsl:variable name="amount-doseerinstructies" select="count(doseerinstructie[.//(@value | @code)])" as="xs:integer"/>
                        <xsl:variable name="non-parallel-doseerinstructie">
                            <xsl:value-of select="exists(doseerinstructie[volgnummer/@value != preceding-sibling::doseerinstructie/volgnummer/@value])"/>
                        </xsl:variable>
                        <xsl:variable name="doseerinstructie-text" as="element()">
                            <doseerinstructies>
                                <xsl:for-each select="doseerinstructie[.//(@value | @code)]">
                                    <xsl:sort select="xs:integer(volgnummer/@value)"/>
                                    <doseerinstructie conceptId="{@conceptId}">
                                        <element-name>
                                            <xsl:choose>
                                                <xsl:when test="$amount-doseerinstructies gt 1">
                                                    <xsl:value-of select="concat(nf:element-name(.), ' ', volgnummer/@value)"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="nf:element-name(.)"/>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </element-name>
                                        <waarde>
                                            <xsl:value-of select="nf:dosering-string(., $amount-doseerinstructies, $non-parallel-doseerinstructie)"/>
                                        </waarde>
                                    </doseerinstructie>
                                </xsl:for-each>
                            </doseerinstructies>
                        </xsl:variable>

                        <xsl:apply-templates select="omschrijving" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                            <xsl:with-param name="gebruiksperiode-waarde" select="$gebruiksperiodeWaarde"/>
                            <xsl:with-param name="generateForPre910" select="$generateForPre910"/>
                        </xsl:apply-templates>

                        <xsl:apply-templates select="(toedieningsweg | aanvullende_instructie)" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                        </xsl:apply-templates>
                        <xsl:for-each select="$doseerinstructie-text/doseerinstructie">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{element-name}" waarde="{waarde}"/>
                        </xsl:for-each>
                        <!-- herhaalperiode cyclisch schema -->
                        <xsl:apply-templates select="herhaalperiode_cyclisch_schema" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                        </xsl:apply-templates>
                    </groep>
                </xsl:for-each>
                <xsl:for-each select="gerelateerde_afspraak/*">
                    <xsl:variable name="element-name" as="xs:string*">
                        <xsl:value-of select="nf:element-name(./..)"/>
                        <xsl:choose>
                            <xsl:when test="./local-name() eq 'identificatie_medicatieafspraak'">
                                <xsl:value-of select="': MA'"/>
                            </xsl:when>
                            <xsl:when test="./local-name() eq 'identificatie_toedieningsafspraak'">
                                <xsl:value-of select="': TA'"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:variable>
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{$element-name}" waarde="{./@value}"/>
                </xsl:for-each>
                <xsl:for-each select="gerelateerde_verstrekking/*">
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(./..)}" waarde="{./@value}"/>
                </xsl:for-each>

                <!-- reden gebruik -->
                <xsl:apply-templates select="./(reden_gebruik | reden_wijzigen_of_stoppen_gebruik)" mode="maak-tabel-rij">
                    <xsl:with-param name="level" select="$level"/>
                </xsl:apply-templates>

                <!-- gewicht en lengte -->
                <xsl:for-each select="./(lichaamslengte/lengte_waarde | lichaamsgewicht/gewicht_waarde)[@value]">
                    <xsl:variable name="date-append-string">
                        <xsl:for-each select="./../(lengte_datum_tijd | gewicht_datum_tijd)[@value]">
                            <xsl:value-of select="concat('. Gemeten: ', nf:configurable-T-date(., false(), true()))"/>
                        </xsl:for-each>
                    </xsl:variable>
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(./..)}" waarde="{./normalize-space(concat(@value, ' ', @unit, $date-append-string))}"/>
                </xsl:for-each>
                <xsl:apply-templates select="./(kopie_indicator | toelichting | aanvullende_informatie | toedieningsafspraak_aanvullende_informatie)" mode="maak-tabel-rij">
                    <xsl:with-param name="level" select="$level"/>
                </xsl:apply-templates>
                <xsl:for-each select="./relatie_naar_medicatieafspraak[.//@value]">
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(.)}" waarde="{./identificatie/@value}"/>
                </xsl:for-each>
                <xsl:apply-templates select="relatie_medicatieafspraak | relatie_toedieningsafspraak | relatie_verstrekkingsverzoek | relatie_medicatiegebruik | relatie_medicatieverstrekking | relatie_wisselend_doseerschema | relatie_contact | relatie_zorgepisode" mode="maak-tabel-rij"/>
                <!-- MBH identificatie -->
                <xsl:apply-templates select="./../identificatie[.//(@value)]" mode="maak-tabel-rij">
                    <xsl:with-param name="element-name">MBH identificatie</xsl:with-param>
                </xsl:apply-templates>
            </tabel>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-ther-bouwsteen4doseervoorbeelden">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation. Specific version for doseervoorbeelden wiki. -->
        <xsl:param name="in" select=".">
            <!-- The ada therapeutic building block which contents are rendered in the nested 'tabel' -->
        </xsl:param>
        <xsl:param name="generateForPre910" select="false()" as="xs:boolean?">
            <!-- Parameter to generate the omschrijving using structured fields even though we are in a pre mp 910 ada instance. Defaults to false(). -->
        </xsl:param>
        <xsl:for-each select="$in">
            <xsl:variable name="level" select="xs:integer(1)"/>
            <tabel type="{./local-name()}" title="{concat(nf:element-name(.), ' met id: ', identificatie/@value)}" mbh-id="{../identificatie/@value}">
                <!--                <xsl:apply-templates select="./identificatie" mode="maak-tabel-rij"/>-->
                <xsl:variable name="productId" select=".//farmaceutisch_product/@value"/>
                <xsl:for-each select="../../bouwstenen/farmaceutisch_product[@id = $productId]">
                    <gegevenselement level="{$level}" naam="Geneesmiddel" waarde="{product_code[1]/@displayName}"/>
                </xsl:for-each>
                <xsl:variable name="gebruiksperiode-waarde" select="nf:periode-string(gebruiksperiode_start, gebruiksperiode, gebruiksperiode_eind, gebruiksperiode/criterium)"/>
                <xsl:if test="./(gebruiksperiode_start | gebruiksperiode_eind | gebruiksperiode)[@value | @nullFlavor]">
                    <gegevenselement level="{$level}" naam="Gebruiksperiode" waarde="{$gebruiksperiode-waarde}"/>
                </xsl:if>
                <xsl:for-each select="gebruiksinstructie">
                    <groep level="{$level}" naam="{nf:element-name(.)}">
                        <xsl:variable name="level" select="xs:integer($level + 1)"/>
                        <xsl:apply-templates select="omschrijving" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                            <xsl:with-param name="gebruiksperiode-waarde" select="$gebruiksperiode-waarde"/>
                            <xsl:with-param name="generateForPre910" select="$generateForPre910"/>
                        </xsl:apply-templates>

                        <xsl:for-each select="toedieningsweg[.//(@value | @code)]">
                            <gegevenselement level="{$level}" naam="{nf:element-name(.)}" waarde="{@displayName}"/>
                        </xsl:for-each>

                        <xsl:apply-templates select="(aanvullende_instructie)" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                        </xsl:apply-templates>
                        <xsl:variable name="amount-doseerinstructies" select="count(./doseerinstructie[.//(@value | @code)])" as="xs:integer"/>
                        <xsl:variable name="non-parallel-doseerinstructie">
                            <xsl:value-of select="exists(doseerinstructie[volgnummer/@value != preceding-sibling::doseerinstructie/volgnummer/@value])"/>
                        </xsl:variable>
                        <!--<xsl:for-each select="doseerinstructie[.//(@value | @code)]">
                            <!-\- todo expliciet sorteren op volgnummer -\->
                            <xsl:variable name="element-name" as="xs:string*">
                                <xsl:value-of select="nf:element-name(.)"/>
                                <xsl:if test="$amount-doseerinstructies gt 1">
                                    <xsl:value-of select="concat('met volgnummer: ', volgnummer/@value)"/>
                                </xsl:if>
                            </xsl:variable>
                            <gegevenselement xmlns="" level="{$level}" naam="{$element-name}" waarde="{nf:dosering-string(., $amount-doseerinstructies, $non-parallel-doseerinstructie)}"/>
                        </xsl:for-each>-->
                        <xsl:apply-templates select="doseerinstructie" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                        </xsl:apply-templates>
                        <!-- herhaalperiode cyclisch schema -->
                        <xsl:apply-templates select="herhaalperiode_cyclisch_schema" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                        </xsl:apply-templates>
                    </groep>
                </xsl:for-each>
                <!-- MBH identificatie -->
                <xsl:apply-templates select="../identificatie[.//(@value)]" mode="maak-tabel-rij">
                    <xsl:with-param name="element-name">MBH identificatie</xsl:with-param>
                </xsl:apply-templates>
            </tabel>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-patient" match="patient" mode="maak-tabel">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation -->
        <xsl:param name="in" select=".">
            <!-- The ada patient which contents are rendered in the nested 'tabel' -->
        </xsl:param>
        <xsl:for-each select="$in">
            <tabel type="{./local-name()}" title="Patiënt">
                <xsl:apply-templates select="naamgegevens[.//@value]" mode="maak-tabel-rij">
                    <xsl:with-param name="level" select="xs:integer(1)"/>
                </xsl:apply-templates>
                <!-- <xsl:for-each select="naamgegevens[.//@value]">
                      <gegevenselement xmlns="" conceptId="{./@conceptId}" level="1" naam="{nf:element-name(.)}" waarde="{normalize-space(string-join(.//*[not(local-name() eq 'naamgebruik')]/@value, ' '))}"/>
                </xsl:for-each>-->
                <xsl:for-each select="adresgegevens[.//@value]">
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(.)}" waarde="{normalize-space(string-join(.//(@value|@displayName), ' '))}"/>
                </xsl:for-each>
                <xsl:apply-templates select="contactgegevens/(telefoonnummers | email_adressen)[.//@value]" mode="maak-tabel-rij">
                    <xsl:with-param name="level" select="xs:integer(1)"/>
                </xsl:apply-templates>
                <xsl:for-each select="(patient_identificatienummer | identificatienummer)">
                    <xsl:variable name="waarde" as="xs:string">
                        <xsl:choose>
                            <xsl:when test="./@root eq $oidBurgerservicenummer">
                                <xsl:value-of select="concat(./@value, ' ', $bsnAppendString)"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="concat(./@value, ' met root OID ''', ./@root, '''')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(.)}" waarde="{normalize-space($waarde)}"/>
                </xsl:for-each>
                <xsl:apply-templates select="(geboortedatum | meerling_indicator | overlijdens_indicator | datum_overlijden)[@value] | ./geslacht[@code]" mode="maak-tabel-rij"/>
            </tabel>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-documentgegevens" match="documentgegevens" mode="maak-tabel">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation -->
        <xsl:param name="in" select=".">
            <!-- The ada documentgegevens which contents are rendered in the nested 'tabel' -->
        </xsl:param>
        <xsl:for-each select="$in">
            <xsl:variable name="level" select="xs:integer(1)"/>
            <tabel type="{./local-name()}" title="{nf:element-name(.)}">
                <xsl:for-each select="./document_datum[@value]">
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(.)}" waarde="{nf:configurable-T-date(., false(), true())}"/>
                </xsl:for-each>
                <!-- auteur -->
                <xsl:if test="./auteur/auteur_is_patient/@value = 'true'">
                    <gegevenselement conceptId="{./@conceptId}" level="1" naam="{nf:element-name(./auteur)}" waarde="Patiënt"/>
                </xsl:if>
                <xsl:for-each select="./auteur[auteur_is_zorgaanbieder[.//(@value | @code)]]">
                    <groep level="{$level}" naam="Auteur - zorgaanbieder{$voorbeeld-string}">
                        <xsl:variable name="level" select="xs:integer($level + 1)"/>
                        <xsl:variable name="waarde" as="xs:string*"/>
                        <xsl:apply-templates select="./auteur_is_zorgaanbieder/zorgaanbieder/(zorgaanbieder_identificatie_nummer | organisatie_naam | afdeling_specialisme)" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                        </xsl:apply-templates>
                        <xsl:for-each select="./auteur_is_zorgaanbieder/zorgaanbieder/(.//adresgegevens)[.//@value]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{normalize-space(string-join(.//(@value|@displayName), ' '))}"/>
                        </xsl:for-each>
                        <xsl:apply-templates select="./auteur_is_zorgaanbieder/zorgaanbieder/(.//contactgegevens/(telefoonnummers | email_adressen))" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                        </xsl:apply-templates>
                    </groep>
                </xsl:for-each>
                <!-- CiOGeverifieerd, is in dataset, but not in any transaction, added to be ready -->
                <xsl:for-each select="verificatie_patient | verificatie_zorgverlener | ci_o_geverifieerd">
                    <xsl:variable name="waarde" as="xs:string*">
                        <xsl:for-each select="*[starts-with(local-name(), 'geverifieerd_met')] | .[self::ci_o_geverifieerd]">
                            <xsl:choose>
                                <xsl:when test="@value = ('true')">Ja</xsl:when>
                                <xsl:when test="@value = ('false')">Nee</xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="@value"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                        <xsl:for-each select="verificatie_datum">
                            <xsl:value-of select="concat(': ', nf:configurable-T-date(., false(), true()))"/>
                        </xsl:for-each>
                    </xsl:variable>
                    <gegevenselement conceptId="{@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{$waarde}"/>
                </xsl:for-each>
            </tabel>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabelrijen-product">
        <!-- Handles the table rows for product -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- Current depth level in table, defaults to 1 -->
        </xsl:param>
        <xsl:choose>
            <!-- gecodeerd geneesmiddel -->
            <xsl:when test=".[not(product_specificatie)]">
                <!-- product codes sorten van specifiek naar generiek -->
                <xsl:for-each select="./product_code[@codeSystem = $oidGStandaardZInummer]">
                    <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-prim}" waarde="{nf:element-code-waarde(.)}"/>
                </xsl:for-each>
                <xsl:for-each select="./product_code[@codeSystem = $oidGStandaardHPK]">
                    <xsl:choose>
                        <xsl:when test="./../product_code[@codeSystem = $oidGStandaardZInummer]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-gene}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-prim}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <xsl:for-each select="./product_code[@codeSystem = $oidGStandaardPRK]">
                    <xsl:choose>
                        <xsl:when test="./../product_code[@codeSystem = ($oidGStandaardZInummer, $oidGStandaardHPK)]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-gene}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-prim}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <xsl:for-each select="./product_code[@codeSystem = $oidGStandaardGPK]">
                    <xsl:choose>
                        <xsl:when test="./../product_code[@codeSystem = ($oidGStandaardZInummer, $oidGStandaardHPK, $oidGStandaardPRK)]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-gene}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-prim}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <xsl:for-each select="./product_code[@codeSystem = $oidGStandaardSSK]">
                    <xsl:choose>
                        <xsl:when test="./../product_code[@codeSystem = ($oidGStandaardZInummer, $oidGStandaardHPK, $oidGStandaardPRK, $oidGStandaardGPK)]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-gene}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-prim}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <xsl:for-each select="product_code[@codeSystem = $oidGStandaardSNK]">
                    <xsl:choose>
                        <xsl:when test="../product_code[@codeSystem = ($oidGStandaardZInummer, $oidGStandaardHPK, $oidGStandaardPRK, $oidGStandaardGPK, $oidGStandaardSSK)]">
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-gene}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{$naam-prim}" waarde="{nf:element-code-waarde(.)}"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </xsl:when>
            <!-- 'magistraal' -->
            <xsl:when test="product_specificatie">
                <xsl:for-each select="product_specificatie">
                    <groep level="{$level}" naam="{concat('Geneesmiddel - ', nf:element-name(.))}" conceptId="{@conceptId}">
                        <xsl:variable name="level" select="xs:integer($level + 1)"/>
                        <xsl:apply-templates select="(../product_code[not(@codeSystem = $oidHL7NullFlavor)] | product_naam | omschrijving | farmaceutische_vorm | ingredient)[.//(@value | @code)]" mode="maak-tabel-rij">
                            <xsl:with-param name="level" select="$level"/>
                        </xsl:apply-templates>
                    </groep>
                </xsl:for-each>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="gebruiksinstructie/omschrijving" mode="maak-tabel-rij">
        <!-- Make table row 'gegevenselement' for gebruiksinstructie/omschrijving -->
        <xsl:param name="level" as="xs:integer?">
            <!-- The depth level in the table --> 1</xsl:param>
        <xsl:param name="gebruiksperiode-waarde" as="xs:string?">
            <!-- The string for use period -->
        </xsl:param>
        <xsl:param name="generateForPre910" as="xs:boolean?" select="false()">
            <!-- Parameter to generate the omschrijving using structured fields even though we are in a pre mp 910 ada instance. Defaults to false(). -->
        </xsl:param>
        <xsl:variable name="waarde-omschrijving">
            <xsl:choose>
                <xsl:when test="not($generateForPre910) and ancestor::*[@app = ('mp-mp9', 'mp-mp907')]">
                    <!-- the pre-mp910 way of doing it using a configuration file -->
                    <xsl:value-of select="concat($gebruiksperiode-waarde, ', ', nf:configurable-T-date(., false(), true()))"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- generate omschrijving using structured fields -->
                    <xsl:value-of select="nf:gebruiksintructie-string(..)"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <gegevenselement conceptId="{@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{$waarde-omschrijving}"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="product_specificatie/omschrijving" mode="maak-tabel-rij">
        <!-- Creates a wiki table row for product specification description -->
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer">
            <!-- Current depth level in table, defaults to 1 -->
        </xsl:param>
        <xsl:param name="element-name" select="nf:element-name(.)" as="xs:string?">
            <!-- Optional param to override the default element name -->
        </xsl:param>
        <xsl:param name="value-domain" select="nf:get-concept-value-domain(., 'type')" as="xs:string?">
            <!-- Optional param to override the value domain. Is retrieved from ada-release file by default. -->
        </xsl:param>
        <xsl:variable name="concept-type" select="nf:get-concept-type(.)"/>

        <!-- item -->
        <xsl:element name="gegevenselement" namespace="">
            <xsl:attribute name="level" select="$level"/>
            <xsl:attribute name="naam" select="$element-name"/>
            <xsl:attribute name="waarde" select="@value"/>
            <xsl:if test="$value-domain = 'reference'">
                <xsl:attribute name="reference" select="./@value"/>
            </xsl:if>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="sterkte" mode="maak-tabel-rij">
        <xsl:param name="level" select="xs:integer(3)">
            <!-- Current depth level in table, defaults to 3 -->
        </xsl:param>
        <xsl:variable name="numerator" select="(./hoeveelheid_ingredient | ./ingredient_hoeveelheid)"/>
        <xsl:variable name="denominator" select="(./hoeveelheid_product | ./product_hoeveelheid)"/>
        <xsl:variable name="sterkte-string" as="xs:string*">
            <xsl:value-of select="concat($numerator/waarde/@value, ' ', nwf:unit-string($numerator/waarde/@value, $numerator/eenheid/@displayName), ' per ')"/>
            <xsl:value-of select="concat($denominator/waarde/@value, ' ', nwf:unit-string($denominator/waarde/@value, $denominator/eenheid/@displayName))"/>
        </xsl:variable>
        <xsl:for-each select=".[.//(@value | @code)]">
            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{$sterkte-string}"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="dagdeel" mode="maak-tabel-rij">
        <!-- Special handling for dagdeel, we don't want to output the code -->
        <xsl:param name="level" select="xs:integer(4)">
            <!-- Current depth level in table, defaults to 4 -->
        </xsl:param>
        <xsl:for-each select=".[@code]">
            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{@displayName}"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="toedientijd" mode="maak-tabel-rij">
        <!-- Special handling for toedientijd, we don't want to output the date -->
        <xsl:param name="level" select="xs:integer(6)">
            <!-- Current depth level in table, defaults to 6 -->
        </xsl:param>
        <xsl:for-each select=".[@value]">
            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{string-join(nf:datetime-2-timestring(@value), ', ')}"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="weekdag" mode="maak-tabel-rij">
        <!-- Special handling for weekdag, we don't want to output the code -->
        <xsl:param name="level" select="xs:integer(4)">
            <!-- Current depth level in table, defaults to 4 -->
        </xsl:param>
        <xsl:for-each select=".[@code]">
            <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{@displayName}"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="groep4KwalCommunity" match="groep" mode="doWikiRow4KwalCommunity">
        <!-- Outputs a table row for a data element This template resembles the default template with mode doWikiRow in adainstance_2_wikitable, but we want specific stuff for community kwalificatie here. -->
        <xsl:param name="tabel-diepte">
            <!-- Depth of the table -->
        </xsl:param>

        <xsl:variable name="backgroundcolor" select="nwf:get-background-colour(normalize-space(lower-case(@kwalificatie_Verplichtingskleur)), 'label')"/>
        <xsl:variable name="elementNaam" select="@naam"/>
        <xsl:variable name="level" select="@level" as="xs:integer"/>
        <xsl:variable name="waarde" select="@waarde"/>
        <xsl:text>
|-style="vertical-align:top; background-color: </xsl:text>
        <xsl:value-of select="$backgroundcolor"/>
        <xsl:text>;"  
|colspan="</xsl:text>
        <xsl:choose>
            <xsl:when test="$waarde">
                <xsl:value-of select="$tabel-diepte - ($level)"/>
                <xsl:text>"|</xsl:text>
                <xsl:if test="string-length(concat(@kwalificatie_Toelichting, @kwalificatie_Synoniemen)) gt 0">
                    <xsl:text>
</xsl:text>
                </xsl:if>
                <xsl:value-of select="$elementNaam"/>
                <!-- add kwal toelichting if appropriate -->
                <xsl:if test="string-length(@kwalificatie_Toelichting) gt 0">
                    <xsl:text>
</xsl:text>
                    <xsl:value-of select="concat('''''', @kwalificatie_Toelichting, '''''')"/>
                </xsl:if>
                <!-- add kwal synoniemen if appropriate -->
                <xsl:if test="string-length(@kwalificatie_Synoniemen) gt 0">
                    <xsl:text>
</xsl:text>
                    <xsl:value-of select="concat('''''''', @kwalificatie_Synoniemen, '''''''')"/>
                </xsl:if>
                <xsl:text>
|style="background-color: </xsl:text>
                <xsl:value-of select="$backgroundcolor"/>
                <xsl:text>;"|</xsl:text>
                <xsl:value-of select="concat('''''', $waarde, '''''')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$tabel-diepte - ($level - 1)"/>
                <xsl:text>"|</xsl:text>
                <xsl:if test="string-length(concat(@kwalificatie_Toelichting, @kwalificatie_Synoniemen)) gt 0">
                    <xsl:text>
</xsl:text>
                </xsl:if>
                <xsl:value-of select="$elementNaam"/>
                <!-- add kwal toelichting if appropriate -->
                <xsl:if test="string-length(@kwalificatie_Toelichting) gt 0">
                    <xsl:text>
</xsl:text>
                    <xsl:value-of select="concat('''''', @kwalificatie_Toelichting, '''''')"/>
                </xsl:if>
                <!-- add kwal synoniemen if appropriate -->
                <xsl:if test="string-length(@kwalificatie_Synoniemen) gt 0">
                    <xsl:text>
</xsl:text>
                    <xsl:value-of select="concat('''''''', @kwalificatie_Synoniemen, '''''''')"/>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>
|-style="vertical-align:top; background-color: </xsl:text>
        <!-- do not override the background color for the underlying rows in this column -->
        <xsl:value-of select="$element-achtergrond-kleur"/>
        <xsl:text>;"</xsl:text>
        <xsl:text>
|rowspan="</xsl:text>
        <!-- Amount of rows for this group. Do not count the empty adaextension elements, they will not be outputted in the table -->
        <xsl:value-of select="1 + count(.//*[not(lower-case(@naam) = 'adaextension' and (not(@waarde) or string-length(@waarde) = 0))]) + count(.//*[local-name() eq 'groep'])"/>
        <xsl:text>"|</xsl:text>

        <!-- nu de elementen/groepen in deze groep -->
        <xsl:apply-templates select="*" mode="doWikiRow">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="tabel-diepte" select="$tabel-diepte"/>
        </xsl:apply-templates>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="gegevenselement[@naam = 'Gebruiksduur']" mode="AddCommunityStuff">
        <!-- Template that overrides the additional community stuff for item gebruiksperiode, since it was already done for the group -->
        <!-- don't add the community stuff here, it has already been added by the group gebruiksperiode, so call the 'normal' template-->
        <xsl:variable name="in" select="."/>
        <xsl:copy>
            <!-- copy existing attributes -->
            <xsl:apply-templates select="@*" mode="AddCommunityStuff"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="gegevenselement[@naam = $naam-gene]" mode="AddCommunityStuff">
        <!-- Template that overrides the additional community stuff for generic product code This is not a separate item in the dataset and can therefore not be configured properly in the community. We override this element with background color yellow (Geel) -->
        <xsl:variable name="in" select="."/>
        <xsl:copy>
            <!-- copy existing attributes -->
            <xsl:apply-templates select="@*" mode="AddCommunityStuff"/>
            <xsl:for-each select="$communityLabels">
                <xsl:variable name="attrName" select="string-join(($communityName, .), '_')"/>
                <xsl:attribute name="{$attrName}">
                    <xsl:choose>
                        <xsl:when test="lower-case($attrName) = 'kwalificatie_verplichtingskleur'">Geel</xsl:when>
                        <xsl:otherwise>
                            <!-- do nothing, the stuff configured in ada community is for the primary code -->
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:apply-templates select="*" mode="AddCommunityStuff"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="gegevenselement[@conceptId = '2.16.840.1.113883.2.4.3.11.60.20.77.2.3.19829'][not(contains(@waarde, $bsnAppendString))]" mode="AddCommunityStuff">
        <!-- Template that overrides the additional community stuff for a patient identification other than BSN. This is not a separate item in the dataset and can therefore not be configured properly in the community. We override this element with background color yellow (Geel) -->
        <xsl:variable name="in" select="."/>
        <xsl:copy>
            <!-- copy existing attributes -->
            <xsl:apply-templates select="@*" mode="AddCommunityStuff"/>
            <xsl:for-each select="$communityLabels">
                <xsl:variable name="attrName" select="string-join(($communityName, .), '_')"/>
                <xsl:attribute name="{$attrName}">
                    <xsl:choose>
                        <xsl:when test="lower-case($attrName) = 'kwalificatie_verplichtingskleur'">Geel</xsl:when>
                        <xsl:otherwise>
                            <!-- do nothing, the stuff configured in ada community is for the BSN-->
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:apply-templates select="*" mode="AddCommunityStuff"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="gegevenselement4KwalCommunity" match="gegevenselement" mode="doWikiRow4KwalCommunity">
        <!-- Outputs a table row for a data element This template resembles the default template with mode doWikiRow in adainstance_2_wikitable, but we want specific stuff for community kwalificatie here. -->
        <xsl:param name="tabel-diepte">
            <!-- Depth of the table -->
        </xsl:param>
        <xsl:variable name="waarde" select="nwf:replace-string-for-wiki-table(@waarde)" as="xs:string?"/>
        <xsl:variable name="level" select="@level" as="xs:integer?"/>
        <xsl:variable name="elementNaam" select="@naam" as="xs:string?"/>
        <xsl:variable name="reference" select="@reference" as="xs:string?"/>

        <xsl:variable name="kwalKleur" select="normalize-space(lower-case(@kwalificatie_Verplichtingskleur))"/>

        <xsl:text>
|-style="vertical-align:top; background-color: </xsl:text>
        <xsl:value-of select="nwf:get-background-colour($kwalKleur, 'label')"/>
        <xsl:text>;"</xsl:text>
        <xsl:choose>
            <xsl:when test="$level lt $tabel-diepte - 1">
                <xsl:text>
|colspan="</xsl:text>
                <xsl:value-of select="$tabel-diepte - $level"/>
                <xsl:text>"|</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>
||</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$elementNaam"/>
        <xsl:text>
|style="background-color: </xsl:text>
        <xsl:value-of select="nwf:get-background-colour($kwalKleur, 'value')"/>
        <xsl:text>;"|</xsl:text>
        <xsl:if test="string-length(concat(@kwalificatie_Toelichting, @kwalificatie_Synoniemen)) gt 0">
            <xsl:text>
</xsl:text>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="string-length($reference) gt 0">
                <xsl:value-of select="nwf:maak-waarde-met-wiki-reference(./ancestor::tabellen, $waarde, $reference)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$waarde"/>
            </xsl:otherwise>
        </xsl:choose>
        <!-- add kwal toelichting if appropriate -->
        <xsl:if test="string-length(@kwalificatie_Toelichting) gt 0">
            <xsl:text>
</xsl:text>
            <xsl:value-of select="concat('''''', @kwalificatie_Toelichting, '''''')"/>
        </xsl:if>
        <!-- add kwal synoniemen if appropriate -->
        <xsl:if test="string-length(@kwalificatie_Synoniemen) gt 0">
            <xsl:text>
</xsl:text>
            <xsl:value-of select="concat('''''''', @kwalificatie_Synoniemen, '''''''')"/>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="bouwstenen/farmaceutisch_product | informant_is_patient[@value = 'false'] | auteur_is_patient[@value = 'false']" mode="maak-tabel-rij"><!-- Do not output farmaceutisch_product in bouwstenen, since it is denormalised in the tables itself
        Also do not output 'informant or auteur is patient' when the answer is no ... --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="informant/informant_is_zorgverlener[zorgverlener/@value] | auteur/auteur_is_zorgverlener[zorgverlener/@value] | informant/persoon[contactpersoon/@value] | toediener/patient[patient/@value] | toediener/zorgaanbieder[zorgaanbieder/@value]| toediener/zorgverlener[zorgverlener/@value]" mode="maak-tabel-rij">
        <!-- No need for outputting group informant/informant_is_zorgverlener or persoon or groups that are like that -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- Current depth level in table, defaults to 1 -->
        </xsl:param>
        <xsl:apply-templates select="zorgverlener | contactpersoon | zorgaanbieder | ./patient" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="ingredient" mode="maak-tabel-rij">
        <xsl:param name="level" select="xs:integer(2)">
            <!-- Current depth level in table, defaults to 2 -->
        </xsl:param>
        <!-- change the sequence so that ingredient code is first row -->
        <groep level="{$level}" naam="{nf:element-name(.)}" conceptId="{@conceptId}">
            <xsl:apply-templates select="./ingredient_code" mode="maak-tabel-rij">
                <xsl:with-param name="level" select="xs:integer($level + 1)"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="./*[local-name() ne 'ingredient_code']" mode="maak-tabel-rij">
                <xsl:with-param name="level" select="xs:integer($level + 1)"/>
            </xsl:apply-templates>
        </groep>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adresgegevens" mode="maak-tabel-rij">
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer">
            <!-- Current depth level in table, defaults to 1 -->
        </xsl:param>
        <gegevenselement conceptId="{@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{string-join(nf:adres-string(.), '')}"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="naamgegevens[not(naamgegevens)][not(parent::patient)][not(parent::naamgegevens/parent::patient)]" mode="maak-tabel-rij">
        <!-- Special handling for naamgegevens, with the exception of patient/naamgegevens -->
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer">
            <!-- Current depth level in table, defaults to 1 -->
        </xsl:param>
        <gegevenselement conceptId="{./@conceptId}" level="{$level}" naam="{nf:element-name(.)}" waarde="{string-join(nf:naam-string(.), '')}"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="naamgegevens[naamgegevens]" mode="maak-tabel-rij">
        <!-- Template to get rid of nested naamgegevens which unfortunately ended up in dataset -->
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer">
            <!-- Current depth level in table, defaults to 1 -->
        </xsl:param>
        <xsl:apply-templates select="node()" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaextension" mode="maak-tabel-rij-dekkingsgraad"><!-- No dekkingsgraad tabel rij for adaextension, ada extensions are not in use in MP --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="gebruiksinstructie/omschrijving" mode="maak-tabel-rij-dekkingsgraad">
        <!-- tabel rij for dekkingsgraad gebruiksinstructie/omschrijving -->
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:param name="element-name" select="nf:element-name(.)" as="xs:string?">
            <!-- Optional param to override the default element name -->
        </xsl:param>
        <xsl:param name="adaxml-element" as="element()*"> </xsl:param>

        <gegevenselement level="{$level}" naam="{$element-name}" waarde="Zie informatie in gestructureerde velden"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:zorgaanbieder-string" as="xs:string*">
        <xsl:param name="in" as="element()?"> </xsl:param>
        <xsl:value-of select="string-join($in/zorgaanbieder/zorgaanbieder_identificatie_nummer//concat(@root, ' - ', @value), ' ')"/>
        <xsl:value-of select="string-join($in/zorgaanbieder/organisatie_naam//@value, ' ')"/>
        <xsl:if test="$in//afdeling_specialisme/@displayName">
            <xsl:value-of select="concat(' - ', $in//specialisme/@displayName, '. ')"/>
        </xsl:if>
        <xsl:value-of select="string-join($in/zorgaanbieder/adres//string-join(@value | @displayName, ' - '), ' ')"/>
        <xsl:value-of select="string-join($in/zorgaanbieder/telefoon_email//string-join(@value | @displayName, ' - '), ' ')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:zorgverlener-string" as="xs:string*">
        <xsl:param name="in" as="element()?"> </xsl:param>
        <xsl:value-of select="normalize-space(string-join($in/zorgverlener/(zorgverlener_naam | naamgegevens)//@value, ' '))"/>
        <xsl:if test="$in//specialisme/@displayName">
            <xsl:value-of select="concat(' - ', $in//specialisme/@displayName, '. ')"/>
        </xsl:if>
        <xsl:value-of select="normalize-space(string-join($in//zorgaanbieder/organisatie_naam/@value, ' '))"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:persoon-string" as="xs:string*">
        <xsl:param name="in" as="element(persoon)?"> </xsl:param>
        <xsl:value-of select="string-join($in/naamgegevens//@value, ' ')"/>
        <xsl:if test="$in/rol_of_functie/@displayName">
            <xsl:value-of select="concat(' - ', $in/rol_of_functie/@displayName, '. ')"/>
        </xsl:if>
        <xsl:value-of select="string-join($in/adresgegevens//@value, ' ')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:naam-string" as="xs:string*">
        <xsl:param name="in" as="element(naamgegevens)?"> </xsl:param>
        <xsl:value-of select="string-join($in//@value, ' ')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:adres-string" as="xs:string*">
        <xsl:param name="in" as="element(adresgegevens)?">
            <!-- ada adresgegevens -->
        </xsl:param>
        <xsl:value-of select="concat($in/adres_soort/@displayName, ': ')"/>
        <xsl:value-of select="string-join($in//*[not(local-name() = 'adres_soort')]//(@value | @displayName), ' ')"/>
    </xsl:function>

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

    <xsl:function name="nwf:get-background-colour" as="xs:string">
        <!-- Function to determine the background colour, based on in put communityColour and the type of element. Outputs an HTML colour. -->
        <xsl:param name="inputColour" as="xs:string?">
            <!-- The input colour, for example as configured in an ART-DECOR community. Currently supported colours: blauw, geel, groen, rood. -->
        </xsl:param>
        <xsl:param name="elementType" as="xs:string?">
            <!-- The type of element, currently supported: label or value. -->
        </xsl:param>

        <xsl:variable name="inColor">
            <xsl:choose>
                <xsl:when test="$inputColour = ('blue', 'blauw')">#B3D9FF;</xsl:when>
                <xsl:when test="$inputColour = ('yellow', 'geel')">#FFFFB3;</xsl:when>
                <xsl:when test="$inputColour = ('green', 'groen')">lime</xsl:when>
                <xsl:when test="$inputColour = ('red', 'rood')">#FF3300</xsl:when>
                <xsl:when test="$inputColour = ('black', 'zwart')">
                    <!-- do nothing, simply the default background color -->
                </xsl:when>
                <xsl:otherwise>
                    <!-- do nothing, simply the default background color -->
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="string-length($inColor) gt 0">
                <xsl:value-of select="$inColor"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="$elementType = 'label'">
                        <xsl:value-of select="$element-achtergrond-kleur"/>
                    </xsl:when>
                    <xsl:when test="$elementType = 'value'">
                        <xsl:value-of select="$elementwaarde-achtergrond-kleur"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- default to label background -->
                        <xsl:value-of select="$element-achtergrond-kleur"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
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
