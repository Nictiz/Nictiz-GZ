<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/mp/9.3.0/payload/2.0.0-beta.2/all_profiles.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/mp/9.3.0/payload/2.0.0-beta.2/all_profiles.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
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
   <xsl:import href="all_zibs-d4e119.xsl"/>
   <xsl:import href="_ada2resourceType.xsl"/>
   <!-- Override the generic ada2resourceType variable with a version that used mp-PharmaceuticalProduct -->
   <xsl:import href="mp-functions.xsl"/>
   <xsl:import href="mp-AdministrationAgreement-d4e194.xsl"/>
   <xsl:import href="mp-DispenseRequest.xsl"/>
   <xsl:import href="mp-InstructionsForUse.xsl"/>
   <xsl:import href="mp-MedicationAdministration2.xsl"/>
   <xsl:import href="mp-MedicationAgreement-d4e198.xsl"/>
   <xsl:import href="mp-MedicationDispense.xsl"/>
   <xsl:import href="mp-MedicationUse2-d4e200.xsl"/>
   <xsl:import href="mp-VariableDosingRegimen.xsl"/>
   <xsl:import href="mp-PharmaceuticalProduct.xsl"/>
   <xsl:import href="ext-AsAgreedIndicator.xsl"/>
   <xsl:import href="ext-PharmaceuticalTreatmentIdentifier.xsl"/>
   <xsl:import href="ext-MedicationAgreementPeriodOfUseCondition-d4e206.xsl"/>
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>This document imports common and mp specific functions and templates to convert mp ada instances to FHIR.</xd:desc>
   </xd:doc>
</xsl:stylesheet>