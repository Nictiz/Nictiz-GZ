<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/nl-core-LivingSituation.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.1; 2024-04-18T12:43:34.01+02:00 == -->
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
      <xd:desc>Converts ADA woonsituatie to FHIR Observation conforming to profile nl-core-LivingSituation</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-LivingSituation instance as an Observation FHIR instance from ADA woonsituatie.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="subject">The subject as ADA element or reference.</xd:param>
   </xd:doc>
   <xsl:template match="woonsituatie"
                 name="nl-core-LivingSituation"
                 mode="nl-core-LivingSituation"
                 as="element(f:Observation)">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:param name="subject"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <Observation>
            <xsl:call-template name="insertLogicalId"/>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-LivingSituation"/>
            </meta>
            <status value="final"/>
            <code>
               <coding>
                  <system value="{$oidMap[@oid=$oidSNOMEDCT]/@uri}"/>
                  <code value="365508006"/>
                  <display value="Residence and accommodation circumstances - finding"/>
               </coding>
            </code>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$subject"/>
               <xsl:with-param name="wrapIn">subject</xsl:with-param>
            </xsl:call-template>
            <xsl:for-each select="woning_type">
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
            <xsl:for-each select="woning_aanpassing">
               <component>
                  <code>
                     <coding>
                        <system value="{$oidMap[@oid=$oidSNOMEDCT]/@uri}"/>
                        <code value="118871000146108"/>
                        <display value="Type of home adaptation"/>
                     </coding>
                  </code>
                  <valueCodeableConcept>
                     <xsl:call-template name="code-to-CodeableConcept"/>
                  </valueCodeableConcept>
               </component>
            </xsl:for-each>
            <xsl:for-each select="woon_omstandigheid">
               <component>
                  <code>
                     <coding>
                        <system value="{$oidMap[@oid=$oidSNOMEDCT]/@uri}"/>
                        <code value="224249004"/>
                        <display value="Characteristics of home environment"/>
                     </coding>
                  </code>
                  <valueCodeableConcept>
                     <xsl:call-template name="code-to-CodeableConcept"/>
                  </valueCodeableConcept>
               </component>
            </xsl:for-each>
         </Observation>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to generate a unique id to identify this instance.</xd:desc>
   </xd:doc>
   <xsl:template match="woonsituatie"
                 mode="_generateId">
      <xsl:value-of select="concat('nl-core-LivingSituation-', position())"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to generate a display that can be shown when referencing this instance.</xd:desc>
   </xd:doc>
   <xsl:template match="woonsituatie"
                 mode="_generateDisplay">
      <xsl:variable name="parts">
         <xsl:for-each select="(woning_type, woning_aanpassing, woon_omstandigheid)">
            <xsl:value-of select="@displayName"/>
         </xsl:for-each>
      </xsl:variable>
      <xsl:value-of select="concat('Woonsituatie: ', string-join($parts, ', '))"/>
   </xsl:template>
</xsl:stylesheet>