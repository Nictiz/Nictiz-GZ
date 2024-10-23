<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.n2x_bll_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This XSL takes the (pruned and enhanced) application data file for fhir-2-ada
       (as produced by ../../xplmod/fhir-2-ada.mod.xpl) and creates a full list of directories and files 
       to compare against each other.
    -->
    <!-- ======================================================================= -->
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
    <!-- ======================================================================= -->
    <!-- SETUP: -->

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:mode on-no-match="shallow-skip"/>

    <xsl:strip-space elements="*"/>

    <xsl:import href="../../../xslmod/create-directory-compare-list-for-application-data-setup.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- GLOBAL VARIABLES AND PARAMETER OVERRIDES: -->

    <xsl:param name="repoForComparisonsBaseDir" as="xs:string" required="false" select="yatcs:get-original-repo-base-directory($repoHL7Mappings)"/>
    
    <xsl:param name="repoSubdirName" as="xs:string" required="true">
        <!-- Name of the sub-directory in the repository of the original (e.g. fhir_2_ada) -->
    </xsl:param>
    <xsl:param name="descriptionSuffixBase" as="xs:string" required="true">
        <!-- String to suffix descriptions with -->
    </xsl:param>

</xsl:stylesheet>
