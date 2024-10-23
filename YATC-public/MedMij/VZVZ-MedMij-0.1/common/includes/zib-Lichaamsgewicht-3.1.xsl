<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/zibs2017/payload/zib-Lichaamsgewicht-3.1.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-01-29T11:45:25.52+01:00" version="0.1"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/zibs2017/payload/zib-Lichaamsgewicht-3.1.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.1; 2024-01-29T11:45:25.52+01:00 == -->
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
   <!--        <xsl:import href="_zib2017.xsl"/>-->
   <!--    <xsl:import href="../../hl7/hl7_2_ada_hl7_include.xsl"/>-->
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="language"
              as="xs:string?">nl-NL</xsl:param>
   <xd:doc>
      <xd:desc>Mapping of HL7 CDA template 2.16.840.1.113883.2.4.3.11.60.7.10.28 20171025 to zib nl.zorg.Lichaamsgewicht 3.1 concept in ADA. 
                 Created for MP voorschrift, currently only supports fields used in those scenario's</xd:desc>
      <xd:param name="in">HL7 Node to consider in the creation of the ada element</xd:param>
      <xd:param name="zibroot">Optional. The ada zibroot element to be outputted with this HCIM, will be copied in ada element</xd:param>
   </xd:doc>
   <xsl:template name="zib-Lichaamsgewicht-3.1"
                 match="hl7:observation"
                 as="element()*"
                 mode="doZibLichaamsgewicht-3.1">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="zibroot"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <!-- body_weight -->
         <xsl:variable name="elemName">
            <xsl:choose>
               <xsl:when test="$language = 'nl-NL'">lichaamsgewicht</xsl:when>
               <xsl:otherwise>body_weight</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:element name="{$elemName}">
            <!-- zibroot -->
            <xsl:copy-of select="$zibroot"/>
            <!-- weight_value -->
            <xsl:variable name="elemName">
               <xsl:choose>
                  <xsl:when test="$language = 'nl-NL'">gewicht_waarde</xsl:when>
                  <xsl:otherwise>weight_value_code</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:call-template name="handlePQ">
               <xsl:with-param name="in"
                               select="hl7:value[@value | @unit | @nullFlavor]"/>
               <xsl:with-param name="elemName"
                               select="$elemName"/>
            </xsl:call-template>
            <!-- weight_date_time -->
            <xsl:variable name="elemName">
               <xsl:choose>
                  <xsl:when test="$language = 'nl-NL'">gewicht_datum_tijd</xsl:when>
                  <xsl:otherwise>weight_date_time</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:call-template name="handleTS">
               <xsl:with-param name="in"
                               select="hl7:effectiveTime[@value | @nullFlavor] | hl7:effectiveTime/hl7:low"/>
               <xsl:with-param name="elemName"
                               select="$elemName"/>
            </xsl:call-template>
         </xsl:element>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>