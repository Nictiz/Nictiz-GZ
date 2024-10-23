<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:hl7-org:v3" xmlns:cda="urn:hl7-org:v3" xmlns:hl7="urn:hl7-org:v3" xmlns:hl7nl="urn:hl7-nl:v3" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="#local.2024011810474710988330100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
            Mapping xslt for use case 'beschikbaarstellen medicatiegegevens' in MP-9. From ada to hl7.
        
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

    <xsl:import href="../../2_hl7_mp_include_91.xsl"/>
    <xsl:output method="xml" indent="yes"/>

    <!-- only give dateT a value if you want conversion of relative T dates, only used for testing -->
    <xsl:param name="dateT" as="xs:date?" select="xs:date('2020-01-01')"/>

    <!-- whether to output a schematron reference, must be false() in production environment -->
    <xsl:param name="schematron-ref" as="xs:boolean" select="true()"/>
    <!--    <xsl:param name="schematronBaseDir">file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/</xsl:param>-->
    <xsl:param name="schematronBaseDir">../</xsl:param>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!--  
            Base template puts a reference to schematron useful in development/testing phases. Then calls appropriate template to do the conversion. Puts a reference to schematron.
            phase="#ALL" achteraan de volgende regel zorgt dat oXygen niet met een phase chooser dialoog komt 
            elke keer dat je de HL7 XML opent 
         -->
        <xsl:if test="$schematron-ref">
            <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="<xsl:value-of select="$schematronBaseDir"/>schematron_closed_warnings/mp-MP90_mg.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="count(//beschikbaarstellen_medicatiegegevens) gt 1">
                <batch xmlns="">
                    <xsl:for-each select="//beschikbaarstellen_medicatiegegevens">
                        <xsl:call-template name="Medicatiegegevens_910">
                            <xsl:with-param name="patient" select="./patient"/>
                            <xsl:with-param name="mbh" select="./medicamenteuze_behandeling"/>
                        </xsl:call-template>
                    </xsl:for-each>
                </batch>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="Medicatiegegevens_910">
                    <xsl:with-param name="patient" select="//beschikbaarstellen_medicatiegegevens/patient"/>
                    <xsl:with-param name="mbh" select="//beschikbaarstellen_medicatiegegevens/medicamenteuze_behandeling"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Medicatiegegevens_910">
        <!-- Convert ada to HL7 for transaction beschikbaarstellen_medicatiegegevens -->
        <xsl:param name="patient" as="element()?">
            <!-- ada patient -->
        </xsl:param>
        <xsl:param name="mbh" as="element()*">
            <!-- ada medicamenteuze behandeling -->
        </xsl:param>

        <organizer classCode="CLUSTER" moodCode="EVN" xmlns:pharm="urn:ihe:pharm:medication">
            <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd'"/>
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9284"/>
            <code code="102" displayName="Medicatiegegevens" codeSystem="2.16.840.1.113883.2.4.3.11.60.20.77.4" codeSystemName="ART DECOR transacties"/>
            <statusCode nullFlavor="NI"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
            </xsl:for-each>

            <xsl:for-each select="$mbh">
                <!-- Medicatieafspraak -->
                <xsl:for-each select="medicatieafspraak">
                    <component typeCode="COMP">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9275_20191121115247"/>
                    </component>
                </xsl:for-each>
                <!-- Verstrekkingsverzoek -->
                <xsl:for-each select="verstrekkingsverzoek">
                    <component typeCode="COMP">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9301_20191125141436"/>
                    </component>
                </xsl:for-each>
                <!-- Toedieningsafspraak -->
                <xsl:for-each select="toedieningsafspraak">
                    <component typeCode="COMP">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9299_20191125140232"/>
                    </component>
                </xsl:for-each>
                <!-- Verstrekking -->
                <xsl:for-each select="verstrekking">
                    <component typeCode="COMP">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9294_20191121175237"/>
                    </component>
                </xsl:for-each>
                <!-- Medicatiegebruik -->
                <xsl:for-each select="medicatie_gebruik">
                    <component typeCode="COMP">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9281_20191121142645"/>
                    </component>
                </xsl:for-each>
            </xsl:for-each>
        </organizer>
    </xsl:template>
</xsl:stylesheet>
