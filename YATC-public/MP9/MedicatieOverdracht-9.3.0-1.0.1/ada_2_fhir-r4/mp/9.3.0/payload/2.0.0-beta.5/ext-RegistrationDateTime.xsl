<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/mp/9.3.0/payload/2.0.0-beta.5/ext-RegistrationDateTime.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.1; 2024-04-18T12:43:34.01+02:00 == -->
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
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <!--    <xsl:import href="../../fhir/2_fhir_fhir_include.xsl"/>-->
   <xd:doc>
      <xd:desc>Template for shared extension http://nictiz.nl/fhir/StructureDefinition/ext-RegistrationDateTime</xd:desc>
   </xd:doc>
   <xsl:template name="ext-RegistrationDateTime"
                 match="*"
                 as="element()?"
                 mode="ext-RegistrationDateTime">
      <extension url="{$urlExtRegistrationDateTime}">
         <valueDateTime>
            <xsl:attribute name="value">
               <xsl:call-template name="format2FHIRDate">
                  <xsl:with-param name="dateTime"
                                  select="./@value"/>
               </xsl:call-template>
            </xsl:attribute>
         </valueDateTime>
      </extension>
   </xsl:template>
</xsl:stylesheet>