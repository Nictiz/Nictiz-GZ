<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/hl7_2_ada/zibs2020/payload/uni-Zorgaanbieder.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc>
      <xd:desc>Create ada healthcare_provider using hl7:Organization</xd:desc>
      <xd:param name="adaId">Optional parameter to specify the ada id for this ada element. Defaults to a generate-id of context element</xd:param>
   </xd:doc>
   <xsl:template name="uni-Zorgaanbieder"
                 match="hl7:Organization | hl7:representedOrganization"
                 mode="HandleOrganization">
      <xsl:param name="adaId"
                 as="xs:string?"
                 select="generate-id(.)"/>
      <zorgaanbieder>
         <xsl:attribute name="id"
                        select="$adaId"/>
         <!-- id is required -->
         <xsl:call-template name="handleII">
            <xsl:with-param name="in"
                            select="hl7:id"/>
            <xsl:with-param name="elemName">zorgaanbieder_identificatienummer</xsl:with-param>
            <xsl:with-param name="nullIfMissing">NI</xsl:with-param>
         </xsl:call-template>
         <xsl:call-template name="handleST">
            <xsl:with-param name="in"
                            select="(hl7:name | hl7:desc)[1]"/>
            <xsl:with-param name="elemName">organisatie_naam</xsl:with-param>
         </xsl:call-template>
         <xsl:call-template name="handleTELtoContactInformation">
            <xsl:with-param name="in"
                            select="hl7:telecom"/>
            <xsl:with-param name="language"
                            select="$language"/>
         </xsl:call-template>
         <xsl:call-template name="handleADtoAddressInformation">
            <xsl:with-param name="in"
                            select="hl7:addr"/>
            <xsl:with-param name="language"
                            select="$language"/>
         </xsl:call-template>
         <xsl:call-template name="handleCV">
            <xsl:with-param name="in"
                            select="hl7:code"/>
            <xsl:with-param name="elemName">organisatie_type</xsl:with-param>
         </xsl:call-template>
      </zorgaanbieder>
   </xsl:template>
</xsl:stylesheet>