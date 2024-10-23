<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/nl-core-FunctionalOrMentalStatus.xsl == -->
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
                xmlns:nm="http://www.nictiz.nl/mapping">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>Converts ADA functionele_of_mentale_status to FHIR Observation conforming to profile nl-core-FunctionalOrMentalStatus</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>
         <xd:p>Create an nl-core-FunctionalOrMentalStatus instance as an Observation FHIR instance from ADA functionele_of_mentale_status.</xd:p>
         <xd:p>The zib doesn't provide enough information to determine if the Observation.category code should be SNOMED code 118228005 or 384821006 (BITS ticket zib-1549). Therefore SNOMED code 118228005 is hard coded which may not be the right category for the information that is transformed.</xd:p>
      </xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
   </xd:doc>
   <xsl:template match="functionele_of_mentale_status"
                 name="nl-core-FunctionalOrMentalStatus"
                 mode="nl-core-FunctionalOrMentalStatus"
                 as="element(f:Observation)">
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
                               select="'nl-core-FunctionalOrMentalStatus'"/>
            </xsl:call-template>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-FunctionalOrMentalStatus"/>
            </meta>
            <status value="final"/>
            <xsl:call-template name="util:logMessage">
               <xsl:with-param name="msg">The zib doesn't provide enough information to determine if the Observation.category code should be SNOMED code 118228005 or 384821006 (BITS ticket ZIB-1549). Therefore SNOMED code 118228005 is hard coded which may not be the right category for the information that is transformed.</xsl:with-param>
               <xsl:with-param name="level">WARN</xsl:with-param>
               <xsl:with-param name="terminate">false</xsl:with-param>
            </xsl:call-template>
            <category>
               <coding>
                  <system value="http://snomed.info/sct"/>
                  <code value="118228005"/>
                  <display value="bevinding betreffende functioneren"/>
               </coding>
            </category>
            <xsl:for-each select="status_naam">
               <code>
                  <xsl:call-template name="code-to-CodeableConcept"/>
               </code>
            </xsl:for-each>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$subject"/>
               <xsl:with-param name="wrapIn"
                               select="'subject'"/>
            </xsl:call-template>
            <xsl:for-each select="status_datum">
               <effectiveDateTime>
                  <xsl:call-template name="date-to-datetime">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </effectiveDateTime>
            </xsl:for-each>
            <xsl:for-each select="status_waarde">
               <valueCodeableConcept>
                  <xsl:call-template name="code-to-CodeableConcept"/>
               </valueCodeableConcept>
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
         </Observation>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to generate a display that can be shown when referencing this instance.</xd:desc>
   </xd:doc>
   <xsl:template match="functionele_of_mentale_status"
                 mode="_generateDisplay">
      <xsl:variable name="parts"
                    as="item()*">
         <xsl:text>Functional or mental status observation</xsl:text>
         <xsl:if test="status_datum/@value">
            <xsl:value-of select="concat('measurement date ', status_datum/@value)"/>
         </xsl:if>
      </xsl:variable>
      <xsl:value-of select="string-join($parts[. != ''], ', ')"/>
   </xsl:template>
</xsl:stylesheet>