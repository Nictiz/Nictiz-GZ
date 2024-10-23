<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/nl-core-HealthcareProvider-Organization.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.2.0; 2024-03-14T08:34:46.14+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xd:doc>
      <xd:desc>Template to convert f:Organization to ADA zorgaanbieder</xd:desc>
   </xd:doc>
   <xsl:template match="f:Organization"
                 mode="nl-core-HealthcareProvider-Organization">
      <xsl:param name="doAdaId"
                 select="true()"
                 as="xs:boolean"/>
      <xsl:variable name="entryFullURrlAtValue"
                    select="../../f:fullUrl/@value"/>
      <zorgaanbieder>
         <xsl:if test="$doAdaId">
            <xsl:attribute name="id"
                           select="nf:convert2NCName($entryFullURrlAtValue)"/>
         </xsl:if>
         <!-- zorgaanbieder_identificatienummer -->
         <xsl:apply-templates select="f:identifier"
                              mode="#current"/>
         <!-- organisatie_naam -->
         <xsl:apply-templates select="f:name"
                              mode="#current"/>
         <!-- afdeling_specialisme -->
         <xsl:apply-templates select="f:type[f:coding/f:system[@value = concat('urn:oid:', $oidAGBSpecialismen) or @value=$oidMap[@oid=$oidAGBSpecialismen]/@uri]]"
                              mode="#current"/>
         <!-- contactgegevens -->
         <xsl:if test="f:telecom">
            <contactgegevens>
               <xsl:apply-templates select="f:telecom"
                                    mode="nl-core-ContactInformation"/>
            </contactgegevens>
         </xsl:if>
         <!-- adresgegevens -->
         <xsl:apply-templates select="f:address"
                              mode="nl-core-AddressInformation"/>
         <!-- organisatie_type -->
         <xsl:apply-templates select="f:type[f:coding/f:system[@value = concat('urn:oid:', $oidRoleCodeNLOrganizations) or @value=$oidMap[@oid=$oidRoleCodeNLOrganizations]/@uri]]"
                              mode="#current"/>
         <!-- organisatie_locatie TODO -->
      </zorgaanbieder>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:identifier to zorgverlener_identificatienummer</xd:desc>
      <xd:param name="organizationIdUnderscore">Optional boolean to create ADA element zorgaanbieder_identificatie_nummer</xd:param>
   </xd:doc>
   <xsl:template match="f:identifier"
                 mode="nl-core-HealthcareProvider-Organization">
      <xsl:param name="organizationIdUnderscore"
                 select="false()"
                 tunnel="yes"/>
      <xsl:variable name="adaElementName">
         <xsl:choose>
            <xsl:when test="$organizationIdUnderscore = true()">zorgaanbieder_identificatie_nummer</xsl:when>
            <xsl:otherwise>zorgaanbieder_identificatienummer</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:call-template name="Identifier-to-identificatie">
         <xsl:with-param name="adaElementName"
                         select="$adaElementName"/>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:name to organisatie_naam</xd:desc>
   </xd:doc>
   <xsl:template match="f:name"
                 mode="nl-core-HealthcareProvider-Organization">
      <organisatie_naam value="{@value}"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:type to organisatie_type</xd:desc>
   </xd:doc>
   <xsl:template match="f:type"
                 mode="nl-core-HealthcareProvider-Organization">
      <xsl:choose>
         <xsl:when test="f:coding/f:system[@value = concat('urn:oid:', $oidAGBSpecialismen) or @value=$oidMap[@oid=$oidAGBSpecialismen]/@uri]">
            <afdeling_specialisme>
               <xsl:call-template name="Coding-to-code">
                  <xsl:with-param name="in"
                                  select="f:coding"/>
               </xsl:call-template>
            </afdeling_specialisme>
         </xsl:when>
         <xsl:when test="f:coding/f:system[@value = concat('urn:oid:', $oidRoleCodeNLOrganizations) or @value=$oidMap[@oid=$oidRoleCodeNLOrganizations]/@uri]">
            <organisatie_type>
               <xsl:call-template name="Coding-to-code">
                  <xsl:with-param name="in"
                                  select="f:coding"/>
               </xsl:call-template>
            </organisatie_type>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>