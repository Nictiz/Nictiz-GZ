<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032108485617924730100">
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp/9.3.0 adarefs2ada builds.
        
        Input is the ADA document to transform. 
        It then takes a working set of ADA documents (passed in as parameter $adaWorkingSet) and transforms these, using 
        information from the input document.
        
        The output is a sequence of secondary documents (using <xsl:result-document>). The actual stylesheet output can be discarded.
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
    
    <!-- WATCH OUT: References a stylesheet in mp/9.2.0, which does the actual conversions... -->
    <xsl:import href="../../9.2.0/afhandelen_medicatievoorschrift_met_references/mp920-av-adarefs2ada.xsl"/>
    
    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>
    
    <!-- ======================================================================= -->
    
    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>
    
    <xsl:param name="versionDir">9.3.0</xsl:param>
    <xsl:param name="transactionRef" as="xs:string">2.16.840.1.113883.2.4.3.11.60.20.77.4.407</xsl:param>
    <xsl:param name="transactionEffectiveDate">2022-06-30T00:00:00</xsl:param>

    <xsl:variable name="concat2id">av-</xsl:variable>

    <!-- Variable resolved-ada-input which containg medicatie_voorschrift type transaction (with full patient/ma/vv) 
    rather than medicatie_voorschrift2 type transaction (with only identifiers for patient/ma/vv-->
    <xsl:variable name="resolved-ada-input" as="element()">
        <xsl:apply-templates select="$ada-input" mode="copy-for-resolve"/>
    </xsl:variable>

</xsl:stylesheet>
