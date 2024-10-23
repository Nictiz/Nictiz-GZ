<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/ext-TimeInterval.xsl == -->
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
      <xd:desc>
         <xd:p>Converts ADA TimeInterval to FHIR datetype Period or Duration, depending on the
                situation and conforming to different profiles. See the documentation on the
                templates.</xd:p>
      </xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>
         <xd:p>If needed, create the Period part from ADA TimeInterval input. If the input
                doesn't contain neither the StartDateTime or EndDateTime concept, output is
                suppressed. Normally, the output will take the form of the ext-TimeInterval.Period
                extension, unless 
<xd:ref name="wrapIn"
                    type="parameter"/> is given.</xd:p>
         <xd:p>Please note: the input precision of the start and/or end date is not strictly
                adhered to; the start- en end date will be either a full date or a full date with
                time.</xd:p>
      </xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="wrapIn">Wrap the output in this element. If absent, the output will take the
            form of the ext-TimeInterval.Period extension.</xd:param>
   </xd:doc>
   <xsl:template name="ext-TimeInterval.Period"
                 as="element()*">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:param name="wrapIn"
                 as="xs:string"
                 select="''"/>
      <xsl:for-each select="$in">
         <xsl:if test="start_datum_tijd[@value != ''] or eind_datum_tijd[@value != ''] or tijds_duur[@value != '' or @unit != ''] or criterium[@value != '']">
            <xsl:choose>
               <!-- If no wrapIn is given, write out the extension element and iteratively call this template. -->
               <xsl:when test="$wrapIn = ''">
                  <extension url="{$urlExtTimeIntervalPeriod}">
                     <xsl:call-template name="ext-TimeInterval.Period">
                        <xsl:with-param name="wrapIn">valuePeriod</xsl:with-param>
                     </xsl:call-template>
                  </extension>
               </xsl:when>
               <xsl:otherwise>
                  <!-- Make fhir format of the ada input -->
                  <xsl:variable name="start"
                                as="xs:string?">
                     <xsl:if test="start_datum_tijd[@value]">
                        <xsl:variable name="startTmp">
                           <xsl:call-template name="format2FHIRDate">
                              <xsl:with-param name="dateTime"
                                              select="start_datum_tijd/@value"/>
                           </xsl:call-template>
                        </xsl:variable>
                        <xsl:value-of select="string-join($startTmp, '')"/>
                     </xsl:if>
                  </xsl:variable>
                  <xsl:variable name="end"
                                as="xs:string?">
                     <xsl:if test="eind_datum_tijd[@value]">
                        <xsl:variable name="startTmp">
                           <xsl:call-template name="format2FHIRDate">
                              <xsl:with-param name="dateTime"
                                              select="eind_datum_tijd/@value"/>
                           </xsl:call-template>
                        </xsl:variable>
                        <xsl:value-of select="string-join($startTmp, '')"/>
                     </xsl:if>
                  </xsl:variable>
                  <!-- Write out the element, if we have any input, or if only a duration or criterium is known -->
                  <xsl:if test="$start or $end or tijds_duur[@value | @unit] or criterium[@value]">
                     <xsl:element name="{$wrapIn}">
                        <!-- output the extension for tijds_duur -->
                        <xsl:call-template name="ext-TimeInterval.Duration"/>
                        <!-- Converts ADA gebruiksperiode/criterium to FHIR extension for MP9 2.0 -->
                        <xsl:for-each select="criterium[@value]">
                           <extension url="{$urlExtMedicationAgreementPeriodOfUseCondition}">
                              <valueString>
                                 <xsl:call-template name="string-to-string"/>
                              </valueString>
                           </extension>
                        </xsl:for-each>
                        <xsl:if test="$start">
                           <start value="{$start}"/>
                        </xsl:if>
                        <xsl:if test="$end">
                           <end value="{$end}"/>
                        </xsl:if>
                     </xsl:element>
                  </xsl:if>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:if>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>If needed, create the Duration part from ADA TimeInterval input. If the input
            doesn't contain the Duration concept or if the TimeInterval can be expressed as a
            Period, output is suppressed. Normally, the output will take the form of the
            ext-TimeInterval.Duration extension, unless 
<xd:ref name="wrapIn"
                 type="parameter"/> is
            given.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="wrapIn">Wrap the output in this element. If absent, the output will take the
            form of the ext-TimeInterval-Duration extension.</xd:param>
   </xd:doc>
   <xsl:template name="ext-TimeInterval.Duration"
                 as="element()?">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:param name="wrapIn"
                 as="xs:string?"/>
      <xsl:for-each select="$in">
         <xsl:if test="tijds_duur[@value | @unit]">
            <xsl:choose>
               <!-- If no wrapIn is given, write out the extension element and iteratively call this template. -->
               <xsl:when test="$wrapIn != ''">
                  <xsl:element name="{$wrapIn}">
                     <xsl:call-template name="hoeveelheid-to-Duration">
                        <xsl:with-param name="in"
                                        select="tijds_duur"/>
                     </xsl:call-template>
                  </xsl:element>
               </xsl:when>
               <xsl:otherwise>
                  <extension url="http://nictiz.nl/fhir/StructureDefinition/ext-TimeInterval.Duration">
                     <xsl:call-template name="ext-TimeInterval.Duration">
                        <xsl:with-param name="wrapIn">valueDuration</xsl:with-param>
                     </xsl:call-template>
                  </extension>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:if>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>