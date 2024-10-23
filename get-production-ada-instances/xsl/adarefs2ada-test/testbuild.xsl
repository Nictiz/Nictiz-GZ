<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.wzc_ksl_hwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This is a stylesheet created to test the adarefs2ada build process. It reports the parameters passed
       in a document in the output directory with the same name as the input document.
       
       It was used in a test build like this (in lab/3.0.0):
       
       <build>
            <stylesheet href="../xsl/adarefs2ada-test/testbuild.xsl"/>
            <input-documents directory="laboratoriumresultaten_met_references/ada_instance">
                <include pattern="\.xml$"/>
            </input-documents>
            <output directory="test"/>
            <parameter name="p1" value="XYZ" href="should-not-be-used-because-value-has-precedence"/>
            <parameter name="p2" directory="laboratoriumresultaten_met_references/ada_instance"/>
            <parameter name="p3" href="../xsl/test/testbuild.xsl"/>
        </build>
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

    <xsl:mode on-no-match="fail"/>

    <xsl:include href="../../../../YATC-shared/xslmod/href.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:param name="baseDirectory" as="xs:string" required="true"/>
    <xsl:param name="outputDirectory" as="xs:string" required="true"/>
    <xsl:param name="application" as="xs:string" required="true"/>
    <xsl:param name="version" as="xs:string" required="true"/>
    <xsl:param name="buildName" as="xs:string" required="true"/>

    <xsl:param name="p1" as="xs:string" required="false" select="'(p1-not-specified)'"/>
    <xsl:param name="p2" as="xs:string" required="false" select="'(p2-not-specified)'"/>
    <xsl:param name="p3" as="xs:string" required="false" select="'(p3-not-specified)'"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        
        <!-- Build stylesheets write their result to disk directly: -->
        <xsl:variable name="hrefInput" as="xs:string" select="base-uri(/)"/>
        <xsl:variable name="hrefOutput" as="xs:string" select="yatcs:href-concat(($outputDirectory, yatcs:href-name($hrefInput)))"/>
        <xsl:result-document href="{$hrefOutput}">
            <adarefs2ada-test-build-result timestamp="{current-dateTime()}">
                <build>{$buildName}</build>
                <input>{$hrefInput}</input>
                <output>{$hrefOutput}</output>
                <base-directory>{$baseDirectory}</base-directory>
                <output-directory>{$outputDirectory}</output-directory>
                <application>{$application}</application>
                <version>{$version}</version>
                <p1>{$p1}</p1>
                <p2>{$p2}</p2>
                <p3>{$p3}</p3>
            </adarefs2ada-test-build-result>
        </xsl:result-document>

        <!-- We output something but this shouldn't become visible: -->
        <adarefs2ada-testbuild-output/>

    </xsl:template>

</xsl:stylesheet>
