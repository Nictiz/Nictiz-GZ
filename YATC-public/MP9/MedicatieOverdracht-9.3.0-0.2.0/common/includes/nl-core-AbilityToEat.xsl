<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.8.0-beta.1/nl-core-AbilityToEat.xsl == -->
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
                xmlns:uuid="http://www.uuid.org">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>Converts ada vermogen_tot_eten to FHIR Observation conforming to profile nl-core-AbilityToEat</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-AbilityToEat instance as an Observation FHIR instance from ada vermogen_tot_eten element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="subject">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="vermogen_tot_eten"
                 name="nl-core-AbilityToEat"
                 mode="nl-core-AbilityToEat"
                 as="element(f:Observation)?">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="subject"
                 select="patient/*"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <Observation>
            <xsl:call-template name="insertLogicalId"/>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-AbilityToEat"/>
            </meta>
            <status value="final"/>
            <code>
               <coding>
                  <system value="http://snomed.info/sct"/>
                  <code value="288883002"/>
                  <display value="vermogen tot eten"/>
               </coding>
            </code>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$subject"/>
               <xsl:with-param name="wrapIn"
                               select="'subject'"/>
            </xsl:call-template>
            <xsl:for-each select="eten">
               <valueCodeableConcept>
                  <xsl:call-template name="code-to-CodeableConcept">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </valueCodeableConcept>
            </xsl:for-each>
            <xsl:for-each select="eet_beperkingen">
               <component>
                  <code>
                     <coding>
                        <system value="http://snomed.info/sct"/>
                        <code value="288843005"/>
                        <display value="vaardigheid betreffende eten"/>
                     </coding>
                  </code>
                  <valueCodeableConcept>
                     <xsl:call-template name="code-to-CodeableConcept">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </valueCodeableConcept>
               </component>
            </xsl:for-each>
         </Observation>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>