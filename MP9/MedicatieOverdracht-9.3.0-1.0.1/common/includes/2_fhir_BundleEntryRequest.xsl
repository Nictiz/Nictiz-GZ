<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/fhir/2_fhir_BundleEntryRequest.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.1; 2024-04-18T12:43:34.01+02:00 == -->
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