<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/ext-TimeInterval-Duration.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/ext-TimeInterval-Duration.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xd:doc>
      <xd:desc>Template to convert f:extension urlExtTimeInterval-Duration to tijdsduur element.</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = ($urlExtTimeInterval-Duration, $urlExtTimeIntervalDuration)]"
                 mode="urlExtTimeInterval-Duration">
      <xsl:call-template name="Duration-to-hoeveelheid">
         <xsl:with-param name="in"
                         select="f:valueDuration"/>
         <xsl:with-param name="adaElementName">tijds_duur</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
</xsl:stylesheet>