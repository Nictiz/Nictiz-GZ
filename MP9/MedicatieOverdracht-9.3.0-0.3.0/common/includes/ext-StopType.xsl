<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/ext-StopType.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.3.0; 2024-04-09T18:20:47.77+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xd:doc>
      <xd:desc>Template to resolve f:modifierExtension ext-Medication-stop-type.</xd:desc>
   </xd:doc>
   <xsl:template match="f:modifierExtension[@url = $urlExtStoptype]"
                 mode="ext-StopType">
      <xsl:apply-templates select="f:valueCodeableConcept"
                           mode="#current"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:valueCodeableConcept to stoptype.</xd:desc>
   </xd:doc>
   <xsl:template match="f:valueCodeableConcept"
                 mode="ext-StopType">
      <xsl:call-template name="CodeableConcept-to-code">
         <xsl:with-param name="in"
                         select="."/>
         <xsl:with-param name="adaElementName">
            <xsl:choose>
               <xsl:when test="../(parent::f:MedicationStatement | parent::f:MedicationUse)">medicatie_gebruik_stop_type</xsl:when>
               <xsl:when test="../parent::f:MedicationRequest[f:category/f:coding/f:code/@value = $wdsCode]">wisselend_doseerschema_stop_type</xsl:when>
               <xsl:when test="../parent::f:MedicationRequest[f:category/f:coding/f:code/@value = $maCode]">medicatieafspraak_stop_type</xsl:when>
               <xsl:when test="../parent::f:MedicationDispense[f:category/f:coding/f:code/@value = $taCode]">toedieningsafspraak_stop_type</xsl:when>
            </xsl:choose>
         </xsl:with-param>
      </xsl:call-template>
   </xsl:template>
</xsl:stylesheet>