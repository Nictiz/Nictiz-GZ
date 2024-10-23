<?xml version="1.0" encoding="UTF-8"?>
<!--
Copyright (c) Nictiz

This program is free software; you can redistribute it and/or modify it under the terms of the
GNU Lesser General Public License as published by the Free Software Foundation; either version
2.1 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU Lesser General Public License for more details.

The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
-->
<xsl:stylesheet exclude-result-prefixes="#all" xmlns="http://hl7.org/fhir" xmlns:f="http://hl7.org/fhir" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="urn:fhir:stu3:functions" xmlns:nf="http://www.nictiz.nl/functions" xmlns:uuid="http://www.uuid.org" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <!-- Without this import, all depending XSLs need to import it -->
    <xsl:import href="nl-core-patient-tijdelijk.xsl"/>
    <xsl:import href="../../zibs2017/payload/_zib2017.xsl"/>
    <xsl:import href="../../zibs2017/payload/nl-core-patient-2.1.xsl"/>
    <xsl:import href="../../zibs2017/payload/nl-core-practitioner-2.0.xsl"/>
    <xsl:import href="../../zibs2017/payload/nl-core-practitionerrole-2.0.xsl"/>
    <xsl:import href="../../zibs2017/payload/nl-core-organization-2.0.xsl"/>
    <xsl:import href="../../zibs2017/payload/nl-core-humanname-2.0.xsl"/>
    <xsl:import href="../../zibs2017/payload/nl-core-address-2.0.xsl"/>
    <xsl:import href="../../zibs2017/payload/nl-core-contactpoint-1.0.xsl"/>
    <xsl:import href="../../zibs2017/payload/zib-LaboratoryTestResult-Observation-2.1.xsl"/>
        
    <!--<xsl:template match="/">
        <xsl:copy-of select="$labSpecimens"></xsl:copy-of>
    </xsl:template>-->
</xsl:stylesheet>