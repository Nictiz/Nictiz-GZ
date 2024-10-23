<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.fvb_v3m_hwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This is a test stylesheet for use in adarefs2ada builds. It does nothing useful, except adding some 
       insightful comments (?) to the root element...
       
       Input is the ADA document to transform. 
       It takes a working set of ADA documents (passed in as parameter $adaWorkingSet).
       
       The output is a sequence of secondary documents (using <xsl:result-document>). The actual stylesheet output can be discarded.
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

    <xsl:strip-space elements="*"/>

    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/href.mod.xsl"/>

    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:include href="../../xslmod/adarefs2ada-build-standard-parameters.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>

    <xsl:variable name="inputFilename" as="xs:string" select="yatcs:href-name-noext(base-uri($ada-input))"/>

    <!-- ======================================================================= -->

    <xsl:template match="/*">

        <xsl:variable name="outputFilename" as="xs:string" select="$inputFilename || '-PROCESSED.xml'"/>
        <xsl:result-document href="{yatcs:href-concat(($outputDirectory, $outputFilename))}">
            <xsl:copy>
                <xsl:copy-of select="@*"/>
                <xsl:comment> == Processed by {static-base-uri()} on {current-dateTime()} == </xsl:comment>
                <xsl:comment> == Input document: {base-uri($ada-input)} == </xsl:comment>
                <xsl:comment> == ADA Working set (count: {count($inputFulladaFiles)}): == </xsl:comment>
                <xsl:for-each select="$inputFulladaFiles">
                    <xsl:comment> == {base-uri(.)} == </xsl:comment>
                </xsl:for-each>
                <xsl:copy-of select="node()"/>
            </xsl:copy>
        </xsl:result-document>

        <!-- This actual output of the stylesheet is discarded, so it doesn't matter -->
        <throwaway/>
        
    </xsl:template>

</xsl:stylesheet>
