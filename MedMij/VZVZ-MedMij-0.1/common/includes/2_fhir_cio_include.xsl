<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/env/cio/2_fhir_cio_include.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-01-29T11:45:25.52+01:00" version="0.1"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/env/cio/2_fhir_cio_include.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.1; 2024-01-29T11:45:25.52+01:00 == -->
<xsl:stylesheet version="2.0"
                exclude-result-prefixes="#all"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:nff="http://www.nictiz.nl/fhir-functions">
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
   <!-- ======================================================================= -->
   <xsl:param name="referById"
              as="xs:boolean"
              select="false()"/>
   <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
   <!-- 02-00-00-00-00-00 may not be used in a production situation -->
   <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>
   <!-- dateT may be given for relative dates, only applicable for test instances -->
   <xsl:param name="dateT"
              as="xs:date?"/>
   <xsl:variable name="bouwstenen-all-int-gegevens"
                 as="element(f:entry)*">
      <!-- allergie_intolerantie -->
      <xsl:for-each select="//(allergie_intolerantie | allergy_intolerance)">
         <xsl:call-template name="allergyIntoleranceEntry">
            <xsl:with-param name="adaPatient"
                            select="../patient"/>
            <xsl:with-param name="dateT"
                            select="$dateT"/>
            <xsl:with-param name="searchMode">match</xsl:with-param>
         </xsl:call-template>
      </xsl:for-each>
   </xsl:variable>
   <xsl:variable name="bouwstenen-all-int-vertaling"
                 as="element(f:entry)*">
      <!-- allergie_intolerantie -->
      <xsl:for-each select="//(allergie_intolerantie | allergy_intolerance)">
         <xsl:call-template name="allergyIntoleranceEntry">
            <xsl:with-param name="adaPatient"
                            select="../patient"/>
            <xsl:with-param name="dateT"
                            select="$dateT"/>
            <xsl:with-param name="searchMode">match</xsl:with-param>
         </xsl:call-template>
      </xsl:for-each>
   </xsl:variable>
</xsl:stylesheet>