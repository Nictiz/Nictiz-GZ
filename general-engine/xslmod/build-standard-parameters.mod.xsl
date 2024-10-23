<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ert_dgc_lwb" exclude-result-prefixes="#all" expand-text="false">
    <!-- ======================================================================= -->
    <!-- 
       This module defines (and documents) the standard parameters passed to the stylesheet in a <build> step.
       If you don't use these parameters you don't have to include this file.
       
       To enable easier debugging (running this stylesheet outside of an XProc context), the parameters are 
       given a default value. You can always change this when running it stand-alone, if necessary.
       
       Remark: A build may pass in additional parameters to a specific stylesheet(using build/parameter elements), 
       but these are (of course) not defined here. These are the standard parameters only (the ones that are always passed).
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
    <!-- BASIC PARAMETERS: -->

    <xsl:param name="application" as="xs:string" required="false" select="'test-application'">
        <!-- The name of the application we're building for. For instance 'lab'. -->
    </xsl:param>

    <xsl:param name="version" as="xs:string" required="false" select="'test-version'">
        <!-- The version of the application we're building for. For instance '3.0.0'. -->
    </xsl:param>

    <xsl:param name="buildName" as="xs:string" required="false" select="'test-build'">
        <!-- The name of the build we're currently processing. For instance 'laboratoriumresultaten_met_references-1'. -->
    </xsl:param>

    <xsl:param name="baseDirectory" as="xs:string" required="false" select="resolve-uri('../tmp/base', static-base-uri())">
        <!-- The full absolute base target directory for the build. For instance 'file:///…/lab/3.0.0'. -->
    </xsl:param>
    
    <xsl:param name="sourceProjectName" as="xs:string" required="false" select="$application">
        <!-- The name of the project belonging to this application. For example: 'mp-mp907'. -->
    </xsl:param>

</xsl:stylesheet>
