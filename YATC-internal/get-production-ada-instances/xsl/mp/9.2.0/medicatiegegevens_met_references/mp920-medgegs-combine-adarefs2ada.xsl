<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032108485586022040100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <xsl:import href="../adarefs2ada-mp-920.xsl"/>
    <!-- ================================================================== -->
    <!--
         This is the stylesheet with generic code for combining stuff mp/9.2.0/medicatiegegevens_met_references adarefs2ada builds.
        
        It doesn't use the input document.
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
 
    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:include href="../../../../xslmod/adarefs2ada-build-standard-parameters.mod.xsl"/>

    <xsl:param name="inputDirectory" as="xs:string" required="true"/>
    <xsl:param name="transactionRef">2.16.840.1.113883.2.4.3.11.60.20.77.4.301</xsl:param>
    <xsl:param name="transactionEffectivedate">2022-02-07T00:00:00</xsl:param>
    

    <!-- ======================================================================= -->

    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>

    <xsl:variable name="inputRefAdaFiles" as="document-node()*" select="yatcs:get-ada-files($inputDirectory)"/>

    <xsl:variable name="concat2id">mg-</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Template to start conversion. Input is ada instance of transaction 'medicatiegegevens_met_references'. Outputs ada instance beschikbaarstellen_medicatiegegevens in the given output directory  -->
        <!-- ada instance for raadplegen_medicatiegegevens, we group per scenario per patient, regardless of building blocks, we combine all building blocks in one full ada file -->
        <!-- Variable resolved-ada-input which contains medicatie_gegevens type transaction (with full patient/ma/wds/vv/ta/mve/mgb/mtd) 
                 rather than the references type transaction (with only identifiers for patient/ma/vv/ta/mve-->
        <xsl:for-each-group select="$inputRefAdaFiles/adaxml/data/*" group-by="patient-id/@value">
            <xsl:variable name="resolved-ada-input" as="node()*">
                <xsl:variable name="resolvedPatientGroup" as="element()?">
                    <xsl:variable name="inPatientId" select="patient-id"/>
                    <xsl:choose>
                        <xsl:when test="$inPatientId/@value and $inputFulladaFiles/adaxml/data/*/patient[identificatienummer[@value = $inPatientId/@value][@root = $inPatientId/@root]]">
                            <xsl:sequence select="($inputFulladaFiles/adaxml/data/*/patient[identificatienummer[@value = $inPatientId/@value][@root = $inPatientId/@root]])[1]"/>
                        </xsl:when>
                        <xsl:when test="$inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/medicatieafspraak/identificatie/@value = $ada-input//data/*/medicatieafspraak/medicatieafspraak-id/@value]/patient">
                            <!-- no patient id given in references transaction or an id given but no patient found, let's find a (default repo) patient using the mbh-id's -->
                            <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/medicatieafspraak/identificatie/@value = $ada-input//data/*/medicatieafspraak/medicatieafspraak-id/@value]/patient)[1]"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- no patient id given in references transaction, no patient using the mbh-id's, aaargggh, we still want to write a result let's simply make up a patient, it needs a unique id -->
                            <patient comment="" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.1">
                                <naamgegevens comment="" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.2">
                                    <geslachtsnaam comment="" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.7">
                                        <achternaam value="Made up this name, patient is missing from repo!" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.9"/>
                                    </geslachtsnaam>
                                </naamgegevens>
                                <identificatienummer value="{generate-id(.)}" root="2.16.840.1.113883.2.4.6.3" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.35"/>
                                <geboortedatum value="2021-10-16" datatype="datetime" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.36"/>
                                <geslacht conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.37" value="2" code="M" codeSystem="2.16.840.1.113883.5.1" displayName="Man"/>
                            </patient>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>

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
                <xsl:variable name="theTitle" as="xs:string" select="concat('ada full xml for patient ', $resolvedPatientGroup/naamgegevens/geslachtsnaam/normalize-space(concat(voorvoegsels/@value, ' ', achternaam/@value)), ', with bsn: ', $resolvedPatientGroup/identificatienummer/@value)"/>

                <xsl:comment><xsl:value-of select="$theTitle"/></xsl:comment>
                <adaxml>
                    <xsl:attribute name="xsi:noNamespaceSchemaLocation">../../beschikbaarstellen_medicatiegegevens/ada_schemas/ada_beschikbaarstellen_medicatiegegevens.xsd</xsl:attribute>
                    <xsl:copy-of select="ancestor::adaxml/meta"/>
                    <data>
                        <xsl:variable name="currentFirstId" select="current-group()[1]/@id"/>
                        <xsl:variable name="enhanceId">
                            <xsl:choose>
                                <xsl:when test="contains($currentFirstId, 'tst')">-tst</xsl:when>
                                <xsl:when test="contains($currentFirstId, 'kwal')">-kwal</xsl:when>
                                <xsl:when test="contains($currentFirstId, 'CONS')">-CONS</xsl:when>
                            </xsl:choose>
                        </xsl:variable>
                        <beschikbaarstellen_medicatiegegevens app="{ancestor::adaxml/data/*/@app}" shortName="beschikbaarstellen_medicatiegegevens" formName="medicatiegegevens" transactionRef="{$transactionRef}" transactionEffectiveDate="{$transactionEffectivedate}" prefix="mp-" language="nl-NL" title="{$theTitle}" desc="{beschrijving/@value}" id="{narf:handle-ada-id(concat('mg-mgrp-', ($resolvedPatientGroup/identificatienummer/@value)[1], $enhanceId, '-ALL'))}">
                            <xsl:for-each select="scenario-nr[@value]">
                                <scenario-nr value="{@value}" conceptId="2.16.840.1.113883.2.4.3.11.999.77.2.4.1.2.1.1"/>
                            </xsl:for-each>
                            <!-- patiënt -->
                            <xsl:comment>Patient found in instance with id: <xsl:value-of select="$resolvedPatientGroup/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolvedPatientGroup/ancestor::data/*/@title"/></xsl:comment>
                            <xsl:apply-templates select="$resolvedPatientGroup" mode="copy-for-override"/>

                            <!-- mbh's -->
                            <!-- now find the mbh's belonging to mp building blocks and store it in a variable together with the full building blocks-->
                            <xsl:if test="current-group()/descendant::medicamenteuze_behandeling">
                                <xsl:variable name="mbhs" as="element()?">
                                    <mbhs>
                                        <!-- only unique building blocks so group on id -->
                                        <xsl:for-each-group select="current-group()/descendant::medicatieafspraak" group-by="medicatieafspraak-id/concat(@value, @root)">
                                            <xsl:variable name="ma-id" select="current-group()/medicatieafspraak-id"/>
                                            <xsl:variable name="resolved-ma" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/medicatieafspraak[identificatie[@value = $ma-id/@value][@root = $ma-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id -->
                                                <xsl:copy-of select="$resolved-ma/../identificatie"/>
                                                <!-- <xsl:comment>Medication agreement (medicatieafspraak) with id <xsl:value-of select="$ma-id/@value"/> found in instance with id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@title"/></xsl:comment>-->
                                                <xsl:apply-templates select="$resolved-ma" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each-group>
                                        <xsl:for-each-group select="current-group()/descendant::wisselend_doseerschema" group-by="wisselend_doseerschema-id/concat(@value, @root)">
                                            <xsl:variable name="wds-id" select="current-group()/wisselend_doseerschema-id"/>
                                            <xsl:variable name="resolved-wds" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/wisselend_doseerschema[identificatie[@value = $wds-id/@value][@root = $wds-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-wds/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-wds" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each-group>
                                        <xsl:for-each-group select="current-group()/descendant::verstrekkingsverzoek" group-by="verstrekkingsverzoek-id/concat(@value, @root)">
                                            <xsl:variable name="vv-id" select="current-group()/verstrekkingsverzoek-id"/>
                                            <xsl:variable name="resolved-vv" select="($inputFulladaFiles//verstrekkingsverzoek[identificatie[@value = $vv-id/@value][@root = $vv-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-vv/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-vv" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each-group>
                                        <xsl:for-each-group select="current-group()/descendant::toedieningsafspraak" group-by="toedieningsafspraak-id/concat(@value, @root)">
                                            <xsl:variable name="ta-id" select="current-group()/toedieningsafspraak-id"/>
                                            <xsl:variable name="resolved-ta" select="($inputFulladaFiles//toedieningsafspraak[identificatie[@value = $ta-id/@value][@root = $ta-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-ta/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-ta" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each-group>
                                        <xsl:for-each-group select="current-group()/(descendant::verstrekking | descendant::medicatieverstrekking)" group-by="verstrekking-id/concat(@value, @root)">
                                            <xsl:variable name="mve-id" select="current-group()/verstrekking-id"/>
                                            <xsl:variable name="resolved-mve" select="($inputFulladaFiles//(verstrekking | medicatieverstrekking)[identificatie[@value = $mve-id/@value][@root = $mve-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-mve/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-mve" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each-group>
                                        <xsl:for-each-group select="current-group()/(descendant::medicatiegebruik | descendant::medicatie_gebruik)" group-by="(medicatiegebruik-id | medicatie_gebruik-id)/concat(@value, @root)">
                                            <xsl:variable name="mgb-id" select="current-group()/(medicatiegebruik-id | medicatie_gebruik-id)"/>
                                            <xsl:variable name="resolved-mgb" select="($inputFulladaFiles//(medicatiegebruik | medicatie_gebruik)[identificatie[@value = $mgb-id/@value][@root = $mgb-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-mgb/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-mgb" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each-group>
                                        <xsl:for-each-group select="current-group()/descendant::medicatietoediening" group-by="medicatietoediening-id/concat(@value, @root)">
                                            <xsl:variable name="mtd-id" select="current-group()/medicatietoediening-id"/>
                                            <xsl:variable name="resolved-mtd" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/medicatietoediening[identificatie[@value = $mtd-id/@value][@root = $mtd-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-mtd/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-mtd" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each-group>
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
                                                <xsl:with-param name="adaRefsTransaction" select=".."/>
                                                <xsl:with-param name="resolvedPatient" select="$resolvedPatientGroup"/>
                                            </xsl:call-template>
                                        </identificatie>
                                        <xsl:apply-templates select="current-group()/comment()" mode="copy-for-resolve"/>
                                        <!-- output all the building blocks in this group -->
                                        <xsl:apply-templates select="current-group()/medicatieafspraak" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/wisselend_doseerschema" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/verstrekkingsverzoek" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/toedieningsafspraak" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/(medicatieverstrekking | verstrekking)" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/(medicatiegebruik | medicatie_gebruik)" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/medicatietoediening" mode="copy-for-resolve"/>
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

            </xsl:variable>
            <xsl:result-document href="{$outputDirectory}/{concat($resolved-ada-input/data/*/@id, '.xml')}">
                <xsl:copy-of select="$resolved-ada-input"/>
            </xsl:result-document>
        </xsl:for-each-group>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="medicatieafspraak[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.9580.2'] | verstrekkingsverzoek[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.19963.2'] | toedieningsafspraak[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.20132.1'] | verstrekking[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.20270.1'] | medicatie_gebruik[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.21338.1']" mode="copy-for-resolve"><!--  Template for resolving (references) into full xml Do not copy the input building blocks with only references.  --></xsl:template>
</xsl:stylesheet>
