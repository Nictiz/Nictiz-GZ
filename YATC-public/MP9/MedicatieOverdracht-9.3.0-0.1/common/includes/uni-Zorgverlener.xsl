<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/hl7_2_ada/zibs2020/payload/uni-Zorgverlener.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc>
      <xd:desc>Converts the contents of an assignedPerson / assignedEntity a to zib Health Professional (zorgverlener)</xd:desc>
      <xd:param name="adaId">Optional parameter to specify the ada id for this ada element. Defaults to a generate-id of context element</xd:param>
      <xd:param name="generateAttributeId">Whether to generate an id attribute for the ada patient. Depends on ada xsd whether this is applicable. Defaults to false.</xd:param>
   </xd:doc>
   <xsl:template name="HandleHealthProfessional"
                 match="hl7:assignedPerson | hl7:assignedAuthor | hl7:participantRole"
                 mode="assignedPerson2HealthProfessional">
      <xsl:param name="adaId"
                 as="xs:string?"
                 select="generate-id(.)"/>
      <xsl:param name="generateAttributeId"
                 as="xs:boolean?"
                 select="false()"/>
      <xsl:variable name="typeCode">
         <xsl:choose>
            <xsl:when test="../@typeCode">
               <xsl:value-of select="../@typeCode"/>
            </xsl:when>
            <xsl:when test="../local-name() = 'author'">AUT</xsl:when>
         </xsl:choose>
      </xsl:variable>
      <!-- language specific ada element names -->
      <xsl:variable name="elmHealthProfessionalIdentificationNumber">
         <xsl:choose>
            <xsl:when test="$language = 'en-US'">health_professional_identification_number</xsl:when>
            <xsl:otherwise>zorgverlener_identificatienummer</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="elmSpecialism">
         <xsl:choose>
            <xsl:when test="$language = 'en-US'">specialty</xsl:when>
            <xsl:otherwise>specialisme</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <zorgverlener>
         <xsl:if test="$generateAttributeId">
            <xsl:attribute name="id"
                           select="$adaId"/>
         </xsl:if>
         <!-- identification number -->
         <xsl:for-each select="hl7:id">
            <xsl:call-template name="handleII">
               <xsl:with-param name="in"
                               select="."/>
               <xsl:with-param name="elemName"
                               select="$elmHealthProfessionalIdentificationNumber"/>
            </xsl:call-template>
         </xsl:for-each>
         <!-- name information -->
         <xsl:call-template name="handleENtoNameInformation">
            <xsl:with-param name="in"
                            select="./hl7:assignedPerson/hl7:name"/>
            <xsl:with-param name="language"
                            select="$language"/>
         </xsl:call-template>
         <!-- Specialism -->
         <xsl:call-template name="handleCV">
            <xsl:with-param name="in"
                            select="hl7:code"/>
            <xsl:with-param name="elemName"
                            select="$elmSpecialism"/>
         </xsl:call-template>
         <!-- address information -->
         <xsl:call-template name="handleADtoAddressInformation">
            <xsl:with-param name="in"
                            select="hl7:addr"/>
            <xsl:with-param name="language"
                            select="$language"/>
         </xsl:call-template>
         <!-- contact details -->
         <xsl:call-template name="handleTELtoContactInformation">
            <xsl:with-param name="in"
                            select="hl7:telecom"/>
            <xsl:with-param name="language"
                            select="$language"/>
         </xsl:call-template>
         <!-- zorgaanbieder -->
         <xsl:for-each select="hl7:Organization | hl7:representedOrganization">
            <zorgaanbieder>
               <xsl:variable name="ref"
                             select="generate-id(.)"/>
               <!-- create the element for the reference -->
               <zorgaanbieder>
                  <xsl:attribute name="value"
                                 select="$ref"/>
                  <xsl:attribute name="datatype">reference</xsl:attribute>
               </zorgaanbieder>
               <!-- output the actual organization here as well, we will take it out later -->
               <xsl:call-template name="uni-Zorgaanbieder">
                  <xsl:with-param name="adaId"
                                  select="$ref"/>
               </xsl:call-template>
            </zorgaanbieder>
         </xsl:for-each>
         <xsl:variable name="elmName">
            <xsl:choose>
               <xsl:when test="$language = 'en-US'">health_professional_role</xsl:when>
               <xsl:otherwise>zorgverleners_rol</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="$typeCode = 'AUT'">
               <xsl:element name="{$elmName}">
                  <xsl:attribute name="code"
                                 select="$typeCode"/>
                  <xsl:attribute name="codeSystem"
                                 select="$oidHL7ParticipationType"/>
                  <xsl:attribute name="displayName">Author</xsl:attribute>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$typeCode = 'RESP'">
               <xsl:element name="{$elmName}">
                  <xsl:attribute name="code"
                                 select="$typeCode"/>
                  <xsl:attribute name="codeSystem"
                                 select="$oidHL7ParticipationType"/>
                  <xsl:attribute name="displayName">Responsible Party</xsl:attribute>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$typeCode = 'REF'">
               <xsl:element name="{$elmName}">
                  <xsl:attribute name="code"
                                 select="$typeCode"/>
                  <xsl:attribute name="codeSystem"
                                 select="$oidHL7ParticipationType"/>
                  <xsl:attribute name="displayName">Referrer</xsl:attribute>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$typeCode = 'PRF'">
               <xsl:element name="{$elmName}">
                  <xsl:attribute name="code"
                                 select="$typeCode"/>
                  <xsl:attribute name="codeSystem"
                                 select="$oidHL7ParticipationType"/>
                  <xsl:attribute name="displayName">Performer</xsl:attribute>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$typeCode = 'SPRF'">
               <xsl:element name="{$elmName}">
                  <xsl:attribute name="code"
                                 select="$typeCode"/>
                  <xsl:attribute name="codeSystem"
                                 select="$oidHL7ParticipationType"/>
                  <xsl:attribute name="displayName">Secondary Performer</xsl:attribute>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$typeCode = 'CON'">
               <xsl:element name="{$elmName}">
                  <xsl:attribute name="code"
                                 select="$typeCode"/>
                  <xsl:attribute name="codeSystem"
                                 select="$oidHL7ParticipationType"/>
                  <xsl:attribute name="displayName">Consultant</xsl:attribute>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$typeCode = 'ATND'">
               <xsl:element name="{$elmName}">
                  <xsl:attribute name="code"
                                 select="$typeCode"/>
                  <xsl:attribute name="codeSystem"
                                 select="$oidHL7ParticipationType"/>
                  <xsl:attribute name="displayName">Attender</xsl:attribute>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$typeCode">
               <xsl:element name="{$elmName}">
                  <xsl:attribute name="code">OTH</xsl:attribute>
                  <xsl:attribute name="codeSystem"
                                 select="$oidHL7NullFlavor"/>
                  <xsl:attribute name="displayName">Other</xsl:attribute>
                  <xsl:attribute name="originalText"
                                 select="$typeCode"/>
               </xsl:element>
            </xsl:when>
         </xsl:choose>
      </zorgverlener>
   </xsl:template>
</xsl:stylesheet>