<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/nl-core-HealthProfessional-PractitionerRole.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/nl-core-HealthProfessional-PractitionerRole.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
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
      <xsl:variable name="practionerReference"
                    select="f:practitioner/f:reference/@value"/>
      <xsl:variable name="organizationReference"
                    select="f:organization/f:reference/@value"/>
      <xsl:variable name="specialtyReference"
                    select="ancestor::f:entry/f:fullUrl/@value"/>
      <xsl:apply-templates select="ancestor::f:Bundle/f:entry[f:fullUrl/@value=$practionerReference]/f:resource/f:Practitioner"
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