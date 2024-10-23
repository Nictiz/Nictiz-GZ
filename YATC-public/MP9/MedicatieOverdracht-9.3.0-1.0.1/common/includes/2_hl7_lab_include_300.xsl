<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: YATC-internal/ada-2-hl7/env/lab/3.0.0/2_hl7_lab_include_300.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.1; 2024-04-18T12:43:34.01+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="#local.2024011509165715615140100"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:util="urn:hl7:utilities"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:hl7nl="urn:hl7-nl:v3"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:pharm="urn:ihe:pharm:medication">
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
   <xsl:import href="hl7-patient-20210701.xsl"/>
   <xsl:import href="hl7-Zorgaanbieder-20210701.xsl"/>
   <xsl:import href="hl7-LaboratoriumUitslag-20210701.xsl"/>
   <!-- this import leads to multiple imports for util xsl's -->
   <!--<xsl:import href="../../../ada_2_fhir/zibs2017/payload/package-2.0.5.xsl"/>-->
   <xsl:param name="logLevel"
              select="$logINFO"
              as="xs:string"/>
   <!-- ================================================================== -->
</xsl:stylesheet>