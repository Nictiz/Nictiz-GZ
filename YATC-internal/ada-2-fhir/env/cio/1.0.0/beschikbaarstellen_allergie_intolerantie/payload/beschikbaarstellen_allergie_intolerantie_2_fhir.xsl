<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:util="urn:hl7:utilities" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="#local.2023100511155161887970200">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA transaction, to HL7 FHIR STU3 profiles.
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

    <xsl:import href="../../2_fhir_cio_1.0.0-2019.01-include.xsl"/>

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>

    <xsl:strip-space elements="*"/>

    <xsl:include href="../../../../../../../YATC-shared/xslmod/general.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <!-- If the desired output is to be a Bundle, then a self link string of type url is required. 
         See: https://www.hl7.org/fhir/stu3/search.html#conformance -->
    <xsl:param name="bundleSelfLink" as="xs:string?"/>

    <xsl:param name="dateT" as="xs:date?" select="current-date()"/>
    <!--<xsl:param name="dateT" as="xs:date?"/>-->

    <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>

    <xsl:param name="mask-ids" as="xs:string?" select="$oidBurgerservicenummer"/>

    <xsl:param name="referById" as="xs:boolean" select="false()"/>

    <xsl:variable name="commonEntries" as="element(f:entry)*">
        <xsl:copy-of select="$patients/f:entry, $practitioners/f:entry, $organizations/f:entry, $practitionerRoles/f:entry, $relatedPersons/f:entry"/>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Start conversion. Handle interaction specific stuff for "beschikbaarstellen allergieintolerantiegegevens". -->
        <xsl:apply-templates select="adaxml/data/beschikbaarstellen_allergie_intolerantie"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="AllIntConversion_10" match="beschikbaarstellen_allergie_intolerantie">
        <!-- Build a FHIR Bundle of type searchset. -->
        <xsl:processing-instruction name="xml-model">href="http://hl7.org/fhir/STU3/bundle.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
        <Bundle xsl:exclude-result-prefixes="#all" xsi:schemaLocation="http://hl7.org/fhir http://hl7.org/fhir/STU3/bundle.xsd" xmlns="http://hl7.org/fhir">
            <id value="{nf:get-uuid(*[1])}"/>
            <type value="searchset"/>
            <total value="{count($bouwstenen-all-int-gegevens)}"/>
            <xsl:choose>
                <xsl:when test="$bundleSelfLink[not(. = '')]">
                    <link>
                        <relation value="self"/>
                        <url value="{$bundleSelfLink}"/>
                    </link>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="util:logMessage">
                        <xsl:with-param name="level" select="$logWARN"/>
                        <xsl:with-param name="msg">Parameter bundleSelfLink is empty, but server SHALL return the parameters that were actually used to process the search.</xsl:with-param>
                        <xsl:with-param name="terminate" select="false()"/>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="$bouwstenen-all-int-gegevens" mode="ResultOutput"/>
            <!-- common entries (patient, practitioners, organizations, practitionerroles, relatedpersons -->
            <xsl:apply-templates select="$commonEntries" mode="ResultOutput"/>
        </Bundle>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="fhirLogicalId" match="f:id" mode="ResultOutput">
        <!-- Decision to output the fhirLogicalId based on $referById -->
        <xsl:if test="$referById">
            <xsl:copy>
                <xsl:apply-templates select="@* | node()" mode="ResultOutput"/>
            </xsl:copy>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
