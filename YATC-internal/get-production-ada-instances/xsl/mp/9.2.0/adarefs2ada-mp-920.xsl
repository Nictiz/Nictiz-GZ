<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map">
    <xsl:import href="../adarefs2ada-mp.xsl"/>
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp/9.2.0 adarefs2ada builds.
        
        Currently none/empty.
        
        Meant to be imported from a higher/more specific stylesheet.
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
    <!-- SETUP: -->

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:strip-space elements="*"/>

    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>


</xsl:stylesheet>