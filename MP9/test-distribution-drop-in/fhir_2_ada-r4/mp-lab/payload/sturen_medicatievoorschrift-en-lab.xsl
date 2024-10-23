<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/mp-lab/payload/sturen_medicatievoorschrift-en-lab.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/mp-lab/payload/sturen_medicatievoorschrift-en-lab.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="xs"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema">
   <xsl:import href="../../../common/includes/sturen_medicatievoorschrift_2_ada.xsl"/>
   <xsl:import href="../../../common/includes/sturen_laboratoriumresultaten_2_ada.xsl"/>
   <xsl:template match="/">
      <xsl:variable name="data"
                    as="element()*">
         <xsl:call-template name="ada_sturen_medicatievoorschrift"/>
         <xsl:call-template name="ada_sturen_laboratoriumresultaten"/>
      </xsl:variable>
      <adaxml xsi:noNamespaceSchemaLocation="../ada_schemas/ada_sturen_medicatievoorschrift.xsd"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
         <meta status="new"
               created-by="generated"
               last-update-by="generated"/>
         <xsl:copy-of select="$data/data"/>
      </adaxml>
   </xsl:template>
</xsl:stylesheet>