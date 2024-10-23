<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_hl7/zib2020bbr/payload/hl7-toelichting-20210701.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="language"
              as="xs:string?">nl-NL</xsl:param>
   <xd:doc>
      <xd:desc>Mapping of comment concept in zib/ADA to HL7 CDA template 2.16.840.1.113883.2.4.3.11.60.3.10.0.32.</xd:desc>
      <xd:param name="in">ADA Node to consider in the creation of the hl7 element</xd:param>
   </xd:doc>
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.0.32_20210701000000"
                 match="toelichting | comment"
                 mode="HandleComment">
      <xsl:param name="in"
                 select="."/>
      <xsl:for-each select="$in">
         <act classCode="ACT"
              moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.3.10.0.32"/>
            <code code="48767-8"
                  codeSystem="{$oidLOINC}"
                  codeSystemName="LOINC"
                  displayName="Annotation comment"/>
            <text mediaType="text/plain">
               <xsl:value-of select="@value"/>
            </text>
         </act>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>