<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="YATC-internal/ada-2-fhir/env/zibs2017/payload/package-1.3.10.xsl"?>
<?yatc-distribution-info name="ketenzorg-3.0.2" timestamp="2024-06-28T14:38:20.79+02:00" version="1.4.28"?>
<!-- == Provenance: YATC-internal/ada-2-fhir/env/zibs2017/payload/package-1.3.10.xsl == -->
<!-- == Distribution: ketenzorg-3.0.2; 1.4.28; 2024-06-28T14:38:20.79+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <!-- ================================================================== -->
   <!--
        TBD
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
   <!-- Without this import, all depending XSLs need to import it -->
   <xsl:import href="mp-functions-fhir.xsl"/>
   <xsl:import href="_zib2017.xsl"/>
   <xsl:import href="ext-code-specification-1.0.xsl"/>
   <xsl:import href="ext-zib-medication-additional-information-2.0.xsl"/>
   <xsl:import href="ext-zib-medication-copy-indicator-2.0.xsl"/>
   <xsl:import href="ext-zib-medication-instructions-for-use-description-1.0.xsl"/>
   <xsl:import href="ext-zib-medication-medication-treatment-2.0.xsl"/>
   <xsl:import href="ext-zib-medication-period-of-use-2.0.xsl"/>
   <xsl:import href="ext-zib-medication-repeat-period-cyclical-schedule-2.0.xsl"/>
   <xsl:import href="ext-zib-medication-stop-type-2.0.xsl"/>
   <xsl:import href="ext-zib-medication-use-duration-2.0.xsl"/>
   <xsl:import href="nl-core-patient-2.1.xsl"/>
   <xsl:import href="nl-core-relatedperson-2.0.xsl"/>
   <xsl:import href="nl-core-practitioner-2.0.xsl"/>
   <xsl:import href="nl-core-practitionerrole-2.0.xsl"/>
   <xsl:import href="nl-core-organization-2.0.xsl"/>
   <xsl:import href="nl-core-humanname-2.0.xsl"/>
   <xsl:import href="nl-core-address-2.0.xsl"/>
   <xsl:import href="nl-core-contactpoint-1.0.xsl"/>
   <xsl:import href="zib-advancedirective-2.1.xsl"/>
   <xsl:import href="zib-alert-2.1.xsl"/>
   <xsl:import href="zib-allergyintolerance-2.1.xsl"/>
   <xsl:import href="zib-body-height-2.1.xsl"/>
   <xsl:import href="zib-body-weight-2.1.xsl"/>
   <xsl:import href="zib-instructions-for-use-2.0.xsl"/>
   <xsl:import href="zib-instructions-for-use-3.0.xsl"/>
   <xsl:import href="zib-LaboratoryTestResult-Observation-2.1.xsl"/>
   <xsl:import href="zib-LaboratoryTestResult-Specimen-2.1.xsl"/>
   <xsl:import href="zib-medicationagreement-2.2.xsl"/>
   <xsl:import href="zib-medicationagreement-3.0.xsl"/>
   <xsl:import href="zib-medicationuse-2.2.xsl"/>
   <xsl:import href="zib-medicationuse-3.0.xsl"/>
   <xsl:import href="zib-problem-2.1.xsl"/>
   <!--<xsl:template match="/">
        <xsl:copy-of select="$labSpecimens"></xsl:copy-of>
    </xsl:template>-->
   <!-- ================================================================== -->
</xsl:stylesheet>