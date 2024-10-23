<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.8.0-beta.1/nl-core-AbilityToUseToilet.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.0; 2024-04-17T17:00:31.15+02:00 == -->
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
      <xd:desc>Converts ada vermogen_tot_toiletgang to FHIR Observation conforming to profile nl-core-AbilityToUseToilet</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-AbilityToUseToilet instance as an Observation FHIR instance from ada vermogen_tot_toiletgang element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="subject">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="vermogen_tot_toiletgang"
                 name="nl-core-AbilityToUseToilet"
                 mode="nl-core-AbilityToUseToilet"
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
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-AbilityToUseToilet"/>
            </meta>
            <status value="final"/>
            <code>
               <coding>
                  <system value="http://snomed.info/sct"/>
                  <code value="284779002"/>
                  <display value="vermogen om activiteit voor persoonlijke hygiëne uit te voeren"/>
               </coding>
            </code>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$subject"/>
               <xsl:with-param name="wrapIn"
                               select="'subject'"/>
            </xsl:call-template>
            <xsl:for-each select="toiletgebruik">
               <component>
                  <code>
                     <coding>
                        <system value="http://snomed.info/sct"/>
                        <code value="284899001"/>
                        <display value="vermogen om activiteit voor toiletgang uit te voeren"/>
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
            <xsl:for-each select="zorg_bij_menstruatie">
               <component>
                  <code>
                     <coding>
                        <system value="http://snomed.info/sct"/>
                        <code value="284955009"/>
                        <display value="vermogen om activiteit voor menstruatiehygiëne uit te voeren"/>
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
   <xd:doc>
      <xd:desc>Template to generate a display that can be shown when referencing this instance.</xd:desc>
   </xd:doc>
   <xsl:template match="vermogen_tot_toiletgang"
                 mode="_generateDisplay">
      <xsl:variable name="parts"
                    as="item()*">
         <xsl:text>Vermogen tot toiletgang observatie</xsl:text>
         <xsl:if test="toiletgebruik[@value]">
            <xsl:value-of select="concat('ToiletGebruik: ', toiletgebruik/@value)"/>
         </xsl:if>
         <xsl:if test="zorg_bij_menstruatie[@value]">
            <xsl:value-of select="concat('ZorgBijMenstruatie: ', zorg_bij_menstruatie/@value)"/>
         </xsl:if>
      </xsl:variable>
      <xsl:value-of select="string-join($parts[. != ''], ', ')"/>
   </xsl:template>
</xsl:stylesheet>