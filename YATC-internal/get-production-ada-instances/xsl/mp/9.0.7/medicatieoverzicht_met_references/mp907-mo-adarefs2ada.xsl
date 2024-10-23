<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.202303210848555481910100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp/9.0.7/medicatieoverzicht_met_references adarefs2ada builds.
        
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

    <xsl:import href="../adarefs2ada-mp-907.xsl"/>

    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:include href="../../../../xslmod/adarefs2ada-build-standard-parameters.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>

    <xsl:variable name="concat2id">mo-</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Template to start conversion. 
            Outputs ada instance beschikbaarstellen_medicatieoverzicht in debug directory when $debug is true
            Uses this resolved ada instance to output the test xslt schematron
         -->
        <xsl:for-each select="$ada-input/adaxml/data/*">
            <!-- Variable resolved-ada-input which contains medicatieoverzicht type transaction (with full patient/ma/vv) 
                rather than the references type transaction (with only identifiers for patient/ma/ta/mgb-->
            <xsl:variable name="resolved-ada-input" as="node()*">
                <xsl:apply-templates select="." mode="copy-for-resolve"/>
            </xsl:variable>
            <xsl:result-document href="{$outputDirectory}/{concat($resolved-ada-input/data/*/@id, '.xml')}">
                <xsl:copy-of select="$resolved-ada-input"/>
            </xsl:result-document>
        </xsl:for-each>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="sturen_medicatieoverzicht" mode="copy-for-resolve">
        <!-- 
            Template for resolving sturen_medicatieoverzicht (references) into beschikbaarstellen_medicatieoverzicht
            Converts transaction name to the name of the 'full' transaction
         -->
        <adaxml>
            <xsl:attribute name="xsi:noNamespaceSchemaLocation">../../beschikbaarstellen_medicatieoverzicht/ada_schemas/ada_beschikbaarstellen_medicatieoverzicht.xsd</xsl:attribute>
            <xsl:copy-of select="ancestor::adaxml/meta"/>
            <data>
                <beschikbaarstellen_medicatieoverzicht app="mp-mp907" shortName="beschikbaarstellen_medicatieoverzicht" formName="medicatieoverzicht" transactionRef="2.16.840.1.113883.2.4.3.11.60.20.77.4.148" transactionEffectiveDate="2016-11-08T10:34:41" prefix="mp-" language="nl-NL" title="{@title}" desc="{@desc}" id="{concat($concat2id,@id)}">
                    <xsl:apply-templates select="node()" mode="copy-for-resolve"/>
                </beschikbaarstellen_medicatieoverzicht>
            </data>
        </adaxml>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="ResolveContent" match="patient-id" mode="copy-for-resolve">
        <!-- 
            Template for resolving sturen_medicatieoverzicht (references) into beschikbaarstellen_medicatieoverzicht
            This template resolves the patient and mbh's -->
        <xsl:param name="in" select=".">
            <!-- The input patient-id from the sturen_medicatieoverzicht (references) transaction -->
        </xsl:param>
        <!--        <xsl:variable name="resolvedPatient" select="($inputFulladaFiles//patient[identificatienummer[@value = $in/@value][@root = $in/@root]])[1]"/>-->
        <xsl:comment>Patient found in instance with id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@title"/></xsl:comment>
        <xsl:apply-templates select="$resolvedPatient" mode="copy-for-override"/>
        <!-- now find the mbh's belonging to ma and store it in a variable together with the full ma -->
        <xsl:if test="following-sibling::medicamenteuze_behandeling">
            <xsl:variable name="mbhs" as="element()?">
                <mbhs>
                    <xsl:for-each select="following-sibling::*/medicatieafspraak">
                        <xsl:variable name="ma-id" select="medicatieafspraak-id"/>
                        <xsl:variable name="resolved-ma" select="($inputFulladaFiles//medicatieafspraak[identificatie[@value = $ma-id/@value][@root = $ma-id/@root]])[1]"/>
                        <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.3.22092">
                            <!-- copy mbh id -->
                            <xsl:copy-of select="$resolved-ma/../identificatie"/>
                            <xsl:comment>Medication agreement (medicatieafspraak) with id <xsl:value-of select="$ma-id"/> found in instance with id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@title"/></xsl:comment>
                            <xsl:apply-templates select="$resolved-ma" mode="copy-for-override">
                                <xsl:with-param name="overrideElement" select="." as="element()"/>
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
                            <xsl:with-param name="adaRefsTransaction" select="$in/.."/>
                            <xsl:with-param name="resolvedPatient" select="$resolvedPatient"/>
                        </xsl:call-template>
                    </identificatie>
                    <!-- output all the ma's and vv's in this group -->
                    <xsl:apply-templates select="current-group()/medicatieafspraak" mode="copy-for-resolve"/>
                </xsl:copy>
            </xsl:for-each-group>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="medicamenteuze_behandeling[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.22092.1'] | patient-afko" mode="copy-for-resolve"><!-- 
            Template for resolving  (references) into full xml
            Do not copy the input medicamenteuze_behandeling with only references.
            Do not copy patient-afko
         --></xsl:template>
</xsl:stylesheet>
