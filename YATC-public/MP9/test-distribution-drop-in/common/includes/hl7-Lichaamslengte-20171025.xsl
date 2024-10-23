<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/zib2017bbr/payload/hl7-Lichaamslengte-20171025.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/zib2017bbr/payload/hl7-Lichaamslengte-20171025.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
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
   <xd:doc>
      <xd:desc>Mapping of zib nl.zorg.Lichaamslengte 3.1 concept in ADA to HL7 CDA template 	2.16.840.1.113883.2.4.3.11.60.7.10.30. 
                 Created for MP voorschrift, currently only supports fields used in those scenario's</xd:desc>
      <xd:param name="in">ADA Node to consider in the creation of the hl7 element</xd:param>
   </xd:doc>
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.30_20171025000000"
                 match="lichaamslengte | body_height"
                 mode="HandleBodyHeight">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:for-each select="$in">
         <observation classCode="OBS"
                      moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.7.10.30"/>
            <!-- id -->
            <xsl:for-each select="((zibroot | hcimroot)/(identificatienummer | identification_number)| identificatienummer | identification_number | identificatie | identification)[@value | @nullFlavor | @root]">
               <xsl:call-template name="makeIIid"/>
            </xsl:for-each>
            <code code="8302-2"
                  codeSystem="{$oidLOINC}"
                  codeSystemName="{$oidMap[@oid=$oidLOINC]/@displayName}"
                  displayName="Body height"/>
            <xsl:call-template name="makeEffectiveTime">
               <xsl:with-param name="effectiveTime"
                               select="lengte_datum_tijd | height_date_time"/>
               <xsl:with-param name="nullIfAbsent"
                               select="true()"/>
            </xsl:call-template>
            <xsl:for-each select="(lengte_waarde | height_value)[@value | @nullFlavor]">
               <xsl:call-template name="makePQValue"/>
            </xsl:for-each>
            <!-- todo position -->
            <!-- toelichting, text is mandatory in this template so do not output anything when there is no @value in input -->
            <xsl:for-each select="(toelichting | comment)[@value]">
               <entryRelationship typeCode="REFR">
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.0.32_20180611000000"/>
               </entryRelationship>
            </xsl:for-each>
         </observation>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>