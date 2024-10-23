<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="HL7-mappings/hl7_2_ada/zibs2017/payload/zib-Lichaamslengte-3.1.xsl"?>
<?yatc-distribution-info name="ketenzorg-3.0.2" timestamp="2024-06-28T14:38:20.79+02:00" version="1.4.28"?>
<!-- == Provenance: HL7-mappings/hl7_2_ada/zibs2017/payload/zib-Lichaamslengte-3.1.xsl == -->
<!-- == Distribution: ketenzorg-3.0.2; 1.4.28; 2024-06-28T14:38:20.79+02:00 == -->
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
   <!--    <xsl:import href="_zib2017.xsl"/>-->
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="language"
              as="xs:string?">nl-NL</xsl:param>
   <xd:doc>
      <xd:desc>Mapping of HL7 CDA template 2.16.840.1.113883.2.4.3.11.60.7.10.30 20171025 to zib nl.zorg.Lichaamslengte 3.1 concept in ADA. 
                 Created for MP voorschrift, currently only supports fields used in those scenario's</xd:desc>
      <xd:param name="in">HL7 Node to consider in the creation of the ada element</xd:param>
      <xd:param name="zibroot">Optional. The ada zibroot element to be outputted with this HCIM, will be copied in ada element</xd:param>
   </xd:doc>
   <xsl:template name="zib-Lichaamslengte-3.1"
                 match="hl7:observation"
                 as="element()*"
                 mode="doZibLichaamslengte-3.1">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="zibroot"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <!-- body_height -->
         <xsl:variable name="elemName">
            <xsl:choose>
               <xsl:when test="$language = 'nl-NL'">lichaamslengte</xsl:when>
               <xsl:otherwise>body_height</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:element name="{$elemName}">
            <!-- zibroot -->
            <xsl:copy-of select="$zibroot"/>
            <!-- height_value -->
            <xsl:variable name="elemName">
               <xsl:choose>
                  <xsl:when test="$language = 'nl-NL'">lengte_waarde</xsl:when>
                  <xsl:otherwise>height_value_code</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:call-template name="handlePQ">
               <xsl:with-param name="in"
                               select="hl7:value[@value | @unit | @nullFlavor]"/>
               <xsl:with-param name="elemName"
                               select="$elemName"/>
            </xsl:call-template>
            <!-- height_date_time -->
            <xsl:variable name="elemName">
               <xsl:choose>
                  <xsl:when test="$language = 'nl-NL'">lengte_datum_tijd</xsl:when>
                  <xsl:otherwise>height_date_time</xsl:otherwise>
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