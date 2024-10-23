<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/all_zibs.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.2.0; 2024-03-14T08:34:46.14+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:nm="http://www.nictiz.nl/mappings"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <!-- moved import of util here to prevent duplicate import warnings due to fhir use in ada-hl7v3 conversions (dosageInstructions in FHIR) -->
   <xsl:import href="constants-d794e244.xsl"/>
   <xsl:import href="datetime-d794e245.xsl"/>
   <xsl:import href="units-d794e246.xsl"/>
   <xsl:import href="utilities-d794e247.xsl"/>
   <xsl:import href="fhir_2_ada_fhir_include-d794e277.xsl"/>
   <xsl:import href="mp-functions-d794e240.xsl"/>
   <xsl:import href="contextContactEpisodeOfCare.xsl"/>
   <xsl:import href="ext-CopyIndicator-d794e279.xsl"/>
   <xsl:import href="ext-MedicationAgreementPeriodOfUseCondition-d794e280.xsl"/>
   <xsl:import href="ext-StopType.xsl"/>
   <xsl:import href="ext-TimeInterval-Duration.xsl"/>
   <xsl:import href="ext-TimeInterval-Period.xsl"/>
   <xsl:import href="nl-core-AddressInformation-d794e284.xsl"/>
   <xsl:import href="nl-core-AdministrationAgreement.xsl"/>
   <xsl:import href="nl-core-BodyHeight-d794e287.xsl"/>
   <xsl:import href="nl-core-BodyWeight-d794e288.xsl"/>
   <xsl:import href="nl-core-ContactInformation-d794e289.xsl"/>
   <xsl:import href="nl-core-ContactPerson-d794e290.xsl"/>
   <xsl:import href="nl-core-DispenseRequest.xsl"/>
   <xsl:import href="nl-core-HealthcareProvider-Organization.xsl"/>
   <xsl:import href="nl-core-HealthProfessional-Practitioner.xsl"/>
   <xsl:import href="nl-core-HealthProfessional-PractitionerRole.xsl"/>
   <xsl:import href="nl-core-InstructionsForUse.xsl"/>
   <xsl:import href="nl-core-LaboratoryTestResult-d794e296.xsl"/>
   <xsl:import href="nl-core-MedicationAdministration.xsl"/>
   <xsl:import href="nl-core-MedicationAgreement.xsl"/>
   <xsl:import href="nl-core-MedicationDispense.xsl"/>
   <xsl:import href="nl-core-MedicationUse2.xsl"/>
   <xsl:import href="nl-core-NameInformation-d794e302.xsl"/>
   <xsl:import href="nl-core-Note.xsl"/>
   <xsl:import href="nl-core-Patient-d794e304.xsl"/>
   <xsl:import href="nl-core-PharmaceuticalProduct-d794e305.xsl"/>
   <xsl:import href="nl-core-Problem-d794e306.xsl"/>
   <xsl:import href="nl-core-VariableDosingRegimen.xsl"/>
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="fhirVersion">R4</xsl:param>
   <xd:doc scope="stylesheet">
      <xd:desc>This document import common and zib- and nl-core specific functions and templates to convert FHIR zib instances to ada.</xd:desc>
   </xd:doc>
</xsl:stylesheet>