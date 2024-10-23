<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.wlj_tgy_swb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Stand-alone driver for adainstance_2_wikitable.xsl
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
    <!-- ================================================================== -->
    
    <xsl:output method="text" encoding="utf-16"/>
    
    <!-- standalone xsl for ada 2 wiki -->
    
    <xsl:include href="../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>
    <xsl:include href="../../xslmod/ada-2-wiki-build-standard-ada-release-file.mod.xsl"/>
    
    <xsl:import href="adainstance_2_wikitable.xsl"/>
    
    <xsl:strip-space elements="*"/>
    
</xsl:stylesheet>
