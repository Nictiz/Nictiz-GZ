<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/mp-lab/payload/sturen_medicatievoorschrift-en-lab.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.3.0; 2024-04-09T18:20:47.77+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="xs"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema">
   <xsl:import href="../../mp/9.3.0/sturen_medicatievoorschrift/payload/sturen_medicatievoorschrift_2_ada.xsl"/>
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