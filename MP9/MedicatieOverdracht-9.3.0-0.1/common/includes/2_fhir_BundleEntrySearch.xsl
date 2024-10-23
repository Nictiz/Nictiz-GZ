<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/fhir/2_fhir_BundleEntrySearch.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
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
   <xd:doc scope="stylesheet">
      <xd:desc>Template for Bundle.entry.request</xd:desc>
   </xd:doc>
   <xsl:param name="searchMode"
              as="xs:string?">match</xsl:param>
   <xd:doc>
      <xd:desc>Add Bundle.entry.request</xd:desc>
      <xd:param name="entrySearchMode">param to override global param in case a different search mode is needed for a particular entry. 
            Typically not all resources in a Bundle have the same searchMode. Defaults to global param $searchMode</xd:param>
   </xd:doc>
   <xsl:template match="f:resource"
                 mode="addBundleEntrySearchOrRequest">
      <!-- AWE: need to distinguish between match and include, which can only be done when invoking this template, so set this param here if needed -->
      <xsl:param name="entrySearchMode"
                 select="$searchMode"/>
      <xsl:copy>
         <xsl:apply-templates select="@* | node()"
                              mode="#current"/>
      </xsl:copy>
      <xsl:if test="string-length($entrySearchMode) gt 0">
         <search>
            <mode value="{$entrySearchMode}"/>
         </search>
      </xsl:if>
   </xsl:template>
   <xd:doc>
      <xd:desc>Basis copy template in mode addBundleEntrySearchOrRequest</xd:desc>
      <xd:param name="entrySearchMode">param to override global param in case a different search mode is needed for a particular entry. 
            Typically not all resources in a Bundle have the same searchMode. Defaults to global param $searchMode</xd:param>
   </xd:doc>
   <xsl:template match="@* | node()"
                 mode="addBundleEntrySearchOrRequest">
      <xsl:param name="entrySearchMode"
                 select="$searchMode"/>
      <xsl:copy>
         <xsl:apply-templates select="@* | node()"
                              mode="#current">
            <xsl:with-param name="entrySearchMode"
                            select="$entrySearchMode"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
</xsl:stylesheet>