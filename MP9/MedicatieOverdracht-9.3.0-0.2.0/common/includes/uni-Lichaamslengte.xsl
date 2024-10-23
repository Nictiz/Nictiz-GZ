<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/hl7_2_ada/zibs2020/payload/uni-Lichaamslengte.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.2.0; 2024-03-14T08:34:46.14+01:00 == -->
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
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="language"
              as="xs:string?">nl-NL</xsl:param>
   <xsl:variable name="templateId-lichaamslengte"
                 as="xs:string*"
                 select="'2.16.840.1.113883.2.4.3.11.60.7.10.30', '2.16.840.1.113883.2.4.3.11.60.20.77.10.9122'"/>
   <xd:doc>
      <xd:desc>Mapping of HL7 CDA template 2.16.840.1.113883.2.4.3.11.60.7.10.30 20171025 to zib nl.zorg.Lichaamslengte 3.1 concept in ADA. 
                 Created for MP voorschrift, currently only supports fields used in those scenario's</xd:desc>
      <xd:param name="in">HL7 Node to consider in the creation of the ada element</xd:param>
      <xd:param name="zibroot">Optional. The ada zibroot element to be outputted with this HCIM, will be copied in ada element</xd:param>
   </xd:doc>
   <xsl:template name="uni-Lichaamslengte"
                 match="hl7:observation"
                 as="element()*"
                 mode="doUniLichaamslengte">
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
            <xsl:choose>
               <!-- zibroot, left here for backwards compatibility reasons -->
               <xsl:when test="$zibroot">
                  <xsl:copy-of select="$zibroot"/>
               </xsl:when>
               <xsl:otherwise>
                  <!-- zibroot no longer in zibs-2020, but we do need id -->
                  <xsl:if test="not($zibroot)">
                     <xsl:call-template name="handleII">
                        <xsl:with-param name="in"
                                        select="hl7:id"/>
                        <xsl:with-param name="elemName">identificatie</xsl:with-param>
                     </xsl:call-template>
                  </xsl:if>
               </xsl:otherwise>
            </xsl:choose>
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
               <xsl:with-param name="datatype">datetime</xsl:with-param>
            </xsl:call-template>
         </xsl:element>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>