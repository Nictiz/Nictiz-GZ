<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <!--Uncomment imports for standalone use and testing.-->
   <!--<xsl:import href="../../fhir/fhir_2_ada_fhir_include.xsl"/>
    <xsl:import href="nl-core-humanname-2.0.xsl"/>
    <xsl:import href="nl-core-practitionerrole-2.0.xsl"/>
    <xsl:import href="nl-core-organization-2.0.xsl"/>-->
   <xd:doc>
      <xd:desc>Template to convert f:Practitioner to ADA zorgverlener</xd:desc>
      <xd:param name="organizationReference">Optional reference to the Organization the Practitioner belongs to e.g. the ADA zorgaanbieder</xd:param>
      <xd:param name="specialtyReference">Optional reference to the PractitionerRole the Practitioner belongs to e.g. the ADA specialisme</xd:param>
   </xd:doc>
   <!-- XXXwim f:Practitioner met hoofdletter?-->
   <xsl:template match="f:Practitioner"
                 mode="nl-core-HealthProfessional-Practitioner">
      <xsl:param name="organizationReference"/>
      <xsl:param name="specialtyReference"/>
      <zorgverlener>
         <xsl:if test="$specialtyReference or ../../f:fullUrl[@value]">
            <xsl:attribute name="id">
               <xsl:choose>
                  <xsl:when test="$specialtyReference">
                     <xsl:value-of select="nf:convert2NCName($specialtyReference)"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:value-of select="nf:convert2NCName(../../f:fullUrl/@value)"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:attribute>
         </xsl:if>
         <!-- zorgverlener_identificatienummer -->
         <xsl:apply-templates select="f:identifier"
                              mode="#current"/>
         <!-- naamgegevens -->
         <xsl:apply-templates select="f:name"
                              mode="#current"/>
         <!-- specialisme -->
         <xsl:if test="not($specialtyReference = '')">
            <xsl:apply-templates select="ancestor::f:Bundle/f:entry[f:fullUrl/@value = $specialtyReference]/f:resource/f:PractitionerRole"
                                 mode="nl-core-HealthProfessional-PractitionerRole"/>
         </xsl:if>
         <!-- geslacht TODO -->
         <!-- adresgegevens -->
         <xsl:apply-templates select="f:address"
                              mode="nl-core-AddressInformation"/>
         <!-- contactgegevens -->
         <xsl:if test="f:telecom">
            <contactgegevens>
               <xsl:apply-templates select="f:telecom"
                                    mode="nl-core-ContactInformation"/>
            </contactgegevens>
         </xsl:if>
         <!-- zorgaanbieder -->
         <xsl:if test="not($organizationReference = '')">
            <zorgaanbieder>
               <zorgaanbieder datatype="reference"
                              value="{nf:convert2NCName($organizationReference)}"/>
            </zorgaanbieder>
         </xsl:if>
      </zorgverlener>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:identifier to zorgverlener_identificatienummer</xd:desc>
      <xd:param name="practitionerIdUnderscore">Optional boolean to create ADA element zorgverlener_identificatie_nummer</xd:param>
   </xd:doc>
   <xsl:template match="f:identifier"
                 mode="nl-core-HealthProfessional-Practitioner">
      <xsl:param name="practitionerIdUnderscore"
                 select="false()"
                 tunnel="yes"/>
      <xsl:variable name="adaElementName">
         <xsl:choose>
            <xsl:when test="$practitionerIdUnderscore = true()">zorgverlener_identificatie_nummer</xsl:when>
            <xsl:otherwise>zorgverlener_identificatienummer</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:call-template name="Identifier-to-identificatie">
         <xsl:with-param name="adaElementName"
                         select="$adaElementName"/>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:name to naamgegevens</xd:desc>
   </xd:doc>
   <xsl:template match="f:name"
                 mode="nl-core-HealthProfessional-Practitioner">
      <xsl:apply-templates select="."
                           mode="nl-core-NameInformation"/>
   </xsl:template>
</xsl:stylesheet>