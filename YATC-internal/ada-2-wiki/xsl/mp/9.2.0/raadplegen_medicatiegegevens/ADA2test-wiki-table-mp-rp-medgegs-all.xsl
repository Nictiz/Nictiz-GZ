<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023040508344678250330200">
    <!-- ================================================================== -->
    <!--
           This XSL was created to facilitate mapping from ADA xml to wiki table(s)
           
           This single stylesheet replaces the multiple stylesheets ADA2test-wiki-table-mp-rp-medgegs-*.xsl in the
           original Ant based code. It has two additional parameters ($abbreviation and $elementNameId) to take care
           of the differences.
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

    <!-- The stylesheets in the origianlAnt code were exactly the same as the ones for beschikbaarstellen_medicatiegegevens, 
         therefore we can (for now) simply use these: -->
    <xsl:include href="../beschikbaarstellen_medicatiegegevens/ADA2test-wiki-table-mp-bs-medgegs-all.xsl"/>

</xsl:stylesheet>
