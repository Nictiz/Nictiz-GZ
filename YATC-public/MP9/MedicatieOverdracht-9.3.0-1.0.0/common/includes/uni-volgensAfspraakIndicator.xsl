<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/hl7_2_ada/zibs2020/payload/uni-volgensAfspraakIndicator.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.0; 2024-04-17T17:00:31.15+02:00 == -->
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
      <xd:desc>Helper template for the volgens_afspraak_indicator</xd:desc>
      <xd:param name="in">The hl7 element which has the relations in entryRelationships. Defaults to context.</xd:param>
   </xd:doc>
   <xsl:template name="uni-volgensAfspraakIndicator">
      <xsl:param name="in"
                 select="."/>
      <xsl:for-each select="$in">
         <xsl:for-each select="hl7:entryRelationship/hl7:observation[hl7:code[@code = '8'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2'] or hl7:code[@code = '112221000146107'][@codeSystem = $oidSNOMEDCT]]/hl7:value">
            <xsl:call-template name="handleBL">
               <xsl:with-param name="elemName">volgens_afspraak_indicator</xsl:with-param>
            </xsl:call-template>
         </xsl:for-each>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>