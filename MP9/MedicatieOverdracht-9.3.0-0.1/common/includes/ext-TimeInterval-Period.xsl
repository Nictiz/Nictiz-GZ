<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/ext-TimeInterval-Period.xsl == -->
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
      <xd:desc>Template to resolve f:extension zib-Medication-PeriodOfUse</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = ($urlExtTimeInterval-Period, $urlExtTimeIntervalPeriod)]"
                 mode="urlExtTimeInterval-Period">
      <xsl:apply-templates select="f:valuePeriod"
                           mode="urlExtTimeInterval-Period"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to resolve f:valuePeriod</xd:desc>
   </xd:doc>
   <xsl:template match="f:valuePeriod"
                 mode="urlExtTimeInterval-Period">
      <xsl:apply-templates select="f:start"
                           mode="#current"/>
      <xsl:apply-templates select="f:end"
                           mode="#current"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:start to gebruiksperiode_start</xd:desc>
   </xd:doc>
   <xsl:template match="f:start"
                 mode="urlExtTimeInterval-Period">
      <xsl:call-template name="datetime-to-datetime">
         <xsl:with-param name="adaElementName">start_datum_tijd</xsl:with-param>
         <xsl:with-param name="adaDatatype">datetime</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:end to gebruiksperiode_eind</xd:desc>
   </xd:doc>
   <xsl:template match="f:end"
                 mode="urlExtTimeInterval-Period">
      <xsl:call-template name="datetime-to-datetime">
         <xsl:with-param name="adaElementName">eind_datum_tijd</xsl:with-param>
         <xsl:with-param name="adaDatatype">datetime</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
</xsl:stylesheet>