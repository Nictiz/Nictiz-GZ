<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.8.0-beta.1/nl-core-FLACCpainScale.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
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
      <xd:desc>Converts ada flaccpijn_score to FHIR Observation conforming to profile nl-core-FLACCpainScale</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-FLACCpainScale instance as an Observation FHIR instance from ada flaccpijn_score element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="patient">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="flaccpijn_score"
                 name="nl-core-FLACCpainScale"
                 mode="nl-core-FLACCpainScale"
                 as="element(f:Observation)?">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="subject"
                 select="patient/*"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <Observation>
            <xsl:call-template name="insertLogicalId">
               <xsl:with-param name="profile"
                               select="'nl-core-FLACCpainScale'"/>
            </xsl:call-template>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-FLACCpainScale"/>
            </meta>
            <status value="final"/>
            <code>
               <coding>
                  <system value="http://snomed.info/sct"/>
                  <code value="108291000146105"/>
                  <display value="FLACC-pijnmeetinstrument"/>
               </coding>
            </code>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$subject"/>
               <xsl:with-param name="wrapIn"
                               select="'subject'"/>
            </xsl:call-template>
            <xsl:for-each select="score_datum_tijd">
               <effectiveDateTime>
                  <xsl:call-template name="date-to-datetime">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </effectiveDateTime>
            </xsl:for-each>
            <xsl:for-each select="totaal_score">
               <valueInteger>
                  <xsl:attribute name="value">
                     <xsl:value-of select="@value"/>
                  </xsl:attribute>
               </valueInteger>
            </xsl:for-each>
            <xsl:for-each select="toelichting">
               <note>
                  <text>
                     <xsl:call-template name="string-to-string">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </text>
               </note>
            </xsl:for-each>
            <xsl:for-each select="gezicht">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="12013003"/>
                        <display value="FLACCpijnScore Gezicht"/>
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
            <xsl:for-each select="benen">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="12013004"/>
                        <display value="FLACCpijnScore Benen"/>
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
            <xsl:for-each select="activiteit">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="12013005"/>
                        <display value="FLACCpijnScore Activiteit"/>
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
            <xsl:for-each select="huilen">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="12013006"/>
                        <display value="FLACCpijnScore Huilen"/>
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
            <xsl:for-each select="troostbaar">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="12013009"/>
                        <display value="FLACCpijnScore Troostbaar"/>
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