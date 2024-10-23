<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023040609012311002970200">
    <!-- ================================================================== -->
    <!--
         This XSL was created to facilitate mapping from ADA xml to wiki table(s)   
         http://nictiz.nl/fhir/StructureDefinition/zib-MedicationAdministrationAgreement. 
         The HL7 V3 interaction contains both logistical information and therapeutic information.
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

    <xsl:import href="../utils/adainstance_2_wikitable.xsl"/>

    <xsl:include href="../../xslmod/ada-2-wiki-build-standard-ada-release-file.mod.xsl"/>

    <xsl:import href="peri-functions.xsl"/>

    <!-- ======================================================================= -->
    
    <xsl:param name="do-ada-files" select="true()"/>

    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.20.77.4.102</xsl:param>

    <xsl:param name="date-conversion-xml" select="doc('date_conversion-peri.xml')"/>
    
    <xsl:param name="docAdaNewFilename" as="xs:string" required="yes"/>
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
    
    <xsl:param name="debug" as="xs:boolean?" select="false()"/>

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
        <xsl:text>
[[Categorie:Kwalificatie]]</xsl:text>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml/data/*" mode="wiki">
        <!-- Override of the adaxml/data template from the imported stylesheet ADA2test-wiki-table.xsl. Makes it a bit nicer for Peri -->
        <xsl:variable name="vrouw" select="vrouw"/>
        <xsl:variable name="vrouw-bsn" select="$vrouw/burgerservicenummer/@value"/>
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabel voor vrouw -->
                <xsl:apply-templates select="$vrouw" mode="maak-tabel"/>
                <!-- tabel voor anamnese -->
                <xsl:apply-templates select="$vrouw/anamnese" mode="maak-tabel"/>
                <!-- tabellen voor de rest -->
                <xsl:apply-templates select="./(zorgverlening | zorgverlenerzorginstelling | obstetrische_anamnese_gegroepeerd_per_voorgaande_zwangerschap | zwangerschap | bevalling | uitkomst_per_kind | medisch_onderzoek | postnatale_fase)" mode="maak-tabel"/>
            </tabellen>
        </xsl:variable>
        
        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tabel"/>
            <xsl:with-param name="filename" select="@id"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>
       
        <xsl:text>
==Scenario </xsl:text>
        <xsl:value-of select="./@title"/>
        <xsl:text> (voor vrouw met BSN: </xsl:text>
        <xsl:value-of select="normalize-space(string-join($vrouw-bsn, ' '))"/>
        <xsl:text>)==
</xsl:text>
        <xsl:value-of select="concat('&lt;section begin=', $vrouw-bsn, ' /&gt;')"/>
        <xsl:apply-templates select="$tabel/tabel[@type eq 'vrouw']" mode="wiki"/>
        <xsl:value-of select="concat('&lt;section end=', $vrouw-bsn, ' /&gt;')"/>
        <xsl:for-each select="$tabel/tabel[not(@type eq 'vrouw')]">
            <xsl:text>
=== </xsl:text>
            <xsl:value-of select="./@title"/>
            <xsl:text> ===
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=', ./@type, '_', $vrouw-bsn, ' /&gt;')"/>
            <xsl:apply-templates select="." mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=', ./@type, '_', $vrouw-bsn, ' /&gt;')"/>
        </xsl:for-each>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-vrouw" match="vrouw" mode="maak-tabel">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation -->
        <xsl:param name="in" select=".">
            <!-- The ada vrouw which contents are rendered in the nested 'tabel' -->
        </xsl:param>
        <xsl:for-each select="$in">
            <tabel type="{./local-name()}" title="Vrouw">
                <xsl:apply-templates select="./*[not(local-name() eq 'anamnese')]" mode="maak-tabel-rij">
                    <xsl:with-param name="level" select="xs:integer(1)"/>
                </xsl:apply-templates>
            </tabel>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-vrouw-dekkingsgraad" match="vrouw" mode="maak-tabel-vrouw-dekkingsgraad">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation -->
        <xsl:param name="in" select=".">
            <!-- The ada vrouw template which contents are rendered in the 'tabel' -->
        </xsl:param>
        <xsl:param name="adaxml-vrouw" as="element(vrouw)*">
            <!-- The collection of ada vrouw containing test data -->
        </xsl:param>
        <xsl:for-each select="$in">
            <tabel type="{./local-name()}" title="Vrouw">
                <xsl:apply-templates select="./*[not(local-name() eq 'anamnese')][not(ends-with(local-name(), '-start'))]" mode="maak-tabel-rij-dekkingsgraad">
                    <xsl:with-param name="level" select="xs:integer(1)"/>
                    <xsl:with-param name="adaxml-element" select="$adaxml-vrouw"/>
                </xsl:apply-templates>
            </tabel>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="kernset_geboortezorg" mode="dekkingsgraad">
        <!-- Template for dekkingsgraad making use of the ada_new instance as context. Supplies all fields. -->
        <xsl:param name="adaxml-gz" as="element(kernset_geboortezorg)*">
            <!-- The adaxml instance(s) so that the coverage of the available fields from ada_new instance can be determined. -->
        </xsl:param>
        <xsl:variable name="vrouw" select="./vrouw"/>
        <xsl:variable name="vrouw-bsn" select="string-join($adaxml-gz/vrouw/burgerservicenummer/@value, ' - ')"/>
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabel voor vrouw -->
                <xsl:apply-templates select="$doc-ada-new/*/vrouw" mode="maak-tabel-vrouw-dekkingsgraad">
                    <xsl:with-param name="adaxml-vrouw" select="$adaxml-gz/vrouw"/>
                </xsl:apply-templates>
                <!-- tabel voor anamnese -->
                <xsl:apply-templates select="$doc-ada-new/*/vrouw/anamnese" mode="maak-tabel-dekkingsgraad">
                    <xsl:with-param name="adaxml-element" select="$adaxml-gz/vrouw/anamnese"/>
                </xsl:apply-templates>
                <!-- tabellen voor de rest -->
                <xsl:apply-templates select="./(zorgverlening | zorgverlenerzorginstelling | obstetrische_anamnese_gegroepeerd_per_voorgaande_zwangerschap | zwangerschap | bevalling | uitkomst_per_kind | medisch_onderzoek | postnatale_fase)" mode="maak-tabel-dekkingsgraad">
                    <xsl:with-param name="adaxml-element" select="$adaxml-gz/*"/>
                </xsl:apply-templates>
            </tabellen>
        </xsl:variable>

        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tabel"/>
            <xsl:with-param name="filename" select="'dg-ks'"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>

        <xsl:text>
==Vrouw ==
</xsl:text>
        <xsl:apply-templates select="$tabel/tabel[@type eq 'vrouw']" mode="wiki"/>
        <xsl:for-each select="$tabel/tabel[not(@type eq 'vrouw')]">
            <xsl:text>
=== </xsl:text>
            <xsl:value-of select="@title"/>
            <xsl:text> ===
</xsl:text>
            <xsl:apply-templates select="." mode="wiki"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="kernset_neonatologie" mode="dekkingsgraad">
        <!-- Template for dekkingsgraad making use of the ada_new instance as context. Supplies all fields. -->
        <xsl:param name="adaxml" as="element(kernset_neonatologie)*">
            <!-- The adaxml instance(s) so that the coverage of the available fields from ada_new instance can be determined. -->
        </xsl:param>
        <!-- Build a variable tabel which is tailored for output in documentation, such as wiki -->
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- tabellen voor de rest -->
                <xsl:apply-templates select="*" mode="maak-tabel-dekkingsgraad">
                    <xsl:with-param name="adaxml-element" select="$adaxml/*"/>
                </xsl:apply-templates>
            </tabellen>
        </xsl:variable>

        <xsl:call-template name="yatcs:write-debug-document">
            <xsl:with-param name="contents" select="$tabel"/>
            <xsl:with-param name="filename" select="'ksneo-dg'"/>
            <xsl:with-param name="enabled" select="$debug"/>
        </xsl:call-template>

        <xsl:for-each select="$tabel/tabel">
            <xsl:text>
=== </xsl:text>
            <xsl:value-of select="./@title"/>
            <xsl:text> ===
</xsl:text>
            <xsl:apply-templates select="." mode="wiki"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="vrouw/geboortedatum" mode="maak-tabel-rij">
        <!--  change the birth year of 'vrouw' if so indicated by the date config xml -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:variable name="output0time" select="false()" as="xs:boolean"/>
        <xsl:variable name="current-element" select="."/>
        <xsl:variable name="conversion-element">
            <xsl:sequence select="$date-conversion-xml//kernset_geboortezorg[@id eq $current-element/ancestor::kernset_geboortezorg/@id]/vrouw/geboortedatum"/>
        </xsl:variable>

        <xsl:variable name="new-date" as="element()">
            <geboortedatum xmlns="urn:hl7-org:v3">
                <xsl:attribute name="value">
                    <xsl:choose>
                        <xsl:when test="count($conversion-element/*) gt 0">
                            <xsl:variable name="years" select="translate($conversion-element/*[1]/@dayTimeDuration, 'PY', '')"/>
                            <!-- Normally you would use format-date() using Dutch language/country, but Saxon-He and Saxon-PE both misbehave and return English month names regardless
                e.g. format-date(xs:date('2019-03-21'), '[D01] [Mn,*-3] [Y0001]', 'nl', AD', 'NL') -->
                            <xsl:variable name="date" select="$conversion-element/*[1]/@value"/>
                            <xsl:if test="$date castable as xs:date">
                                <xsl:variable name="xsdate" select="xs:date($date)" as="xs:date"/>
                                <xsl:variable name="daynum" select="day-from-date($xsdate)" as="xs:integer"/>
                                <xsl:variable name="monthnum" select="month-from-date($xsdate)" as="xs:integer"/>
                                <xsl:value-of select="concat($daynum, ' ', nf:getDutchMonthName($monthnum, 3, 'low'))"/>
                            </xsl:if>
                            <xsl:value-of select="concat(' in het jaar: (jaar van ', $conversion-element/*/@base, ')')"/>
                            <xsl:if test="$years castable as xs:int and xs:integer($years) gt 0">
                                <xsl:value-of select="concat(' ', $conversion-element/*/@sign, ' ', $years, ' ', nwf:unit-string(xs:double($years), 'jaar'))"/>
                            </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:choose>
                                <xsl:when test="$current-element/@value castable as xs:dateTime">
                                    <xsl:value-of select="nf:formatDate($current-element/@value)"/>
                                    <xsl:variable name="time" select="nf:formatTime(nf:getTime($current-element/@value), $output0time)"/>
                                    <xsl:value-of select="                                             if ($time) then                                                 concat(', om ', $time)                                             else                                                 ()"/>
                                </xsl:when>
                                <xsl:when test="$current-element/@value castable as xs:date">
                                    <xsl:value-of select="nf:formatDate($current-element/@value)"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$current-element/@value"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </geboortedatum>
        </xsl:variable>
        <xsl:element name="gegevenselement" namespace="">
            <xsl:attribute name="level" select="$level"/>
            <xsl:attribute name="naam" select="nf:element-name(.)"/>
            <xsl:attribute name="waarde" select="nf:maak-waarde-basedon-valuedomain($new-date, nf:get-concept-value-domain(., 'type'), true(), true())"/>
        </xsl:element>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="datum | datum_betrokkenheid | datum_controle | datum_einde_zorgverantwoordelijkheid | datum_start_zorgverantwoordelijkheid | datum_verwijzing | definitieve_a_terme_datum | geboortedatum[not(ancestor::vrouw)] | tijdstip_actief_meepersen | tijdstip_begin_actieve_ontsluiting | tijdstip_breken_vliezen | datumtijd_vaststelling_perinatale_sterfte | voeding_kind_datum" mode="maak-tabel-rij">
        <!-- Creates a gegevenselement for the variable 'tabel' with a possibly configurable date -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - defaults to 1 but should be passed -->
        </xsl:param>
        <gegevenselement level="{$level}" naam="{nf:element-name(.)}" waarde="{nf:configurable-T-date-peri(., false())}"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="vorige_uitkomst_per_kind" mode="maak-tabel-rij">
        <!--  only vorige_baring is present in vorige_uitkomst_per_kind in dataset 2.3, so no reason to nest the vorige_baring under group 'vorige_uitkomst_per_kind' -->
        <xsl:param name="level" select="xs:integer(1)">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:apply-templates select="./vorige_baring" mode="maak-tabel-rij">
            <xsl:with-param name="level" select="$level"/>
            <xsl:with-param name="element-name">Vorige uitkomst per kind - vorige baring</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:configurable-T-date-peri" as="xs:string">
        <!--  -->
        <xsl:param name="current-element" as="element()?">
            <!-- the ada xml element in the current bouwsteen that has a date to be converted -->
        </xsl:param>
        <xsl:param name="output0time" as="xs:boolean?">
            <!-- whether or not an input-time of 00:00 should be outputted in the text -->
        </xsl:param>

        <xsl:choose>
            <!-- is there already a relative T-date in the input? -->
            <xsl:when test="starts-with($current-element/@value, 'T')">
                <xsl:value-of select="normalize-space(string-join(nf:formatTDate($current-element/@value, false(), true()), ''))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="ada-transaction-id" select="$current-element/ancestor::data/*/@id"/>

                <xsl:variable name="conversion_element">
                    <xsl:choose>
                        <xsl:when test="$current-element/local-name() = 'datum'">
                            <xsl:choose>
                                <xsl:when test="$current-element/ancestor::diagnose">
                                    <!-- This only works because all of the test scenario's have max 1 diagnose group -->
                                    <xsl:sequence select="$date-conversion-xml//*[@id = $ada-transaction-id]//diagnose/datum"/>
                                </xsl:when>
                                <xsl:when test="$current-element/(ancestor::diagnoseinterventie_postpartum | ancestor::diagnoseinterventie_postnataal)">
                                    <xsl:variable name="ada-parent-localname" select="$current-element/(ancestor::diagnoseinterventie_postpartum | ancestor::diagnoseinterventie_postnataal)[1]/local-name()"/>
                                    <xsl:sequence select="$date-conversion-xml//*[@id = $ada-transaction-id]/postnatale_fase/*[local-name() = $ada-parent-localname]/datum"/>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:when test="$current-element/local-name() = 'datum_betrokkenheid'">
                            <!-- take rangnummer kind in to account in case of multiple birth (twin or more) -->
                            <xsl:sequence select="                                     $date-conversion-xml//*[@id = $ada-transaction-id]/uitkomst_per_kind[not(rangnummer_kind) or not($current-element/ancestor::uitkomst_per_kind//rangnummer_kind)                                     or rangnummer_kind/@value = $current-element/ancestor::uitkomst_per_kind//rangnummer_kind/@value]//*[local-name() eq $current-element/local-name()]"/>
                        </xsl:when>
                        <xsl:when test="$current-element/local-name() = 'geboortedatum'">
                            <xsl:choose>
                                <xsl:when test="$current-element/ancestor::vorige_baring">
                                    <!-- This only works because all of the test scenario's have max 1 prior pregnancy and
                            all prior pregnancies only have one child, if this changes this part needs to be smarter-->
                                    <xsl:sequence select="$date-conversion-xml//*[@id = $ada-transaction-id]/obstetrische_anamnese_gegroepeerd_per_voorgaande_zwangerschap/eerdere_bevalling/vorige_baring/geboortedatum"/>
                                </xsl:when>
                                <xsl:when test="$current-element/ancestor::uitkomst_per_kind">
                                    <!-- take rangnummer kind in to account in case of multiple birth (twin or more) -->
                                    <xsl:sequence select="$date-conversion-xml//*[@id = $ada-transaction-id]/uitkomst_per_kind[not(rangnummer_kind) or not($current-element/../rangnummer_kind) or rangnummer_kind/@value = $current-element/../rangnummer_kind/@value]/geboortedatum"/>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:when test="$current-element/local-name() = 'definitieve_a_terme_datum'">
                            <xsl:choose>
                                <xsl:when test="$current-element/ancestor::obstetrische_anamnese_gegroepeerd_per_voorgaande_zwangerschap">
                                    <!-- This only works because all of the test scenario's have max 1 prior pregnancy,
                                if this changes this part needs to be smarter-->
                                    <xsl:sequence select="$date-conversion-xml//*[@id = $ada-transaction-id]/obstetrische_anamnese_gegroepeerd_per_voorgaande_zwangerschap/definitieve_a_terme_datum"/>
                                </xsl:when>
                                <xsl:when test="$current-element/ancestor::zwangerschap">
                                    <!-- take rangnummer kind in to account in case of multiple birth (twin or more) -->
                                    <xsl:sequence select="$date-conversion-xml//*[@id = $ada-transaction-id]/zwangerschap/definitieve_a_terme_datum"/>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:when test="$current-element/local-name() = ('tijdstip_breken_vliezen', 'tijdstip_actief_meepersen')">
                            <!-- take rangnummer kind in to account in case of multiple birth (twin or more) -->
                            <xsl:sequence select="$date-conversion-xml//*[@id = $ada-transaction-id]/uitkomst_per_kind[not(rangnummer_kind) or not($current-element/../../demografische_gegevens/rangnummer_kind) or rangnummer_kind/@value = $current-element/../../demografische_gegevens/rangnummer_kind/@value]/*[local-name() = $current-element/local-name()]"/>

                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:sequence select="$date-conversion-xml//*[@id = $ada-transaction-id]//*[local-name() eq $current-element/local-name()]"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:variable name="string-output" as="xs:string*">
                    <xsl:choose>
                        <xsl:when test="count($conversion_element/*) gt 0">
                            <xsl:variable name="days" select="translate($conversion_element/*/@dayTimeDuration, 'PD', '')"/>
                            <xsl:value-of select="$conversion_element/*/@base"/>
                            <xsl:if test="$days castable as xs:int and xs:integer($days) gt 0">
                                <xsl:value-of select="concat($conversion_element/*/@sign, ' ', $days, ' ', nwf:unit-string(xs:double($days), 'dag'))"/>
                            </xsl:if>
                            <xsl:if test="$current-element/@value castable as xs:dateTime">
                                <xsl:variable name="time" select="nf:formatTime(nf:getTime($current-element/@value), $output0time)"/>
                                <xsl:value-of select="                                         if ($time) then                                             concat(', om ', $time)                                         else                                             ()"/>
                            </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="nf:maak-waarde-basedon-valuedomain($current-element, nf:get-concept-value-domain($current-element, 'type'), $output0time, true())"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:value-of select="normalize-space(string-join($string-output, ''))"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:zorgaanbieder-string" as="xs:string*">
        <!--  -->
        <xsl:param name="in" as="element()?">
            <!--  -->
        </xsl:param>
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
        <!--  -->
        <xsl:param name="in" as="element()?">
            <!--  -->
        </xsl:param>
        <xsl:value-of select="string-join($in/zorgverlener/zorgverlener_naam//@value, ' ')"/>
        <xsl:if test="$in//specialisme/@displayName">
            <xsl:value-of select="concat(' - ', $in//specialisme/@displayName, '. ')"/>
        </xsl:if>
        <xsl:value-of select="string-join($in//zorgaanbieder/organisatie_naam/@value, ' ')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:persoon-string" as="xs:string*">
        <!--  -->
        <xsl:param name="in" as="element(persoon)?">
            <!--  -->
        </xsl:param>
        <xsl:value-of select="string-join($in/naamgegevens//@value, ' ')"/>
        <xsl:if test="$in/rol_of_functie/@displayName">
            <xsl:value-of select="concat(' - ', $in/rol_of_functie/@displayName, '. ')"/>
        </xsl:if>
        <xsl:value-of select="string-join($in/adresgegevens//@value, ' ')"/>
    </xsl:function>
</xsl:stylesheet>
