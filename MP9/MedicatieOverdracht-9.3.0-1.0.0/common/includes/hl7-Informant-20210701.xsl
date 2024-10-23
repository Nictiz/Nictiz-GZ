<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: YATC-internal/ada-2-hl7/env/zib2020bbr/payload/hl7-Informant-20210701.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.0; 2024-04-17T17:00:31.15+02:00 == -->
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
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.38_20240322123101"
                 match="zorgverlener | contactpersoon | patient"
                 mode="HandleInformant">
      <xsl:param name="in"
                 select="."/>
      <xsl:for-each select="$in">
         <informant typeCode="INF">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.121.10.38"/>
            <xsl:choose>
               <xsl:when test="self::zorgverlener">
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.34_20210701000000"/>
               </xsl:when>
               <xsl:when test="self::patient">
                  <assignedEntity classCode="ASSIGNED">
                     <xsl:for-each select="identificatienummer[@value]">
                        <xsl:call-template name="makeIIid"/>
                     </xsl:for-each>
                     <code code="ONESELF"
                           codeSystem="2.16.840.1.113883.5.111"/>
                  </assignedEntity>
               </xsl:when>
               <xsl:when test="self::contactpersoon">
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.30_20210701000000"/>
               </xsl:when>
            </xsl:choose>
         </informant>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>