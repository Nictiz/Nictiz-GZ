<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="#local.fs3_1w5_tvb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This is a so-called oXygen main file. It can be used in an oXygen project to validate
       XSLT libraries that depend on each other.
       
       To use it, enable the oXygen project's main file support:
       * Open oXygen project's view
       * Right-click on the project's root and enable the main file support (if it isn't already)
       * Drag this file into the "Main files" folder that appears at the top of the project
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

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/href.mod.xsl"/>
    <xsl:include href="../../xslmod/yatc-system.mod.xsl"/>
    <xsl:include href="../../xslmod/yatc-parameters.mod.xsl"/>
    <xsl:include href="../../xslmod/yatc-parameters-map.mod.xsl"/>
    <xsl:include href="../../xslmod/finalize-application-data-file.mod.xsl"/>
    <xsl:include href="../../xslmod/compare.mod.xsl"/>
    <xsl:include href="../../xslmod/simple-macros.mod.xsl"/>
    <xsl:include href="../../xslmod/yatc-sanitize-filenames.mod.xsl"/>

</xsl:stylesheet>
