<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.8.0-beta.1/nl-core-FluidBalance.xsl == -->
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
      <xd:desc>Converts ada vochtbalans to FHIR Observation conforming to profile nl-core-FluidBalance</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-FluidBalance instance as an Observation FHIR instance from ada vochtbalans element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="subject">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="vochtbalans"
                 name="nl-core-FluidBalance"
                 mode="nl-core-FluidBalance"
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
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-FluidBalance"/>
            </meta>
            <status value="final"/>
            <code>
               <coding>
                  <system value="http://snomed.info/sct"/>
                  <code value="710853006"/>
                  <display value="evaluatie van vochtbalans"/>
               </coding>
            </code>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$subject"/>
               <xsl:with-param name="wrapIn"
                               select="'subject'"/>
            </xsl:call-template>
            <xsl:if test="vochtbalans_starttijd or vochtbalans_stoptijd">
               <effectivePeriod>
                  <xsl:if test="vochtbalans_starttijd">
                     <start>
                        <xsl:attribute name="value">
                           <xsl:call-template name="format2FHIRDate">
                              <xsl:with-param name="dateTime"
                                              select="xs:string(vochtbalans_starttijd/@value)"/>
                           </xsl:call-template>
                        </xsl:attribute>
                     </start>
                  </xsl:if>
                  <xsl:if test="vochtbalans_stoptijd">
                     <end>
                        <xsl:attribute name="value">
                           <xsl:call-template name="format2FHIRDate">
                              <xsl:with-param name="dateTime"
                                              select="xs:string(vochtbalans_stoptijd/@value)"/>
                           </xsl:call-template>
                        </xsl:attribute>
                     </end>
                  </xsl:if>
               </effectivePeriod>
            </xsl:if>
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
            <xsl:for-each select="vocht_totaal_in">
               <component>
                  <code>
                     <coding>
                        <system value="http://snomed.info/sct"/>
                        <code value="251852001"/>
                        <display value="totale vochtinname"/>
                     </coding>
                  </code>
                  <valueQuantity>
                     <xsl:call-template name="hoeveelheid-to-Quantity">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </valueQuantity>
               </component>
            </xsl:for-each>
            <xsl:for-each select="vocht_totaal_uit">
               <component>
                  <code>
                     <coding>
                        <system value="http://snomed.info/sct"/>
                        <code value="251841007"/>
                        <display value="totale vochtuitscheiding"/>
                     </coding>
                  </code>
                  <valueQuantity>
                     <xsl:call-template name="hoeveelheid-to-Quantity">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </valueQuantity>
               </component>
            </xsl:for-each>
         </Observation>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>