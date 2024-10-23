<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032108485603862330100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp/9.2.0beta/medicatiegegevens_met_references adarefs2ada builds.
        
        Input is the ADA document to transform. 
        It then takes a working set of ADA documents (passed in as parameter $adaWorkingSet) and transforms these, using 
        information from the input document.
        
        The output is a sequence of secondary documents (using <xsl:result-document>). The actual stylesheet output can be discarded.
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

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:strip-space elements="*"/>

    <xsl:include href="../../../../../../YATC-shared/xslmod/general.mod.xsl"/>

    <xsl:import href="../adarefs2ada-mp-920beta.xsl"/>

    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:include href="../../../../xslmod/adarefs2ada-build-standard-parameters.mod.xsl"/>

    <xsl:param name="outputDirectoryRaadplegen" as="xs:string" required="true"/>

    <!-- ======================================================================= -->

    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>

    <xsl:variable name="concat2id">mg-</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Template to start conversion. Input is ada instance of transaction 'medicatiegegevens_met_references'. 
             Outputs ada instance beschikbaarstellen_medicatiegegevens in the given output directory  -->
        <xsl:for-each select="$ada-input/adaxml/data/*/subscenario[string-length(scenario-nr/@value) gt 0]">
            <!-- Variable resolved-ada-input which contains medicatie_gegevens type transaction (with full patient/ma/vv/ta/mve) 
                 rather than the references type transaction (with only identifiers for patient/ma/vv/ta/mve-->
            <xsl:variable name="resolved-ada-input" as="node()*">
                <xsl:apply-templates select="." mode="copy-for-resolve"/>
            </xsl:variable>
            <xsl:result-document href="{$outputDirectory}/{concat($resolved-ada-input/data/*/@id, '.xml')}">
                <xsl:copy-of select="$resolved-ada-input"/>
            </xsl:result-document>
        </xsl:for-each>

        <!-- ada instance for raadplegen_medicatiegegevens, we group per scenario, rather then per subscenario -->
        <!-- Variable resolved-ada-input which contains medicatie_gegevens type transaction (with full patient/ma/vv/ta/mve) 
                 rather than the references type transaction (with only identifiers for patient/ma/vv/ta/mve-->
        <xsl:for-each select="$ada-input/adaxml/data/*">
            <xsl:variable name="resolved-ada-input" as="node()*">
                <xsl:apply-templates select="." mode="copy-for-resolve-raadplegen"/>
            </xsl:variable>
            <xsl:result-document href="{$outputDirectoryRaadplegen}/{concat($resolved-ada-input/data/*/@id, '.xml')}">
                <xsl:copy-of select="$resolved-ada-input"/>
            </xsl:result-document>
        </xsl:for-each>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="ResolveSubscenario" match="subscenario" mode="copy-for-resolve">
        <!-- Resolves an ada with references xml to a full ada xml, makes a full ada xml per subscenario -->
        <xsl:param name="in" select=".">
            <!-- Optional, defaults to context, should contain ada element subscenario -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:variable name="subNr">
                <xsl:choose>
                    <xsl:when test="string-length(scenario-nr/@value) gt 0">
                        <xsl:value-of select="replace(translate(scenario-nr/@value, '_.', '--'), '[^a-zA-Z0-9-]', '')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="position()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:comment>ada full xml for subscenario nr: <xsl:value-of select="$subNr"/></xsl:comment>

            <adaxml>
                <xsl:attribute name="xsi:noNamespaceSchemaLocation">../../beschikbaarstellen_medicatiegegevens/ada_schemas/ada_beschikbaarstellen_medicatiegegevens.xsd</xsl:attribute>
                <xsl:copy-of select="ancestor::adaxml/meta"/>
                <data>
                    <beschikbaarstellen_medicatiegegevens app="{ancestor::adaxml/data/*/@app}" shortName="beschikbaarstellen_medicatiegegevens" formName="medicatiegegevens" transactionRef="2.16.840.1.113883.2.4.3.11.60.20.77.4.172" transactionEffectiveDate="2021-04-02T09:33:39" prefix="mp-" language="nl-NL" title="{ancestor::adaxml/data/*/@title}" desc="{beschrijving/@value}" id="{concat($concat2id, ancestor::adaxml/data/*/@id, '-', $subNr)}">
                        <xsl:for-each select="scenario-nr[@value]">
                            <scenario-nr value="{@value}" conceptId="{@conceptId}"/>
                        </xsl:for-each>
                        <xsl:copy-of select="systeemrol"/>
                        <xsl:for-each select="screenshot[@value]">
                            <screenshot value="{@value}" conceptId="{@conceptId}"/>
                        </xsl:for-each>
                        <!-- patiënt -->
                        <xsl:comment>Patient found in instance with id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@title"/></xsl:comment>
                        <xsl:apply-templates select="$resolvedPatient" mode="copy-for-override"/>

                        <!-- mbh's -->
                        <!-- now find the mbh's belonging to ma, vv, ta and mve and store it in a variable together with the full variant -->
                        <xsl:if test="descendant::medicamenteuze_behandeling">
                            <xsl:variable name="mbhs" as="element()?">
                                <mbhs>
                                    <xsl:for-each select="descendant::medicatieafspraak">
                                        <xsl:variable name="ma-id" select="medicatieafspraak-id"/>
                                        <xsl:variable name="resolved-ma" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/medicatieafspraak[identificatie[@value = $ma-id/@value][@root = $ma-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="{$resolved-ma/../@conceptId}">
                                            <!-- copy mbh id -->
                                            <xsl:copy-of select="$resolved-ma/../identificatie"/>
                                            <xsl:apply-templates select="$resolved-ma" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                    <xsl:for-each select="descendant::verstrekkingsverzoek">
                                        <xsl:variable name="vv-id" select="verstrekkingsverzoek-id"/>
                                        <xsl:variable name="resolved-vv" select="($inputFulladaFiles//verstrekkingsverzoek[identificatie[@value = $vv-id/@value][@root = $vv-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="{$resolved-vv/../@conceptId}">
                                            <!-- copy mbh id, append with patient shortname-->
                                            <xsl:copy-of select="$resolved-vv/../identificatie"/>
                                            <xsl:apply-templates select="$resolved-vv" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                    <xsl:for-each select="descendant::toedieningsafspraak">
                                        <xsl:variable name="ta-id" select="toedieningsafspraak-id"/>
                                        <xsl:variable name="resolved-ta" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/toedieningsafspraak[identificatie[@value = $ta-id/@value][@root = $ta-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="{$resolved-ta/../@conceptId}">
                                            <!-- copy mbh id, , append with patient shortname -->
                                            <xsl:copy-of select="$resolved-ta/../identificatie"/>
                                            <xsl:apply-templates select="$resolved-ta" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                    <xsl:for-each select="descendant::medicatieverstrekking">
                                        <xsl:variable name="mve-id" select="verstrekking-id"/>
                                        <xsl:variable name="resolved-mve" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/medicatieverstrekking[identificatie[@value = $mve-id/@value][@root = $mve-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="{$resolved-mve/../@conceptId}">
                                            <!-- copy mbh id, append with patient shortname-->
                                            <xsl:copy-of select="$resolved-mve/../identificatie"/>
                                            <xsl:apply-templates select="$resolved-mve" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                    <xsl:for-each select="descendant::medicatie_gebruik">
                                        <xsl:variable name="mgb-id" select="medicatie_gebruik-id"/>
                                        <xsl:variable name="resolved-mgb" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/medicatiegebruik[identificatie[@value = $mgb-id/@value][@root = $mgb-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="{$resolved-mgb/../@conceptId}">
                                            <!-- copy mbh id, , append with patient shortname -->
                                            <xsl:copy-of select="$resolved-mgb/../identificatie"/>
                                            <xsl:apply-templates select="$resolved-mgb" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                    <xsl:for-each select="descendant::medicatietoediening">
                                        <xsl:variable name="mtd-id" select="medicatietoediening-id"/>
                                        <xsl:variable name="resolved-mtd" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/medicatietoediening[identificatie[@value = $mtd-id/@value][@root = $mtd-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="{$resolved-mtd/../@conceptId}">
                                            <!-- copy mbh id, , append with patient shortname -->
                                            <xsl:copy-of select="$resolved-mtd/../identificatie"/>
                                            <xsl:apply-templates select="$resolved-mtd" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                    <xsl:for-each select="descendant::wisselend_doseerschema">
                                        <xsl:variable name="wds-id" select="wisselend_doseerschema-id"/>
                                        <xsl:variable name="resolved-wds" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/wisselend_doseerschema[identificatie[@value = $wds-id/@value][@root = $wds-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="{$resolved-wds/../@conceptId}">
                                            <!-- copy mbh id, , append with patient shortname -->
                                            <xsl:copy-of select="$resolved-wds/../identificatie"/>
                                            <xsl:apply-templates select="$resolved-wds" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                </mbhs>
                            </xsl:variable>
                            <!-- group the content of the variable on mbh id -->
                            <xsl:for-each-group select="$mbhs/medicamenteuze_behandeling" group-by="identificatie/concat(@root, '-', @value)">
                                <xsl:comment>Medicamenteuze behandeling <xsl:value-of select="current-grouping-key()"/></xsl:comment>
                                <xsl:copy>
                                    <!-- copy existing attributes -->
                                    <xsl:apply-templates select="@*" mode="copy-for-resolve"/>
                                    <!-- output the mbh id of this group -->
                                    <identificatie>
                                        <xsl:apply-templates select="current-group()/identificatie/@*" mode="copy-for-resolve"/>
                                        <!-- now let's see if we want to update this id with patient shortName -->
                                        <xsl:call-template name="handleMBHIdentificatieAfkoAppend">
                                            <xsl:with-param name="adaRefsTransaction" select="$in/.."/>
                                            <xsl:with-param name="resolvedPatient" select="$resolvedPatient"/>
                                        </xsl:call-template>
                                    </identificatie>
                                    <xsl:apply-templates select="current-group()/comment()" mode="copy-for-resolve"/>
                                    <!-- output all the ma's and vv's in this group -->
                                    <xsl:apply-templates select="current-group()/medicatieafspraak" mode="copy-for-resolve"/>
                                    <xsl:apply-templates select="current-group()/verstrekkingsverzoek" mode="copy-for-resolve"/>
                                    <xsl:apply-templates select="current-group()/toedieningsafspraak" mode="copy-for-resolve"/>
                                    <xsl:apply-templates select="current-group()/medicatieverstrekking" mode="copy-for-resolve"/>
                                    <xsl:apply-templates select="current-group()/medicatiegebruik" mode="copy-for-resolve"/>
                                    <xsl:apply-templates select="current-group()/medicatietoediening" mode="copy-for-resolve"/>
                                    <xsl:apply-templates select="current-group()/wisselend_doseerschema" mode="copy-for-resolve"/>
                                </xsl:copy>
                            </xsl:for-each-group>

                            <!-- finally the applicable bouwstenen for these mbh's -->
                            <xsl:variable name="distinctMbhReferenceValues" select="distinct-values($mbhs/medicamenteuze_behandeling//*[@datatype = 'reference']/@value)" as="xs:string*"/>
                            <bouwstenen>
                                <xsl:copy-of select="($inputFulladaFiles/adaxml/data/*/bouwstenen)[1]/@*"/>
                                <!-- only unique instances -->
                                <xsl:for-each-group select="$inputFulladaFiles/adaxml/data/*/bouwstenen/contactpersoon[@id = $distinctMbhReferenceValues]" group-by="@id">
                                    <xsl:copy-of select="current-group()[1]"/>
                                </xsl:for-each-group>
                                <xsl:for-each-group select="$inputFulladaFiles/adaxml/data/*/bouwstenen/farmaceutisch_product[@id = $distinctMbhReferenceValues]" group-by="@id">
                                    <xsl:copy-of select="current-group()[1]"/>
                                </xsl:for-each-group>
                                <xsl:for-each-group select="$inputFulladaFiles/adaxml/data/*/bouwstenen/zorgverlener[@id = $distinctMbhReferenceValues]" group-by="@id">
                                    <xsl:copy-of select="current-group()[1]"/>
                                </xsl:for-each-group>
                                <xsl:for-each-group select="$inputFulladaFiles/adaxml/data/*/bouwstenen/zorgaanbieder[@id = $inputFulladaFiles/adaxml/data/*/bouwstenen/zorgverlener[@id = $distinctMbhReferenceValues]//zorgaanbieder[@datatype = 'reference']/@value] | $inputFulladaFiles/adaxml/data/*/bouwstenen/zorgaanbieder[@id = $distinctMbhReferenceValues]" group-by="@id">
                                    <xsl:copy-of select="current-group()[1]"/>
                                </xsl:for-each-group>
                                <xsl:for-each-group select="$inputFulladaFiles/adaxml/data/*/bouwstenen/lichaamslengte[@id = $distinctMbhReferenceValues]" group-by="@id">
                                    <xsl:copy-of select="current-group()[1]"/>
                                </xsl:for-each-group>
                                <xsl:for-each-group select="$inputFulladaFiles/adaxml/data/*/bouwstenen/lichaamsgewicht[@id = $distinctMbhReferenceValues]" group-by="@id">
                                    <xsl:copy-of select="current-group()[1]"/>
                                </xsl:for-each-group>
                            </bouwstenen>
                        </xsl:if>

                    </beschikbaarstellen_medicatiegegevens>
                </data>
            </adaxml>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="ResolveForRaadplegen" match="sturen_medicatiegegevens" mode="copy-for-resolve-raadplegen">
        <!-- Resolves an ada with references xml to a full ada xml, makes a full ada xml per ada xml. Specific for Raadplegen scenario. -->
        <xsl:param name="in" select=".">
            <!-- Optional, defaults to context, should contain ada element subscenario -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:variable name="scenNr">
                <xsl:choose>
                    <xsl:when test="string-length(scenario-nr/@value) gt 0">
                        <xsl:value-of select="translate(scenario-nr/@value, '_.', '--')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="position()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:comment>ada full xml for subscenario nr: <xsl:value-of select="$scenNr"/></xsl:comment>

            <adaxml>
                <xsl:attribute name="xsi:noNamespaceSchemaLocation">../../beschikbaarstellen_medicatiegegevens/ada_schemas/ada_beschikbaarstellen_medicatiegegevens.xsd</xsl:attribute>
                <xsl:copy-of select="ancestor::adaxml/meta"/>
                <data>
                    <beschikbaarstellen_medicatiegegevens app="mp-mp907" shortName="beschikbaarstellen_medicatiegegevens" formName="uitwisselen_medicatiegegevens" transactionRef="2.16.840.1.113883.2.4.3.11.60.20.77.4.102" transactionEffectiveDate="2016-03-23T16:32:43" prefix="mp-" language="nl-NL" title="{ancestor::adaxml/data/*/@title}" desc="{beschrijving/@value}" id="{concat($concat2id, ancestor::adaxml/data/*/@id)}">
                        <xsl:for-each select="scenario-nr[@value]">
                            <scenario-nr value="{@value}" conceptId="2.16.840.1.113883.2.4.3.11.999.77.11.1.19798.2"/>
                        </xsl:for-each>
                        <!-- patiënt -->
                        <xsl:comment>Patient found in instance with id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@title"/></xsl:comment>
                        <xsl:apply-templates select="$resolvedPatient" mode="copy-for-override"/>

                        <!-- mbh's -->
                        <!-- now find the mbh's belonging to ma and vv and store it in a variable together with the full ma and vv-->
                        <xsl:if test="descendant::medicamenteuze_behandeling">
                            <xsl:variable name="mbhs" as="element()?">
                                <mbhs>
                                    <xsl:for-each select="descendant::medicatieafspraak">
                                        <xsl:variable name="ma-id" select="medicatieafspraak-id"/>
                                        <xsl:variable name="resolved-ma" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/medicatieafspraak[identificatie[@value = $ma-id/@value][@root = $ma-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                            <!-- copy mbh id, , append with patient shortname -->
                                            <xsl:copy-of select="$resolved-ma/../identificatie"/>
                                            <!-- <xsl:comment>Medication agreement (medicatieafspraak) with id <xsl:value-of select="$ma-id/@value"/> found in instance with id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@title"/></xsl:comment>-->
                                            <xsl:apply-templates select="$resolved-ma" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                    <xsl:for-each select="descendant::verstrekkingsverzoek">
                                        <xsl:variable name="vv-id" select="verstrekkingsverzoek-id"/>
                                        <xsl:variable name="resolved-vv" select="($inputFulladaFiles//verstrekkingsverzoek[identificatie[@value = $vv-id/@value][@root = $vv-id/@root]])[1]"/>
                                        <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                            <!-- copy mbh id, append with patient shortname-->
                                            <!-- <xsl:copy-of select="concat($resolved-vv/../identificatie, '-', $thePatientShortName)"/>-->
                                            <xsl:copy-of select="$resolved-vv/../identificatie"/>
                                            <!--  <xsl:comment>Dispense request (verstrekkingsverzoek) found in instance with id: <xsl:value-of select="$resolved-vv/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolved-vv/ancestor::data/*/@title"/></xsl:comment>-->
                                            <xsl:apply-templates select="$resolved-vv" mode="copy-for-override"/>
                                        </medicamenteuze_behandeling>
                                    </xsl:for-each>
                                </mbhs>
                            </xsl:variable>
                            <!-- group the content of the variable on mbh id -->
                            <xsl:for-each-group select="$mbhs/medicamenteuze_behandeling" group-by="identificatie/concat(@root, '-', @value)">
                                <xsl:comment>Medicamenteuze behandeling <xsl:value-of select="current-grouping-key()"/></xsl:comment>
                                <xsl:copy>
                                    <!-- copy existing attributes -->
                                    <xsl:apply-templates select="@*" mode="copy-for-resolve"/>
                                    <!-- output the mbh id of this group -->
                                    <identificatie>
                                        <xsl:apply-templates select="current-group()/identificatie/@*" mode="copy-for-resolve"/>
                                        <!-- now let's see if we want to update this id with patient shortName -->
                                        <xsl:call-template name="handleMBHIdentificatieAfkoAppend">
                                            <xsl:with-param name="adaRefsTransaction" select="$in/.."/>
                                            <xsl:with-param name="resolvedPatient" select="$resolvedPatient"/>
                                        </xsl:call-template>
                                    </identificatie>
                                    <xsl:apply-templates select="current-group()/comment()" mode="copy-for-resolve"/>
                                    <!-- output all the ma's and vv's in this group -->
                                    <xsl:apply-templates select="current-group()/medicatieafspraak" mode="copy-for-resolve"/>
                                    <xsl:apply-templates select="current-group()/verstrekkingsverzoek" mode="copy-for-resolve"/>
                                </xsl:copy>
                            </xsl:for-each-group>
                        </xsl:if>

                    </beschikbaarstellen_medicatiegegevens>
                </data>
            </adaxml>

        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
