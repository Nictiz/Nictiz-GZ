<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="xs"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema">
   <xsl:import href="../../common/includes/sturen_medicatievoorschrift_org.xsl"/>
   <xsl:import href="../../common/includes/sturen_laboratoriumresultaten_org.xsl"/>
   <xsl:template match="/">
      <organizer xsi:schemaLocation="urn:hl7-org:v3 ../hl7_schemas/master_organizer.xsd"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                 xmlns="urn:hl7-org:v3">
         <xsl:call-template name="mp-mp93_vos"/>
         <xsl:call-template name="lu-sturenLaboratoriumresultaten"/>
      </organizer>
   </xsl:template>
</xsl:stylesheet>