<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/zibs2020/payload/uni-volgensAfspraakIndicator.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/zibs2020/payload/uni-volgensAfspraakIndicator.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
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