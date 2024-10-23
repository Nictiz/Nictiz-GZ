<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/env/zibs2017/payload/ext-zib-medication-period-of-use-2.0.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-02-06T09:13:30.86+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/env/zibs2017/payload/ext-zib-medication-period-of-use-2.0.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.2; 2024-02-06T09:13:30.86+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:f="http://hl7.org/fhir"
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
   <!--    <xsl:import href="../../fhir/2_fhir_fhir_include.xsl"/>-->
   <xsl:param name="dateT"
              as="xs:date?"/>
   <!-- ================================================================== -->
   <xsl:template name="ext-zib-Medication-PeriodOfUse-2.0"
                 as="element()?">
      <!-- Template for shared extension http://nictiz.nl/fhir/StructureDefinition/zib-MedicationUse-PeriodOfUse -->
      <xsl:param name="start"
                 as="element()?">
         <!-- Optional ada element. Contains start date(time). -->
      </xsl:param>
      <xsl:param name="end"
                 as="element()?">
         <!-- Optional ada element. Contains end date(time). -->
      </xsl:param>
      <extension url="http://nictiz.nl/fhir/StructureDefinition/zib-Medication-PeriodOfUse">
         <valuePeriod>
            <xsl:for-each select="$start[@value]">
               <start>
                  <xsl:attribute name="value">
                     <xsl:call-template name="format2FHIRDate">
                        <xsl:with-param name="dateTime"
                                        select="xs:string(@value)"/>
                        <xsl:with-param name="dateT"
                                        select="$dateT"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </start>
            </xsl:for-each>
            <xsl:for-each select="$end[@value]">
               <end>
                  <xsl:attribute name="value">
                     <xsl:call-template name="format2FHIRDate">
                        <xsl:with-param name="dateTime"
                                        select="xs:string(@value)"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </end>
            </xsl:for-each>
         </valuePeriod>
      </extension>
   </xsl:template>
</xsl:stylesheet>