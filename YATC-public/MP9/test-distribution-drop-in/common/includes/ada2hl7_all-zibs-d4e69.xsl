<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/zib2017bbr/payload/ada2hl7_all-zibs.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/zib2017bbr/payload/ada2hl7_all-zibs.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <!-- Without this import, all depending XSLs need to import it -->
   <xsl:import href="_ada2hl7_zib2017.xsl"/>
   <xsl:import href="hl7-CDARecordTargetSDTCNL-20180611.xsl"/>
   <xsl:import href="hl7-CDARecordTargetSDTCNLBSNContactible-20180611.xsl"/>
   <xsl:import href="hl7-Lichaamsgewicht-20171025.xsl"/>
   <xsl:import href="hl7-Lichaamslengte-20171025.xsl"/>
   <xsl:import href="hl7-LaboratoryObservation-20171205.xsl"/>
   <xsl:import href="hl7-toelichting-20180611.xsl"/>
</xsl:stylesheet>