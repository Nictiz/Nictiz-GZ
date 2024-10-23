<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/mp-lab/payload/sturen_medicatievoorschrift-en-lab.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/mp-lab/payload/sturen_medicatievoorschrift-en-lab.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="xs"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema">
   <xsl:import href="../../../common/includes/sturen_medicatievoorschrift_org.xsl"/>
   <xsl:import href="../../../common/includes/sturen_laboratoriumresultaten_org.xsl"/>
   <xsl:template match="/">
      <organizer xsi:schemaLocation="urn:hl7-org:v3 ../hl7_schemas/master_organizer.xsd"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                 xmlns="urn:hl7-org:v3">
         <xsl:call-template name="mp-mp93_vos"/>
         <xsl:call-template name="lu-sturenLaboratoriumresultaten"/>
      </organizer>
   </xsl:template>
</xsl:stylesheet>