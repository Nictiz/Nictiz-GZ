<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: YATC-internal/ada-2-hl7/env/zib2020bbr/payload/hl7-toelichting-20210701.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.3.0; 2024-04-09T18:20:47.77+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <!-- ================================================================== -->
   <!--
        TBD
    -->
   <!-- ================================================================== -->
   <!--
        Copyright © Nictiz
        
        This program is free software; you can redistribute it and/or modify it under the terms of the
        GNU Lesser General Public License as published by the Free Software Foundation; either version
        2.1 of the License, or (at your option) any later version.
        
        This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
        without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
        See the GNU Lesser General Public License for more details.
        
        The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
    -->
   <!-- ================================================================== -->
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="language"
              as="xs:string?">nl-NL</xsl:param>
   <!-- ================================================================== -->
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.0.32_20210701000000"
                 match="toelichting | comment"
                 mode="HandleComment">
      <!-- Mapping of comment concept in zib/ADA to HL7 CDA template 2.16.840.1.113883.2.4.3.11.60.3.10.0.32. -->
      <xsl:param name="in"
                 select=".">
         <!-- ADA Node to consider in the creation of the hl7 element -->
      </xsl:param>
      <xsl:for-each select="$in">
         <act classCode="ACT"
              moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.3.10.0.32"/>
            <code code="48767-8"
                  codeSystem="{$oidLOINC}"
                  codeSystemName="{$oidMap[@oid=$oidLOINC]/@displayName}"
                  displayName="Annotation comment"/>
            <text mediaType="text/plain">
               <xsl:value-of select="@value"/>
            </text>
         </act>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>