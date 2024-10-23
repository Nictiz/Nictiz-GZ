<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.fvb_v3m_hwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This is the stylesheet with generic code for lab/3.0.0/laboratoriumresultaten_met_references adarefs2ada builds.
       
       Input is the ADA document to transform. 
       It then takes a working set of ADA documents (passed in as parameter $adaWorkingSet) and transforms these, using 
       information from the input document.
       
       The output is a sequence of secondary documents (using <xsl:result-document>). The actual stylesheet output can be discarded.
    -->
    <!-- ======================================================================= -->
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
    <!-- ======================================================================= -->
    <!-- SETUP: -->

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:strip-space elements="*"/>

    <xsl:include href="../../../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../../../YATC-shared/xslmod/href.mod.xsl"/>

    <xsl:import href="../adarefs2ada-lab-300.xsl"/>
    
    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

   <xsl:include href="../../../../xslmod/adarefs2ada-build-standard-parameters.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>
    
    <!-- Weird idea, let's not ... but wiki liknks will break when we remove this as it goes into section ids -->
    <xsl:variable name="concat2id" select="'lr-'"/>
    <!--<xsl:variable name="concat2id" select="''"/>-->

    <xsl:variable name="resolvedPatient" as="element()?">
        <xsl:variable name="inPatientId" select="$ada-input/adaxml/data/*/patient-id"/>
        <xsl:choose>
            <xsl:when test="$inPatientId/@value">
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*/patientgegevens/patient[identificatienummer[@value = $inPatientId/@value][@root = $inPatientId/@root]])[1]"/>
            </xsl:when>
            <xsl:when test="$ada-input//data/*//laboratorium_uitslag_identificatie/@value">
                <!-- no patient id given in references transaction, let's find a (default repo) patient using the lu-id's -->
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[onderzoeksresultaat/laboratorium_uitslag/laboratorium_uitslag_identificatie/@value = $ada-input//data/*//laboratorium_uitslag_identificatie/@value]/patientgegevens/patient)[1]"/>
            </xsl:when>
        </xsl:choose>
    </xsl:variable>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        
        <xsl:for-each select="$ada-input/adaxml/data/*/subscenario[string-length(scenario-nr/@value) gt 0]">

            <!-- Variable resolved-ada-input which contains gegevens type transaction (with full patient and other stuff) 
                 rather than the references type transaction (with only identifiers for those-->
            <xsl:variable name="resolved-ada-input" as="node()*">
                <xsl:apply-templates select="." mode="copy-for-resolve"/>
            </xsl:variable>

            <!-- Write the result: -->
            <xsl:variable name="outputFilename" as="xs:string" select="concat($resolved-ada-input/data/*/@id, '.xml')"/>
            <xsl:result-document href="{yatcs:href-concat(($outputDirectory, $outputFilename))}">
                <xsl:sequence select="$resolved-ada-input"/>
            </xsl:result-document>

        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="ResolveSubscenario" match="subscenario" mode="copy-for-resolve">
        <xsl:param name="in" select="."/>

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

            <adaxml>
                <xsl:attribute name="xsi:noNamespaceSchemaLocation">../../sturen_laboratoriumresultaten/ada_schemas/ada_sturen_laboratoriumresultaten.xsd</xsl:attribute>

                <!--<xsl:comment> == Produced by adarefs2ada build {$application}/{$version}/{$buildName} at {current-dateTime()} == </xsl:comment>-->
                <xsl:comment> == Produced by adarefs2ada build {$application}/{$version}/{$buildName} == </xsl:comment>
                <xsl:comment> == ADA full xml for subscenario nr: <xsl:value-of select="$subNr"/> == </xsl:comment>

                <xsl:copy-of select="ancestor::adaxml/meta"/>
                <data>

                    <sturen_laboratoriumresultaten xmlns="" app="{ancestor::adaxml/data/*/@app}" shortName="sturen_laboratoriumresultaten" formName="sturen_laboratoriumresultaten" transactionRef="2.16.840.1.113883.2.4.3.11.60.25.4.28" transactionEffectiveDate="2022-03-03T00:00:00" prefix="lab-" language="nl-NL" title="{ancestor::adaxml/data/*/@title}" desc="{beschrijving/@value}" id="{concat($concat2id, ancestor::adaxml/data/*/@id, '-', $subNr)}">
                        <xsl:for-each select="scenario-nr[@value]">
                            <scenario-nr value="{@value}" conceptId="{@conceptId}"/>
                        </xsl:for-each>
                        <xsl:for-each select="screenshot[@value]">
                            <screenshot value="{@value}" conceptId="{@conceptId}"/>
                        </xsl:for-each>

                        <!-- patientgegevens -->
                        <xsl:comment>Patient found in instance with id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@id"/> and title: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@title"/></xsl:comment>
                        <patientgegevens conceptId="2.16.840.1.113883.2.4.3.11.60.25.2.2.4302">
                            <xsl:apply-templates select="$resolvedPatient" mode="copy-for-override"/>
                        </patientgegevens>

                        <!-- beschikbaarstellende_partij -->
                        <!-- try to find it using zorgverlener-id / zorgaanbieder-id, zorgverlener takes precedence over zorgaanbieder -->
                        <xsl:variable name="resolvedZorgverlener" as="element()?" select="($inputFulladaFiles/adaxml/data/*/beschikbaarstellende_partij/zorgverlener[zorgverlener_identificatienummer[@value = current()/../zorgverlener-id/@value][@root = current()/../zorgverlener-id/@root]])[1]"/>
                        <xsl:variable name="resolvedZorgaanbieder" as="element()?">
                            <xsl:choose>
                                <xsl:when test="$resolvedZorgverlener">
                                    <xsl:sequence select="($inputFulladaFiles/adaxml/data/*/beschikbaarstellende_partij/zorgaanbieder[@id = $resolvedZorgverlener/zorgaanbieder/zorgaanbieder/@value])[1]"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:sequence select="($inputFulladaFiles/adaxml/data/*/beschikbaarstellende_partij/zorgaanbieder[zorgaanbieder_identificatienummer[@value = current()/../zorgaanbieder-id/@value][@root = current()/../zorgaanbieder-id/@root]])[1]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <xsl:choose>
                            <xsl:when test="$resolvedZorgverlener">
                                <xsl:comment>Zorgverlener found in instance with id: <xsl:value-of select="$resolvedZorgverlener/ancestor::data/*/@id"/> and title: <xsl:value-of select="$resolvedZorgverlener/ancestor::data/*/@title"/></xsl:comment>
                                <beschikbaarstellende_partij>
                                    <xsl:apply-templates select="$resolvedZorgverlener" mode="copy-for-override"/>
                                    <xsl:apply-templates select="$resolvedZorgaanbieder" mode="copy-for-override"/>
                                </beschikbaarstellende_partij>
                            </xsl:when>
                            <xsl:when test="$resolvedZorgaanbieder">
                                <xsl:comment>Zorgaanbieder found in instance with id: <xsl:value-of select="$resolvedZorgaanbieder/ancestor::data/*/@id"/> and title: <xsl:value-of select="$resolvedZorgaanbieder/ancestor::data/*/@title"/></xsl:comment>
                                <beschikbaarstellende_partij>
                                    <xsl:apply-templates select="$resolvedZorgaanbieder" mode="copy-for-override"/>
                                </beschikbaarstellende_partij>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- no override for beschikbaarstellende_partij, let's take the first one found belonging to a laboratorium_uitslag -->
                                <xsl:variable name="resolvedBeschikbaarstellendePartij" as="element()?" select="($inputFulladaFiles/adaxml/data/*[onderzoeksresultaat/laboratorium_uitslag/laboratorium_uitslag_identificatie/@value = $ada-input/adaxml/data/*//laboratorium_uitslag-id/@value]/beschikbaarstellende_partij)[1]"/>
                                <xsl:comment>No override for beschikbaarstellende_partij, partij found in instance with id: <xsl:value-of select="$resolvedBeschikbaarstellendePartij/ancestor::data/*/@id"/> and title: <xsl:value-of select="$resolvedBeschikbaarstellendePartij/ancestor::data/*/@title"/> </xsl:comment>
                                <xsl:apply-templates select="$resolvedBeschikbaarstellendePartij" mode="copy-for-override"/>
                            </xsl:otherwise>
                        </xsl:choose>

                        <!-- onderzoeksresultaat -->
                        <xsl:for-each select="laboratorium_uitslag">
                            <xsl:variable name="resolvedOnderzoeksResultaat" as="element()?" select="($inputFulladaFiles/adaxml/data/*/onderzoeksresultaat[laboratorium_uitslag/laboratorium_uitslag_identificatie[@value = current()/laboratorium_uitslag-id/@value]])[1]"/>
                            <xsl:comment>laboratorium_uitslag found in instance with id: <xsl:value-of select="$resolvedOnderzoeksResultaat/ancestor::data/*/@id"/> and title: <xsl:value-of select="$resolvedOnderzoeksResultaat/ancestor::data/*/@title"/></xsl:comment>
                            <xsl:apply-templates select="$resolvedOnderzoeksResultaat" mode="copy-for-override">
                                <xsl:with-param name="overrideElement" select="." as="element()"/>
                            </xsl:apply-templates>

                        </xsl:for-each>

                    </sturen_laboratoriumresultaten>
                </data>
            </adaxml>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
