<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/ext-Comment.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/ext-Comment.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:util="urn:hl7:utilities"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>Converts ada string to FHIR extension conforming to profile ext-Comment</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Template for shared extension http://nictiz.nl/fhir/StructureDefinition/ext-Comment</xd:desc>
      <xd:param name="in">Optional. Ada element containing a string</xd:param>
   </xd:doc>
   <xsl:template match="*"
                 name="ext-Comment"
                 mode="ext-Comment"
                 as="element()?">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:for-each select="$in[string-length(@value) gt 0]">
         <extension url="{$urlExtComment}">
            <valueString value="{@value}"/>
         </extension>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>