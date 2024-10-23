<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/ext-CopyIndicator.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/ext-CopyIndicator.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xd:doc>
      <xd:desc>Template to convert f:extension zib-Medication-CopyIndicator to kopie_indicator element.</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = $urlExtCopyIndicator]"
                 mode="ext-CopyIndicator">
      <kopie_indicator>
         <xsl:attribute name="value"
                        select="f:valueBoolean/@value"/>
      </kopie_indicator>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension zib-Medication-CopyIndicator to kopie_indicator element.</xd:desc>
   </xd:doc>
   <xsl:template match="f:reportedBoolean"
                 mode="ext-CopyIndicator">
      <kopie_indicator>
         <xsl:attribute name="value"
                        select="@value"/>
      </kopie_indicator>
   </xsl:template>
</xsl:stylesheet>