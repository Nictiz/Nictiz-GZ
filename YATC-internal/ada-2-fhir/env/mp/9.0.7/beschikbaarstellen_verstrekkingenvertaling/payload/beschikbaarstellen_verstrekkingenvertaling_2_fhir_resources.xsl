<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="urn:fhir:stu3:functions">
    <!-- ================================================================== -->
    <!--
        
            Author: Nictiz
            Purpose: This XSL was created to facilitate mapping from ADA MP9-transaction, to HL7 FHIR STU3 profiles.
        
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

    <!-- import because we want to be able to override the param for macAddress for UUID generation
         and the param for referById -->
    <xsl:import href="../../../2_fhir_mp90_include.xsl"/>
    <xsl:import href="../../../../fhir/2_fhir_fixtures.xsl"/>

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:strip-space elements="*"/>
    <!-- 02-00-00-00-00-00 may not be used in a production situation -->
    <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>
    <!-- parameter to determine whether to refer by resource/id -->
    <!-- should be false when there is no FHIR server available to retrieve the resources -->
    <xsl:param name="referById" as="xs:boolean" select="true()"/>

    <!-- select="$oidBurgerservicenummer" zorgt voor maskeren BSN -->
    <xsl:param name="mask-ids" as="xs:string?" select="$oidBurgerservicenummer"/>

    <xsl:variable name="commonEntries" as="element(f:entry)*">
        <xsl:copy-of select="$patients/f:entry, $practitioners/f:entry, $organizations/f:entry, $practitionerRoles/f:entry, $products/f:entry, $locations/f:entry"/>
    </xsl:variable>
    <!-- use case acronym to be added in resource.id -->
    <xsl:param name="usecase" as="xs:string?">mp9</xsl:param>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Start conversion. Handle interaction specific stuff for "beschikbaarstellen medicatieoverzicht". -->
        <xsl:call-template name="verstrekkingenvertaling_90_resources">
            <xsl:with-param name="mbh" select="//beschikbaarstellen_verstrekkingenvertaling/medicamenteuze_behandeling"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="verstrekkingenvertaling_90_resources">
        <!-- Build the individual FHIR resources. -->
        <xsl:param name="mbh">
            <!-- ada medicamenteuze behandeling -->
        </xsl:param>

        <xsl:variable name="entries" as="element(f:entry)*">
            <xsl:copy-of select="$bouwstenen-verstrekkingenvertaling"/>
            <!-- common entries (patient, practitioners, organizations, practitionerroles, products, locations, bouwstenen -->
            <xsl:copy-of select="$commonEntries"/>
        </xsl:variable>

        <xsl:apply-templates select="$entries/f:resource/*" mode="doResourceInResultdoc"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:Medication/f:meta/f:profile" mode="ResultOutput">
        <!-- Exceptions for results output in verstrekkingenvertaling -->
        <xsl:copy>
            <xsl:attribute name="value">http://nictiz.nl/fhir/StructureDefinition/mp612-DispenseToFHIRConversion-Product</xsl:attribute>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
