<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/ext-CopyIndicator.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/ext-CopyIndicator.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xd:doc>
      <xd:desc>Template for shared extension http://nictiz.nl/fhir/StructureDefinition/ext-CopyIndicator</xd:desc>
      <xd:param name="in">Optional. Ada element containing the copy indicator. Defaults to context.</xd:param>
   </xd:doc>
   <xsl:template name="ext-CopyIndicator"
                 match="*"
                 as="element()?"
                 mode="ext-CopyIndicator">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <extension url="{$urlExtCopyIndicator}">
         <valueBoolean>
            <xsl:call-template name="boolean-to-boolean"/>
         </valueBoolean>
      </extension>
   </xsl:template>
</xsl:stylesheet>