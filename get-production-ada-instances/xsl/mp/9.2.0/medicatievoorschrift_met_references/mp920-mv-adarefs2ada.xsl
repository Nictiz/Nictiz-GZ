<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032108485595390690100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp/9.2.0/medicatievoorschrift_met_references adarefs2ada builds.
        
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
    
    <xsl:import href="../adarefs2ada-mp-920.xsl"/>
    
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
    
    <xsl:param name="versionDir">9.2.0</xsl:param>
    <xsl:param name="transactionRef" as="xs:string">2.16.840.1.113883.2.4.3.11.60.20.77.4.322</xsl:param>
    <xsl:param name="transactionEffectiveDate">2022-02-07T00:00:00</xsl:param>

    <xsl:variable name="concat2id">mv-</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Template to start conversion. Outputs ada instance sturen_medicatievoorschrift in debug directory when $debug is true Uses this resolved ada instance to output the test xslt schematron  -->
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
        <!-- Update or add schema reference -->
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <!-- update or add schema -->
            <xsl:attribute name="xsi:noNamespaceSchemaLocation">../../../<xsl:value-of select="$versionDir"/>/sturen_medicatievoorschrift/ada_schemas/ada_sturen_medicatievoorschrift.xsd</xsl:attribute>
            <xsl:apply-templates select="*" mode="copy-for-resolve"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="verzoek_uitvoeren_voorschrift" mode="copy-for-resolve">
        <!--  Template for resolving verzoek_uitvoeren_voorschrift or sturen_medicatievoorschrift2 (references) into sturen_medicatievoorschrift.
            Converts transaction name to the name of the 'full' transaction  -->
        <sturen_medicatievoorschrift app="{@app}" shortName="sturen_medicatievoorschrift" formName="sturen_medicatievoorschrift" transactionRef="{$transactionRef}" transactionEffectiveDate="{$transactionEffectiveDate}" versionDate="" prefix="mp-" language="nl-NL" title="{@title}" desc="{@desc}" id="{narf:handle-ada-id(concat($concat2id,@id))}">
            <xsl:apply-templates select="scenario-nr | systeemrol | screenshot" mode="copy-for-resolve"/>
            <xsl:call-template name="ResolveContent">
                <xsl:with-param name="in" select="."/>
            </xsl:call-template>
        </sturen_medicatievoorschrift>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="ResolveContent">
        <!--  Template for resolving sturen_medicatievoorschrift_references into sturen_medicatievoorschrift. This template resolves the patient, mbh's and other bouwstenen -->
        <xsl:param name="in" select=".">
            <!-- The input ada references transaction -->
        </xsl:param>
        <xsl:comment>Patient found in instance with id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolvedPatient/ancestor::data/*/@title"/></xsl:comment>
        <xsl:apply-templates select="$resolvedPatient" mode="copy-for-override"/>

        <xsl:for-each select="$in">
            <!-- now find the mbh's belonging to ma and vv and store it in a variable together with the full ma and vv-->
            <xsl:if test="medicatieafspraak | verstrekkingsverzoek">
                <xsl:variable name="mbhs" as="element()?">
                    <mbhs>
                        <xsl:for-each select="medicatieafspraak">
                            <xsl:variable name="ma-id" select="medicatieafspraak-id"/>
                            <xsl:variable name="resolved-ma" select="($inputFulladaFiles//medicatieafspraak[identificatie[@value = $ma-id/@value][@root = $ma-id/@root]])[1]"/>
                            <xsl:comment>Medication agreement (medicatieafspraak) found in instance with id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolved-ma/ancestor::data/*/@title"/></xsl:comment>
                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                <!-- copy mbh id -->
                                <xsl:copy-of select="$resolved-ma/../identificatie"/>
                                <xsl:apply-templates select="$resolved-ma" mode="copy-for-override">
                                    <xsl:with-param name="overrideElement" select="." as="element()"/>
                                </xsl:apply-templates>
                            </medicamenteuze_behandeling>
                        </xsl:for-each>
                        <xsl:for-each select="verstrekkingsverzoek">
                            <xsl:variable name="vv-id" select="verstrekkingsverzoek-id"/>
                            <xsl:variable name="resolved-vv" select="($inputFulladaFiles//verstrekkingsverzoek[identificatie[@value = $vv-id/@value][@root = $vv-id/@root]])[1]"/>
                            <xsl:comment>Dispense request (verstrekkingsverzoek) found in instance with id: <xsl:value-of select="$resolved-vv/ancestor::data/*/@id"/> and title: id: <xsl:value-of select="$resolved-vv/ancestor::data/*/@title"/></xsl:comment>
                            <medicamenteuze_behandeling conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.41">
                                <!-- copy mbh id -->
                                <xsl:copy-of select="$resolved-vv/../identificatie"/>
                                <xsl:apply-templates select="$resolved-vv" mode="copy-for-override">
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
                        <xsl:apply-templates select="current-group()/verstrekkingsverzoek" mode="copy-for-resolve"/>
                    </xsl:copy>
                </xsl:for-each-group>
                <!-- finally the applicable bouwstenen for these mbh's -->
                <xsl:variable name="distinctMbhReferenceValues" select="distinct-values($mbhs/medicamenteuze_behandeling//*[@datatype = 'reference']/@value)" as="xs:string*"/>
                <bouwstenen>
                    <xsl:copy-of select="($inputFulladaFiles/adaxml/data/*/bouwstenen)[1]/@*"/>
                    <!-- only unique instances -->
                    <xsl:for-each select="$distinctMbhReferenceValues">
                        <xsl:copy-of select="($inputFulladaFiles/adaxml/data/*/bouwstenen/contactpersoon[@id = current()])[1]"/>
                    </xsl:for-each>

                    <xsl:for-each select="$distinctMbhReferenceValues">
                        <xsl:copy-of select="($inputFulladaFiles/adaxml/data/*/bouwstenen/farmaceutisch_product[@id = current()])[1]"/>
                    </xsl:for-each>
                    <!-- in medicatievoorschrift there may be an override for telefoonnummer, so go into override mode -->
                    <xsl:for-each select="$distinctMbhReferenceValues">
                        <xsl:apply-templates select="($inputFulladaFiles/adaxml/data/*/bouwstenen/zorgverlener[@id = current()])[1]" mode="copy-for-override"/>
                    </xsl:for-each>

                    <xsl:for-each select="$distinctMbhReferenceValues">
                        <xsl:copy-of select="($inputFulladaFiles/adaxml/data/*/bouwstenen/zorgaanbieder[@id = $inputFulladaFiles/adaxml/data/*/bouwstenen/zorgverlener[@id = current()]//zorgaanbieder[@datatype = 'reference']/@value])[1] | ($inputFulladaFiles/adaxml/data/*/bouwstenen/zorgaanbieder[@id = current()])[1]"/>
                    </xsl:for-each>
                    <!-- gewicht/lengte -->
                    <xsl:apply-templates select="lichaamslengte | lichaamsgewicht" mode="copy-for-override"/>
                </bouwstenen>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="(lichaamslengte | lichaamsgewicht)/identificatienummer" mode="copy-for-override">
        <!--  update element name identificatie from refs to full  -->
        <identificatie>
            <xsl:apply-templates select="@*" mode="copy-for-override"/>
        </identificatie>
    </xsl:template>
</xsl:stylesheet>
