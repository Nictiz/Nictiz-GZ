<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:hl7-org:v3" xmlns:hl7="urn:hl7-org:v3" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="#local.2024011810474784397880100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
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

    <xsl:import href="../../../peri30_include.xsl"/>
    <xsl:output method="xml" indent="yes" exclude-result-prefixes="#all"/>

    <xsl:param name="schematronRef" as="xs:boolean?" select="true()"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Start conversion. Handle interaction specific stuff for "kernset_neonatologie". -->
        <xsl:apply-templates select="//kernset_neonatologie"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="kernset_neonatologie_300" match="kernset_neonatologie">
        <!-- Creates HL7 CDA for ada kernset_neonatologie transaction -->
        <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/trunk/Zorgtoepassing/PerinataleZorg/DECOR/peri20-runtime-develop/peri20-ksneo-alg-30.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" </xsl:processing-instruction>

        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901181_20181107170819"/>

    </xsl:template>
</xsl:stylesheet>
