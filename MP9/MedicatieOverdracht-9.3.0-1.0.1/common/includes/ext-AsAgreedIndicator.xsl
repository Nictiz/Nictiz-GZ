<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/mp/9.2.0/payload/1.0/ext-AsAgreedIndicator.xsl == -->
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
   <xd:doc>
      <xd:desc>Template for shared extension http://nictiz.nl/fhir/StructureDefinition/ext-AsAgreedIndicator</xd:desc>
      <xd:param name="in">Optional. Ada element containing the copy indicator. Defaults to context.</xd:param>
   </xd:doc>
   <xsl:template name="ext-AsAgreedIndicator"
                 match="*"
                 as="element()?"
                 mode="ext-AsAgreedIndicator">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <!-- TODO: use correct extension, this is not an existing extension at the moment -->
      <extension url="{$urlExtAsAgreedIndicator}">
         <valueBoolean>
            <xsl:call-template name="boolean-to-boolean"/>
         </valueBoolean>
      </extension>
   </xsl:template>
</xsl:stylesheet>