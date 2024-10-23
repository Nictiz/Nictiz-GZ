<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/nl-core-ContactInformation.xsl == -->
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
                xmlns:uuid="http://www.uuid.org"
                xmlns:nm="http://www.nictiz.nl/mappings">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>Converts ada zorgaanbieder to FHIR resource conforming to profile nl-core-ContactInformation-TelephoneNumbers and nl-core-ContactInformation-E-mailAddresses</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Produces FHIR ContactPoint datatypes with telecom elements.</xd:desc>
      <xd:param name="in">Ada 'contactgegevens' element containing the nl-core data</xd:param>
   </xd:doc>
   <xsl:template match="contactgegevens"
                 mode="nl-core-ContactInformation"
                 name="nl-core-ContactInformation"
                 as="element(f:telecom)*">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:for-each select="$in">
         <xsl:for-each select="telefoonnummers[telefoonnummer/@value]">
            <xsl:variable name="telecomType"
                          select="telecom_type/@code"/>
            <xsl:variable name="telecomSystem"
                          as="xs:string?">
               <xsl:choose>
                  <xsl:when test="$telecomType = 'LL'">phone</xsl:when>
                  <xsl:when test="$telecomType = 'FAX'">fax</xsl:when>
                  <xsl:when test="$telecomType = 'MC'">phone</xsl:when>
                  <xsl:when test="$telecomType = 'PG'">pager</xsl:when>
                  <!-- Otherwise we don't know, assumption is phone -->
                  <xsl:otherwise>phone</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="numberType"
                          select="nummer_soort/@code"/>
            <xsl:variable name="numberUse"
                          as="xs:string?">
               <xsl:choose>
                  <xsl:when test="$numberType = 'HP'">home</xsl:when>
                  <xsl:when test="$numberType = 'TMP'">temp</xsl:when>
                  <xsl:when test="$numberType = 'WP'">work</xsl:when>
               </xsl:choose>
            </xsl:variable>
            <telecom>
               <xsl:for-each select="toelichting">
                  <xsl:call-template name="ext-Comment">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:for-each>
               <xsl:if test="telefoonnummer[@value]">
                  <system>
                     <xsl:if test="string-length($telecomSystem) gt 0">
                        <xsl:attribute name="value"
                                       select="$telecomSystem"/>
                     </xsl:if>
                     <xsl:if test="$telecomType">
                        <xsl:call-template name="ext-CodeSpecification">
                           <xsl:with-param name="in"
                                           select="telecom_type"/>
                        </xsl:call-template>
                     </xsl:if>
                  </system>
               </xsl:if>
               <xsl:for-each select="telefoonnummer">
                  <value value="{normalize-space(@value)}"/>
               </xsl:for-each>
               <xsl:if test="string-length($numberUse) gt 0">
                  <use value="{$numberUse}"/>
               </xsl:if>
            </telecom>
         </xsl:for-each>
         <xsl:for-each select="email_adressen[email_adres/@value]">
            <xsl:variable name="emailType"
                          select="email_soort/@code"/>
            <xsl:variable name="emailUse"
                          as="xs:string?">
               <xsl:choose>
                  <xsl:when test="$emailType = 'WP'">work</xsl:when>
                  <xsl:when test="$emailType = 'HP'">home</xsl:when>
               </xsl:choose>
            </xsl:variable>
            <telecom>
               <system value="email"/>
               <xsl:for-each select="email_adres">
                  <value value="{normalize-space(@value)}"/>
               </xsl:for-each>
               <xsl:if test="$emailUse">
                  <use value="{$emailUse}"/>
               </xsl:if>
            </telecom>
         </xsl:for-each>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>