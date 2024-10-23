<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_hl7/zib2020bbr/payload/hl7-Zorgverlener-20210701.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="language"
              as="xs:string?">nl-NL</xsl:param>
   <xd:doc>
      <xd:desc> MP CDA Zorgverlener as author </xd:desc>
      <xd:param name="in">The input ada zorgverlener, defaults to context</xd:param>
      <xd:param name="theTime">The ada element which had the author time</xd:param>
   </xd:doc>
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.32_20210701000000"
                 match="zorgverlener"
                 mode="handleZorgverlenerAuthor">
      <xsl:param name="in"
                 as="element()*"
                 select="."/>
      <xsl:param name="theTime"
                 as="element()?"/>
      <xsl:call-template name="makeTSValue">
         <xsl:with-param name="elemName">time</xsl:with-param>
         <xsl:with-param name="inputValue"
                         select="$theTime/@value"/>
      </xsl:call-template>
      <xsl:for-each select="$in">
         <assignedAuthor>
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.37_20210701000000"/>
         </assignedAuthor>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc> MP CDA Zorgverlener as assignedEntity </xd:desc>
      <xd:param name="in">The input ada zorgverlener, defaults to context</xd:param>
   </xd:doc>
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.34_20210701000000"
                 match="zorgverlener"
                 mode="handleZorgverlenerassignedEntity">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:for-each select="$in">
         <assignedEntity classCode="ASSIGNED">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.3.10.1.34"/>
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.37_20210701000000"/>
         </assignedEntity>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc> MP CDA Zorgverlener assigned reusable part </xd:desc>
      <xd:param name="in">The input ada zorgverlener, defaults to context</xd:param>
   </xd:doc>
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.37_20210701000000"
                 match="zorgverlener"
                 mode="handleZorgverlenerAssignedReusable">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:for-each select="$in">
         <xsl:choose>
            <xsl:when test="(zorgverlener_identificatie_nummer | zorgverlener_identificatienummer)[@value]">
               <xsl:for-each select="(zorgverlener_identificatie_nummer | zorgverlener_identificatienummer)[@value]">
                  <xsl:call-template name="makeIIid"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <!-- een id wegschrijven met nullFlavor -->
               <id nullFlavor="NI"/>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:for-each select="specialisme[@code]">
            <xsl:call-template name="makeCode"/>
         </xsl:for-each>
         <xsl:for-each select=".//adresgegevens[not(adresgegevens)][.//(@value | @code | @nullFlavor)]">
            <addr>
               <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1.101_20180611000000"/>
            </addr>
         </xsl:for-each>
         <!--Telecom gegevens-->
         <xsl:for-each select=".//contactgegevens[not(contactgegevens)][.//(@value | @code | @nullFlavor)]">
            <xsl:call-template name="_CdaTelecom"/>
         </xsl:for-each>
         <xsl:for-each select="(zorgverlener_naam | .)[.//naamgegevens[not(naamgegevens)][.//(@value | @code | @nullFlavor)]]">
            <assignedPerson>
               <name>
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1.100_20170602000000">
                     <xsl:with-param name="naamgegevens"
                                     select="naamgegevens"/>
                     <xsl:with-param name="unstructuredNameElement">ongestructureerde_naam</xsl:with-param>
                  </xsl:call-template>
               </name>
            </assignedPerson>
         </xsl:for-each>
         <!-- assumption for reference use is that zorgverlener and zorgaanbieder are both in same 'bouwstenen' folder in dataset -->
         <xsl:choose>
            <xsl:when test="../zorgaanbieder[@id = current()//zorgaanbieder[not(zorgaanbieder)]/@value]">
               <xsl:for-each select="../zorgaanbieder[@id = current()//zorgaanbieder[not(zorgaanbieder)]/@value]">
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.33_20210701000000"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <!-- legacy datasets -->
               <xsl:for-each select=".//zorgaanbieder[not(zorgaanbieder)][.//(@value | @code | @nullFlavor)]">
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.33_20210701000000"/>
               </xsl:for-each>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc> MP CDA Zorgverlener as assigned Entity </xd:desc>
      <xd:param name="in">The input ada zorgverlener, defaults to context</xd:param>
      <xd:param name="theTime">The ada element which had the author time</xd:param>
   </xd:doc>
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.43_20210701000000"
                 match="zorgverlener"
                 mode="handleZorgverlenerAssEntity">
      <xsl:param name="in"
                 as="element()*"
                 select="."/>
      <xsl:param name="theTime"
                 as="element()?"/>
      <xsl:call-template name="makeTSValue">
         <xsl:with-param name="elemName">time</xsl:with-param>
         <xsl:with-param name="inputValue"
                         select="$theTime/@value"/>
      </xsl:call-template>
      <xsl:for-each select="$in">
         <assignedEntity>
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.37_20210701000000"/>
         </assignedEntity>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>