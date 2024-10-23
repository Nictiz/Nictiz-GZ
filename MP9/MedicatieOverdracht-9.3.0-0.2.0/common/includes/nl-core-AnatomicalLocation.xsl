<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/nl-core-AnatomicalLocation.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.2.0; 2024-03-14T08:34:46.14+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:util="urn:hl7:utilities"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:nm="http://www.nictiz.nl/mappings">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>Converts ada anatomische_locatie to FHIR valueCodeableConcept element conforming to profile nl-core-AnatomicalLocation</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Produces FHIR valueCodeableConcept element conforming to profile nl-core-AnatomicalLocation</xd:desc>
      <xd:param name="in">Ada 'anatomische_locatie' element containing the zib data</xd:param>
      <xd:param name="doWrap">Optional boolean to wrap the resulting element in a 'valueCodeableConcept' element.</xd:param>
   </xd:doc>
   <xsl:template match="anatomische_locatie"
                 mode="nl-core-AnatomicalLocation"
                 name="nl-core-AnatomicalLocation"
                 as="element()*">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="doWrap"
                 select="false()"
                 as="xs:boolean"/>
      <xsl:param name="profile"/>
      <xsl:for-each select="$in">
         <xsl:choose>
            <xsl:when test="$doWrap">
               <valueCodeableConcept>
                  <xsl:call-template name="_doAnatomicalLocation">
                     <xsl:with-param name="profile"
                                     select="$profile"/>
                  </xsl:call-template>
               </valueCodeableConcept>
            </xsl:when>
            <xsl:otherwise>
               <xsl:call-template name="_doAnatomicalLocation">
                  <xsl:with-param name="profile"
                                  select="$profile"/>
               </xsl:call-template>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:for-each>
   </xsl:template>
   <xsl:template name="_doAnatomicalLocation">
      <xsl:param name="profile"/>
      <xsl:for-each select="lateraliteit">
         <extension url="http://nictiz.nl/fhir/StructureDefinition/ext-AnatomicalLocation.Laterality">
            <valueCodeableConcept>
               <xsl:call-template name="code-to-CodeableConcept">
                  <xsl:with-param name="in"
                                  select="."/>
               </xsl:call-template>
            </valueCodeableConcept>
         </extension>
      </xsl:for-each>
      <xsl:choose>
         <xsl:when test="$profile = 'nl-core-HearingFunction.HearingAid'">
            <xsl:for-each select="hulpmiddel_anatomische_locatie">
               <xsl:call-template name="code-to-CodeableConcept">
                  <xsl:with-param name="in"
                                  select="."/>
               </xsl:call-template>
            </xsl:for-each>
         </xsl:when>
         <xsl:otherwise>
            <xsl:for-each select="locatie">
               <xsl:call-template name="code-to-CodeableConcept">
                  <xsl:with-param name="in"
                                  select="."/>
               </xsl:call-template>
            </xsl:for-each>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>