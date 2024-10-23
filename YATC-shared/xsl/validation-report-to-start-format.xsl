<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:svrl="http://purl.oclc.org/dsdl/svrl" xmlns:xvrl="http://www.xproc.org/ns/xvrl" xmlns:local="#local.otv_pry_g1c" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This turns a directory with YATC validation reports into something resembling the 
       original "start" format as produced by the Ant scripts. It does adds some extra information,
       what explicitly staying is <pass> and <fail> elements.
       
       You specify the validation reports by passing the directory and a filename pattern as parameter.
       
       Where the original only worked for Schematron reports, this one works for Schema validation results also.
       
       The original stylesheet (which no longer works because we don't produce the same kind of input) can be found here: 
       YATC-shared/xsl/util/validate-svrl-output.xsl
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

    <xsl:output method="xml" indent="true" encoding="UTF-8"/>

    <xsl:mode on-no-match="fail"/>

    <xsl:include href="../xslmod/general.mod.xsl"/>
    <xsl:include href="../xslmod/href.mod.xsl"/>


    <!-- ======================================================================= -->
    <!-- PARAMETERS -->

    <xsl:param name="hrefReportDir" as="xs:string" required="true">
        <!-- The directory containing the reports -->
    </xsl:param>

    <xsl:param name="filenamePattern" as="xs:string" required="true">
        <!-- The pattern for selecting the right files in $hrefReportDir. For instance 'schematron-report-*.xml' -->
    </xsl:param>

    <xsl:param name="acceptEmpty" as="xs:boolean" required="false" select="false()">
        <!-- Whether to accept an empty input fileset -->
    </xsl:param>

    <!-- ================================================================== -->

    <xsl:template match="/">

        <xsl:variable name="reportsToProcess" as="document-node()*" select="yatcs:get-document-collection($hrefReportDir, $filenamePattern, $acceptEmpty)"/>
        <xsl:variable name="sumDetections" as="xs:integer" select="sum($reportsToProcess/*/@detection-count ! xs:integer(.))"/>
        <xsl:variable name="sumDocuments" as="xs:integer" select="sum(for $d in $reportsToProcess return count($d/*/validation))"/>
        <start timestamp="{current-dateTime()}" detection-count="{$sumDetections}" document-count="{$sumDocuments}">

            <!-- Each original report causes a <validation> element: -->
            <xsl:for-each select="$reportsToProcess">
                <validation href-original-report="{base-uri(/)}">
                    <xsl:copy-of select="/*/@*"/>
                    <xsl:attribute name="document-count" select="count(/*/validation)"/>

                    <xsl:for-each select="/*/validation">
                        <xsl:variable name="detectionCount" as="xs:integer" select="xs:integer(@detection-count)"/>
                        <file name="{@href}" detection-count="{$detectionCount}">
                            <xsl:choose>
                                <xsl:when test="$detectionCount eq 0">
                                    <pass/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <fail>
                            <xsl:copy-of select=".//(svrl:failed-assert | svrl:successful-report)[not(@role = ('info', 'information'))]" copy-namespaces="false"/>
                            <xsl:copy-of select=".//(xvrl:detection)[not(@role = ('info', 'information'))]" copy-namespaces="false"/>
                        </fail>
                                </xsl:otherwise>
                            </xsl:choose>
                        </file>
                    </xsl:for-each>
                </validation>
            </xsl:for-each>

        </start>
    </xsl:template>

</xsl:stylesheet>
