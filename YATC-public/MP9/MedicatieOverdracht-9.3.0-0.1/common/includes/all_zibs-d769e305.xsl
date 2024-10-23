<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.8.0-beta.1/all_zibs.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
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
   <xsl:import href="2_fhir_fhir_include-d769e306.xsl"/>
   <!-- If a file imported here exists in a different folder (meaning a different 'package'), this means the profile and therefore its ada2fhir mapping is the same in the current and the imported package version (and all versions in between). 
        If a bug is found and fixed, this fix should apply to the mapping in all versions of the package that use this mapping.
        If a profile is edited in a non-backwards compatible way, a new version of the ada2fhir mapping should be made for that profile. -->
   <xsl:import href="nl-core-AbilityToDressOneself.xsl"/>
   <xsl:import href="nl-core-AbilityToDrink.xsl"/>
   <xsl:import href="nl-core-AbilityToEat.xsl"/>
   <xsl:import href="nl-core-AbilityToGroom.xsl"/>
   <xsl:import href="nl-core-AbilityToUseToilet.xsl"/>
   <xsl:import href="nl-core-AbilityToWashOneself.xsl"/>
   <xsl:import href="nl-core-AddressInformation-d769e316.xsl"/>
   <xsl:import href="nl-core-AdvanceDirective.xsl"/>
   <xsl:import href="nl-core-AlcoholUse.xsl"/>
   <xsl:import href="nl-core-Alert.xsl"/>
   <xsl:import href="nl-core-AllergyIntolerance.xsl"/>
   <xsl:import href="nl-core-AnatomicalLocation.xsl"/>
   <xsl:import href="nl-core-ApgarScore.xsl"/>
   <xsl:import href="nl-core-BloodPressure.xsl"/>
   <xsl:import href="nl-core-BodyHeight-d769e325.xsl"/>
   <xsl:import href="nl-core-BodyWeight-d769e326.xsl"/>
   <xsl:import href="nl-core-BodyTemperature.xsl"/>
   <xsl:import href="nl-core-CareTeam.xsl"/>
   <xsl:import href="nl-core-ComfortScale.xsl"/>
   <xsl:import href="nl-core-ContactInformation-d769e330.xsl"/>
   <xsl:import href="nl-core-ContactPerson-d769e332.xsl"/>
   <xsl:import href="nl-core-DOSScore.xsl"/>
   <xsl:import href="nl-core-DrugUse.xsl"/>
   <xsl:import href="nl-core-Education.xsl"/>
   <xsl:import href="nl-core-Encounter.xsl"/>
   <xsl:import href="nl-core-EpisodeOfcare.xsl"/>
   <xsl:import href="nl-core-FLACCpainScale.xsl"/>
   <xsl:import href="nl-core-FluidBalance.xsl"/>
   <xsl:import href="nl-core-FreedomRestrictingIntervention.xsl"/>
   <xsl:import href="nl-core-FunctionalOrMentalStatus.xsl"/>
   <xsl:import href="nl-core-HeadCircumference.xsl"/>
   <xsl:import href="nl-core-HealthProfessional.xsl"/>
   <xsl:import href="nl-core-HealthcareProvider.xsl"/>
   <xsl:import href="nl-core-HearingFunction.xsl"/>
   <xsl:import href="nl-core-HeartRate.xsl"/>
   <xsl:import href="nl-core-HelpFromOthers.xsl"/>
   <xsl:import href="nl-core-LaboratoryTestResult-d769e349.xsl"/>
   <xsl:import href="nl-core-LegalSituation.xsl"/>
   <xsl:import href="nl-core-LivingSituation.xsl"/>
   <xsl:import href="nl-core-MedicalDevice.xsl"/>
   <xsl:import href="nl-core-MedicationContraIndication.xsl"/>
   <xsl:import href="nl-core-Mobility.xsl"/>
   <xsl:import href="nl-core-MUSTScore.xsl"/>
   <xsl:import href="nl-core-NameInformation-d769e357.xsl"/>
   <xsl:import href="nl-core-NutritionAdvice.xsl"/>
   <xsl:import href="nl-core-O2Saturation.xsl"/>
   <xsl:import href="nl-core-ParticipationInSociety.xsl"/>
   <xsl:import href="nl-core-Patient-d769e361.xsl"/>
   <xsl:import href="nl-core-Payer.xsl"/>
   <xsl:import href="nl-core-PharmaceuticalProduct-d769e363.xsl"/>
   <xsl:import href="nl-core-Problem-d769e364.xsl"/>
   <xsl:import href="nl-core-Procedure.xsl"/>
   <xsl:import href="nl-core-Refraction.xsl"/>
   <xsl:import href="nl-core-SOAPReport.xsl"/>
   <xsl:import href="nl-core-Stoma.xsl"/>
   <xsl:import href="nl-core-TextResult.xsl"/>
   <xsl:import href="nl-core-TobaccoUse.xsl"/>
   <xsl:import href="nl-core-TreatmentDirective2.xsl"/>
   <xsl:import href="nl-core-Vaccination.xsl"/>
   <xsl:import href="nl-core-VisualAcuity.xsl"/>
   <xsl:import href="nl-core-VisualFunction.xsl"/>
   <xsl:import href="ext-CodeSpecification.xsl"/>
   <xsl:import href="ext-Comment.xsl"/>
   <xsl:import href="ext-CopyIndicator-d769e378.xsl"/>
   <xsl:import href="ext-TimeInterval.xsl"/>
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>This document import common and zib- and nl-core specific functions and templates to convert zib2020 ada instances to FHIR.</xd:desc>
   </xd:doc>
</xsl:stylesheet>