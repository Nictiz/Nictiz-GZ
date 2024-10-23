<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:hl7-org:v3" xmlns:hl7="urn:hl7-org:v3" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="#local.2024011810474532630940100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
        
            Created on: April 20, 2023
            Author: nictiz
            Mapping xslt for use case 'beschikbaarstellen geneesmiddelovergevoeligheden' in CiO. From ada to hl7.
        
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

    <xsl:import href="../../../2_hl7_cio_include.xsl"/>
    <xsl:import href="../../../../zib2020bbr/payload/ada2hl7_all-zibs.xsl"/>

    <xsl:output method="xml" indent="yes"/>
    <!-- only give dateT a value if you want conversion of relative T dates to actual dates -->
    <xsl:param name="dateT" as="xs:date?" select="xs:date('2024-01-01')"/>

    <!-- ================================================================== -->

    <xsl:template match="/" name="baseCiO">
        <!--  Base template puts a reference to schematron useful in development/testing phases. Then calls appropriate template to do the conversion. Puts a reference to schematron. 
              phase="#ALL" prevents oXygen coming up with a phase chooser dialogue every time you open the instance XML -->
        <xsl:param name="in" select="//beschikbaarstellen_geneesmiddelovergevoeligheden" as="element()*">
            <!-- The input ada transaction, may be more than one in case of a batch file -->
        </xsl:param>
        <xsl:choose>
            <xsl:when test="count($in) gt 1">
                <batch xmlns="">
                    <xsl:for-each select="$in">
                        <xsl:call-template name="geneesmiddelOvergevoeligheid_20">
                            <xsl:with-param name="patient" select="./patient"/>
                            <xsl:with-param name="go" select="./geneesmiddelovergevoeligheid/bewaking_besluit"/>
                        </xsl:call-template>
                    </xsl:for-each>
                </batch>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="geneesmiddelOvergevoeligheid_20">
                    <xsl:with-param name="patient" select="$in/patient"/>
                    <xsl:with-param name="go" select="$in/geneesmiddelovergevoeligheid/bewaking_besluit"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="geneesmiddelOvergevoeligheid_20">
        <xsl:param name="patient" as="element()?"/>
        <xsl:param name="go" as="element()*"/>

        <organizer classCode="CLUSTER" moodCode="EVN" xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.18"/>
            <code code="419891008" displayName="Gegevensobject (gegevensobject)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <statusCode nullFlavor="NI"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20210701000000">
                    <xsl:with-param name="in" select="."/>
                </xsl:call-template>
            </xsl:for-each>

            <component typeCode="COMP">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.8_20210701000000">
                    <xsl:with-param name="go" select="$go"/>
                </xsl:call-template>
            </component>
        </organizer>
    </xsl:template>
</xsl:stylesheet>
