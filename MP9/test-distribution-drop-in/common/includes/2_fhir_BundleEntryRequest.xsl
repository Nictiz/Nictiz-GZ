<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/fhir/2_fhir_BundleEntryRequest.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/fhir/2_fhir_BundleEntryRequest.xsl == -->
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
   <xsl:import href="2_fhir_BundleEntrySearch.xsl"/>
   <xd:doc>
      <xd:desc>Template for Bundle.entry.request</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>populateId 'false' means Resource.id is absent, for transaction Bundles. Not forbidden per se, but prevents some validation warnings.</xd:desc>
   </xd:doc>
   <xsl:param name="populateId"
              select="false()"
              as="xs:boolean"/>
   <xd:doc>
      <xd:desc>Add Bundle.entry.request</xd:desc>
   </xd:doc>
   <xsl:template match="f:resource"
                 mode="addBundleEntrySearchOrRequest">
      <xsl:copy>
         <xsl:apply-templates select="@* | node()"
                              mode="#current"/>
      </xsl:copy>
      <request>
         <method value="POST"/>
         <url value="{*/local-name()}"/>
      </request>
   </xsl:template>
</xsl:stylesheet>