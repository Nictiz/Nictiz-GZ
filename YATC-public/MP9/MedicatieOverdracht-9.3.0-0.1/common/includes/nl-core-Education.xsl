<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.7-beta1/nl-core-Education.xsl == -->
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
      <xd:desc>Converts ADA opleiding to FHIR resource conforming to profile nl-core-Education</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-Education instance as an Observation FHIR instance from ADA opleiding.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
   </xd:doc>
   <xsl:template match="opleiding"
                 name="nl-core-Education"
                 mode="nl-core-Education"
                 as="element(f:Observation)">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:param name="subject"
                 select="patient/*"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <Observation>
            <xsl:call-template name="insertLogicalId"/>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-Education"/>
            </meta>
            <status value="final"/>
            <code>
               <coding>
                  <system value="{$oidMap[@oid=$oidSNOMEDCT]/@uri}"/>
                  <code value="105421008"/>
                  <display value="opleidingsniveau"/>
               </coding>
            </code>
            <xsl:for-each select="$subject">
               <xsl:call-template name="makeReference">
                  <xsl:with-param name="in"
                                  select="$subject"/>
                  <xsl:with-param name="wrapIn"
                                  select="'subject'"/>
               </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="schooltype">
               <valueCodeableConcept>
                  <xsl:call-template name="code-to-CodeableConcept"/>
               </valueCodeableConcept>
            </xsl:for-each>
            <xsl:for-each select="toelichting">
               <note>
                  <text>
                     <xsl:attribute name="value"
                                    select="./@value"/>
                  </text>
               </note>
            </xsl:for-each>
         </Observation>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to generate a display that can be shown when referencing this instance.</xd:desc>
   </xd:doc>
   <xsl:template match="opleiding"
                 mode="_generateDisplay">
      <xsl:variable name="parts"
                    as="item()*">
         <xsl:text>Education observation</xsl:text>
         <xsl:if test="schooltype[@displayName]">
            <xsl:value-of select="schooltype/@displayName"/>
         </xsl:if>
      </xsl:variable>
      <xsl:value-of select="string-join($parts[. != ''], ', ')"/>
   </xsl:template>
</xsl:stylesheet>