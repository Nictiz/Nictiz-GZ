<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032108485607061130100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for combining stuff mp/9.2.0beta/medicatiegegevens_met_references adarefs2ada builds.
        
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
    
    <xsl:import href="../adarefs2ada-mp-920beta.xsl"/>
    
    <!-- ================================================================== -->
    <!-- PARAMETERS: -->
    
    <xsl:include href="../../../../xslmod/adarefs2ada-build-standard-parameters.mod.xsl"/>
    
    <xsl:param name="inputDirectory" as="xs:string" required="yes"/>
    
    <!-- ======================================================================= -->
    
    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>
    
    <xsl:variable name="inputRefAdaFiles" as="document-node()*" select="yatcs:get-ada-files($inputDirectory)"/>

    <xsl:variable name="concat2id">mg-</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Template to start conversion. Input is ada instance of transaction 'medicatiegegevens_met_references'. Outputs ada instance beschikbaarstellen_medicatiegegevens in the given output directory  -->
        <!-- ada instance for raadplegen_medicatiegegevens, we group per scenario per patient, regardless of building blocks, we combine all building blocks in one fulle ada file -->
        <!-- Variable resolved-ada-input which contains medicatie_gegevens type transaction (with full patient/ma/vv/ta/mve) 
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
                <xsl:comment>ada full xml for patient <xsl:value-of select="$resolvedPatientGroup/naamgegevens/geslachtsnaam/normalize-space(concat(voorvoegsels/@value, ' ', achternaam/@value))"/>, with bsn: <xsl:value-of select="$resolvedPatientGroup/identificatienummer/@value"/></xsl:comment>
                <adaxml>
                    <xsl:attribute name="xsi:noNamespaceSchemaLocation">../../beschikbaarstellen_medicatiegegevens/ada_schemas/ada_beschikbaarstellen_medicatiegegevens.xsd</xsl:attribute>
                    <xsl:copy-of select="ancestor::adaxml/meta"/>
                    <data>
                        <beschikbaarstellen_medicatiegegevens app="{ancestor::adaxml/data/*/@app}" shortName="beschikbaarstellen_medicatiegegevens" formName="medicatiegegevens" transactionRef="2.16.840.1.113883.2.4.3.11.60.20.77.4.172" transactionEffectiveDate="2021-04-02T09:33:39" prefix="mp-" language="nl-NL" title="{ancestor::adaxml/data/*/@title}" desc="{beschrijving/@value}" id="{concat('mg-mgrp-', ($resolvedPatientGroup/identificatienummer/@value)[1], '_ALL')}">
                            <xsl:for-each select="scenario-nr[@value]">
                                <scenario-nr value="{@value}" conceptId="2.16.840.1.113883.2.4.3.11.999.77.11.1.19798.2"/>
                            </xsl:for-each>
                            <!-- patiënt -->
                            <xsl:comment>Patient found in instance with id: <xsl:value-of select="$resolvedPatientGroup/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolvedPatientGroup/ancestor::data/*/@title"/></xsl:comment>
                            <xsl:apply-templates select="$resolvedPatientGroup" mode="copy-for-override"/>

                            <!-- mbh's -->
                            <!-- now find the mbh's belonging to mp building blocks and store it in a variable together with the full building blocks-->
                            <xsl:if test="current-group()/descendant::medicamenteuze_behandeling">
                                <xsl:variable name="mbhs" as="element()?">
                                    <mbhs>
                                        <xsl:for-each select="current-group()/descendant::medicatieafspraak">
                                            <xsl:variable name="ma-id" select="medicatieafspraak-id"/>
                                            <xsl:variable name="resolved-ma" select="($inputFulladaFiles/adaxml/data/*/medicamenteuze_behandeling/medicatieafspraak[identificatie[@value = $ma-id/@value][@root = $ma-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-ma/../identificatie"/>
                                                <!-- <xsl:comment>Medication agreement (medicatieafspraak) with id <xsl:value-of select="$ma-id/@value"/> found in instance with id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@title"/></xsl:comment>-->
                                                <xsl:apply-templates select="$resolved-ma" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each>
                                        <xsl:for-each select="current-group()/descendant::verstrekkingsverzoek">
                                            <xsl:variable name="vv-id" select="verstrekkingsverzoek-id"/>
                                            <xsl:variable name="resolved-vv" select="($inputFulladaFiles//verstrekkingsverzoek[identificatie[@value = $vv-id/@value][@root = $vv-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-vv/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-vv" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each>
                                        <xsl:for-each select="current-group()/descendant::toedieningsafspraak">
                                            <xsl:variable name="ta-id" select="toedieningsafspraak-id"/>
                                            <xsl:variable name="resolved-ta" select="($inputFulladaFiles//toedieningsafspraak[identificatie[@value = $ta-id/@value][@root = $ta-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-ta/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-ta" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each>
                                        <xsl:for-each select="current-group()/descendant::verstrekking">
                                            <xsl:variable name="mve-id" select="verstrekking-id"/>
                                            <xsl:variable name="resolved-mve" select="($inputFulladaFiles//verstrekking[identificatie[@value = $mve-id/@value][@root = $mve-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-mve/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-mve" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
                                            </medicamenteuze_behandeling>
                                        </xsl:for-each>
                                        <xsl:for-each select="current-group()/(descendant::medicatiegebruik | descendant::medicatie_gebruik)">
                                            <xsl:variable name="mgb-id" select="medicatiegebruik-id"/>
                                            <xsl:variable name="resolved-mgb" select="($inputFulladaFiles//(medicatiegebruik | medicatie_gebruik)[identificatie[@value = $mgb-id/@value][@root = $mgb-id/@root]])[1]"/>
                                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                                <!-- copy mbh id, do not append with patient shortname yet, we do this later-->
                                                <xsl:copy-of select="$resolved-mgb/../identificatie"/>
                                                <xsl:apply-templates select="$resolved-mgb" mode="copy-for-override">
                                                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedPatientGroup"/>
                                                </xsl:apply-templates>
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
                                                <xsl:with-param name="adaRefsTransaction" select=".."/>
                                                <xsl:with-param name="resolvedPatient" select="$resolvedPatientGroup"/>
                                            </xsl:call-template>
                                        </identificatie>
                                        <xsl:apply-templates select="current-group()/comment()" mode="copy-for-resolve"/>
                                        <!-- output all the building blocks in this group -->
                                        <xsl:apply-templates select="current-group()/medicatieafspraak" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/verstrekkingsverzoek" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/toedieningsafspraak" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/verstrekking" mode="copy-for-resolve"/>
                                        <xsl:apply-templates select="current-group()/(medicatiegebruik | medicatie_gebruik)" mode="copy-for-resolve"/>
                                    </xsl:copy>
                                </xsl:for-each-group>
                            </xsl:if>
                        </beschikbaarstellen_medicatiegegevens>
                    </data>
                </adaxml>

            </xsl:variable>
            <xsl:result-document href="{$outputDirectory}/{concat($resolved-ada-input/data/*/@id, '.xml')}" >
                <xsl:copy-of select="$resolved-ada-input"/>
            </xsl:result-document>
        </xsl:for-each-group>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="             medicatieafspraak[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.9580.2']             | verstrekkingsverzoek[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.19963.2']             | toedieningsafspraak[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.20132.1']             | verstrekking[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.20270.1']             | medicatie_gebruik[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.21338.1']" mode="copy-for-resolve"><!--  Template for resolving (references) into full xml Do not copy the input building blockx with only references.  --></xsl:template>
</xsl:stylesheet>
