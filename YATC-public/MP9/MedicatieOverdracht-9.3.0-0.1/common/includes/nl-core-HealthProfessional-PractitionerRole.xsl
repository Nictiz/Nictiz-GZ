<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/nl-core-HealthProfessional-PractitionerRole.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xd:doc>
      <xd:desc>Template to resolve f:PractitionerRole and apply f:Practitioner</xd:desc>
   </xd:doc>
   <xsl:template match="f:PractitionerRole"
                 mode="resolve-HealthProfessional-PractitionerRole">
      <xsl:variable name="specialtyReference"
                    select="ancestor::f:entry/f:fullUrl/@value"/>
      <xsl:variable name="organizationReference"
                    select="nf:process-reference(f:organization/f:reference/@value, $specialtyReference)"
                    as="xs:string"/>
      <xsl:variable name="practitionerReference"
                    select="nf:process-reference(f:practitioner/f:reference/@value, $specialtyReference)"
                    as="xs:string"/>
      <xsl:apply-templates select="ancestor::f:Bundle/f:entry[f:fullUrl/@value=$practitionerReference]/f:resource/f:Practitioner"
                           mode="nl-core-HealthProfessional-Practitioner">
         <xsl:with-param name="organizationReference"
                         select="$organizationReference"/>
         <xsl:with-param name="specialtyReference"
                         select="$specialtyReference"/>
      </xsl:apply-templates>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to apply f:specialty within f:PractitionerRole</xd:desc>
   </xd:doc>
   <xsl:template match="f:PractitionerRole"
                 mode="nl-core-HealthProfessional-PractitionerRole">
      <xsl:apply-templates select="f:specialty"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:specialty to ADA specialisme</xd:desc>
   </xd:doc>
   <xsl:template match="f:specialty">
      <xsl:call-template name="CodeableConcept-to-code">
         <xsl:with-param name="adaElementName">specialisme</xsl:with-param>
         <xsl:with-param name="in"
                         select="."/>
      </xsl:call-template>
   </xsl:template>
</xsl:stylesheet>