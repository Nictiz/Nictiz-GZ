<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/lab/3.0.0/2_hl7_lab_include_300.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/lab/3.0.0/2_hl7_lab_include_300.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:util="urn:hl7:utilities"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:hl7nl="urn:hl7-nl:v3"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:pharm="urn:ihe:pharm:medication"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:import href="hl7-patient-20210701.xsl"/>
   <xsl:import href="hl7-Zorgaanbieder-20210701.xsl"/>
   <xsl:import href="hl7-LaboratoriumUitslag-20210701.xsl"/>
   <!-- this import leads to multiple imports for util xsl's -->
   <!--<xsl:import href="../../../ada_2_fhir/zibs2017/payload/package-2.0.5.xsl"/>-->
   <xsl:param name="logLevel"
              select="$logINFO"
              as="xs:string"/>
</xsl:stylesheet>