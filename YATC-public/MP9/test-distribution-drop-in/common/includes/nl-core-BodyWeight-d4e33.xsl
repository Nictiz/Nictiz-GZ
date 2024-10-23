<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/nl-core-BodyWeight.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/nl-core-BodyWeight.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xsl:variable name="bodyWeightLOINCcode"
                 as="xs:string*">29463-7</xsl:variable>
   <xd:doc>
      <xd:desc>Template to convert f:Observation to ADA lichaamslengte.</xd:desc>
   </xd:doc>
   <xsl:template match="f:Observation[f:code/f:coding/f:code/@value=$bodyWeightLOINCcode]"
                 mode="nl-core-BodyWeight">
      <lichaamsgewicht>
         <!-- identificatie -->
         <xsl:apply-templates select="f:identifier"
                              mode="#current"/>
         <!-- gewicht_waarde -->
         <xsl:apply-templates select="f:valueQuantity"
                              mode="#current"/>
         <!-- gewicht_datum_tijd -->
         <xsl:apply-templates select="f:effectiveDateTime"
                              mode="#current"/>
      </lichaamsgewicht>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:effectiveDateTime to lengte_datum_tijd</xd:desc>
   </xd:doc>
   <xsl:template match="f:effectiveDateTime"
                 mode="nl-core-BodyWeight">
      <xsl:call-template name="datetime-to-datetime">
         <xsl:with-param name="adaElementName">gewicht_datum_tijd</xsl:with-param>
         <xsl:with-param name="adaDatatype">datetime</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:identifier to identificatie</xd:desc>
   </xd:doc>
   <xsl:template match="f:identifier"
                 mode="nl-core-BodyWeight">
      <xsl:call-template name="Identifier-to-identificatie"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:valueQuantity to lengte_waarde</xd:desc>
   </xd:doc>
   <xsl:template match="f:valueQuantity"
                 mode="nl-core-BodyWeight">
      <xsl:call-template name="Quantity-to-hoeveelheid">
         <xsl:with-param name="adaElementName">gewicht_waarde</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
</xsl:stylesheet>