<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032108485614735480100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp/9.2.0beta/sturen_gebruik_met_references adarefs2ada builds.
        
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
    
    <!-- ======================================================================= -->
    
    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>

    <xsl:variable name="concat2id">sg-</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Template to start conversion. Outputs ada instance sturen_medicatiegebruik. Uses this resolved ada instance to output the test xslt schematron  -->
        <!-- Variable resolved-ada-input which containg medicatie_voorschrift type transaction (with full patient/ma/vv) 
             rather than medicatie_voorschrift2 type transaction (with only identifiers for patient/ma/vv-->
        <xsl:variable name="resolved-ada-input" as="element()">
            <xsl:apply-templates select="$ada-input" mode="copy-for-resolve"/>
        </xsl:variable>
        <xsl:result-document href="{$outputDirectory}/{concat($resolved-ada-input/data/*/@id, '.xml')}" >
            <xsl:copy-of select="$resolved-ada-input"/>
        </xsl:result-document>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml" mode="copy-for-resolve">
        <!--  Template for resolving meld_medicatieverstrekking (used for sturen_gebruik with references) into sturen_medicatiegebruik. 
            Update the adaxml tag for the resolved ada  -->
        <xsl:copy>
            <xsl:attribute name="xsi:noNamespaceSchemaLocation">../../sturen_medicatiegebruik/ada_schemas/ada_sturen_medicatiegebruik.xsd</xsl:attribute>
            <xsl:apply-templates select="* | node()" mode="copy-for-resolve"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="meld_medicatieverstrekking" mode="copy-for-resolve">
        <!--  Template for resolving meld_medicatieverstrekking into sturen_medicatiegebruik Converts transaction name to the name of the 'full' transaction  -->
        <sturen_medicatiegebruik app="mp-mp920" shortName="sturen_medicatiegebruik" formName="sturen_medicatiegebruik" transactionRef="2.16.840.1.113883.2.4.3.11.60.20.77.4.286" transactionEffectiveDate="2021-05-12T16:00:51" versionDate="" prefix="mp-" language="nl-NL" title="{@title}" desc="{@desc}" id="{concat($concat2id,@id)}">
            <xsl:apply-templates select="scenario-nr | screenshot" mode="copy-for-resolve"/>
            <xsl:call-template name="ResolveContent">
                <xsl:with-param name="in" select="."/>
            </xsl:call-template>
        </sturen_medicatiegebruik>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="ResolveContent">
        <!--  Template for resolving sturen_toediengegevens (references) into sturen_afhandeling_medicatievoorschrift. This template resolves the patient and mbh's -->
        <xsl:param name="in" select=".">
            <!-- The input ada references transaction -->
        </xsl:param>
        <xsl:comment>Patient found in instance with id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@title"/></xsl:comment>
        <xsl:apply-templates select="$resolvedPatient" mode="copy-for-override"/>
        <!-- now find the mbh's belonging to ta and mve and store it in a variable together with the full ta and mve -->
        <xsl:if test="medicamenteuze_behandeling">
            <xsl:variable name="mbhs" as="element()?">
                <mbhs>
                    <xsl:for-each select="medicamenteuze_behandeling/medicatie_gebruik">
                        <xsl:variable name="mgb-id" select="medicatie_gebruik-id"/>
                        <xsl:variable name="resolved-mgb" select="($inputFulladaFiles//(medicatie_gebruik | medicatiegebruik)[identificatie[@value = $mgb-id/@value][@root = $mgb-id/@root]])[1]"/>
                        <xsl:comment>Medication use (medicatiegebruik) found in instance with id: <xsl:value-of select="$resolved-mgb/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolved-mgb/ancestor::data/*/@title"/></xsl:comment>
                        <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                            <!-- copy mbh id -->
                            <xsl:copy-of select="$resolved-mgb/../identificatie"/>
                            <xsl:apply-templates select="$resolved-mgb" mode="copy-for-override"/>
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
                    <!-- output all the mgbs in this group -->
                    <xsl:apply-templates select="current-group()/(medicatie_gebruik | medicatiegebruik)" mode="copy-for-resolve"/>
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
            </bouwstenen>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="toedieningsafspraak[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.2.4.294.1'] | (verstrekking | medicatieverstrekking)[@conceptId = '2.16.840.1.113883.2.4.3.11.999.77.11.1.20270.1']" mode="copy-for-resolve"><!--  Template for resolving sturen_toediengegevens (references) into sturen_afhandeling_medicatievoorschrift. Do not copy the input toedieningsafspraak and verstrekking with only references.  --></xsl:template>
</xsl:stylesheet>