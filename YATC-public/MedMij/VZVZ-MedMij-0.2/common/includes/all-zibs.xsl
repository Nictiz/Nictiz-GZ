<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/zibs2017/payload/all-zibs.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-02-06T09:13:30.86+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/zibs2017/payload/all-zibs.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.2; 2024-02-06T09:13:30.86+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <!-- Without this import, all depending XSLs need to import it -->
   <xsl:import href="_zib2017-d4e85.xsl"/>
   <xsl:import href="zib-LaboratoryTestResult-Observation-4.1.xsl"/>
   <xsl:import href="zib-Lichaamsgewicht-3.1.xsl"/>
   <xsl:import href="zib-Lichaamslengte-3.1.xsl"/>
</xsl:stylesheet>