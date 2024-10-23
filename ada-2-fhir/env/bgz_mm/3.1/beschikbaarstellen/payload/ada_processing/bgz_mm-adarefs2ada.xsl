<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="#local.202310051115513822550200">
    <!-- ================================================================== -->
    <!--
        This stylesheets creates input ADA documents for creating the FHIR.
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

    <xsl:output method="xml" indent="yes"/>
    <xsl:output name="ada-xml" method="xml" indent="yes" omit-xml-declaration="yes"/>

    <xsl:strip-space elements="*"/>

    <xsl:include href="../../../../../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../../../../../YATC-shared/xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <xsl:param name="outputDirectory" as="xs:string" required="yes">
        <!-- URI of the directory where to process the results -->
    </xsl:param>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="adaInputDocument" as="document-node()" select="."/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Template to start conversion. Input are the ada instances of transaction 'beschikbaarstellen BgZ'. 
            Outputs ada instance bundle in the given output directory  -->

        <xsl:for-each-group select="$adaInputDocument//*[ends-with(local-name(), '_registration')][@title/starts-with(., 'mm-bgz')]/*" group-by="./hcimroot/subject/patient/patient/@value">
            <xsl:variable name="patientIdentifier" select="current-grouping-key()"/>
            <xsl:variable name="patientName">
                <xsl:choose>
                    <xsl:when test="$patientIdentifier = 999901382">
                        <xsl:value-of select="'patA'"/>
                    </xsl:when>
                    <xsl:when test="$patientIdentifier = 999901394">
                        <xsl:value-of select="'patB'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="'patX'"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="resolvedPatient">
                <xsl:apply-templates select="($adaInputDocument//*[ends-with(local-name(), '_registration')]/patient[patient_identification_number[@value = $patientIdentifier][@root = '2.16.840.1.113883.2.4.6.3']])[1]" mode="copy-for-resolve"/>
            </xsl:variable>
            <xsl:for-each-group select="current-group()" group-by="local-name()">
                <xsl:variable name="currentGroupSorted">
                    <xsl:perform-sort select="current-group()">
                        <xsl:sort data-type="text" select="./hcimroot/identification_number/@value"/>
                    </xsl:perform-sort>
                </xsl:variable>

                <!-- We now have groups of zibs per patient, which we want to resolve and put in an 'ada bundle' (which is no official thing) -->
                <xsl:variable name="resolved-ada-input" as="node()*">
                    <xsl:apply-templates select="$currentGroupSorted" mode="copy-for-resolve">
                        <xsl:with-param name="resolvedPatient" select="$resolvedPatient" tunnel="yes"/>
                    </xsl:apply-templates>
                </xsl:variable>

                <xsl:variable name="resultFilename" as="xs:string" select="concat('medmij-bgz-test-', $patientName, '-', current-grouping-key(), '.xml')"/>
                <xsl:result-document href="{yatcs:href-concat(($outputDirectory, $resultFilename))}" format="ada-xml">
                    <bundle>
                        <xsl:copy-of select="$resolved-ada-input"/>
                    </bundle>
                </xsl:result-document>
            </xsl:for-each-group>
        </xsl:for-each-group>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="hcimroot" mode="copy-for-resolve">
        <xsl:variable name="id" select="identification_number/@value"/>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="#current"/>
            <xsl:if test="$adaInputDocument//planned_care_activity/*/*/@value = $id">
                <planned_care_activity_referenced value="true"/>
            </xsl:if>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="identification_number/@value" mode="copy-for-resolve">
        <xsl:attribute name="value">
            <xsl:choose>
                <xsl:when test="starts-with(., 'mm-bgz-')">
                    <xsl:value-of select="substring-after(., 'mm-bgz-')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="patient[@value and @root = '2.16.840.1.113883.2.4.6.3'][not(*)]" mode="copy-for-resolve" priority="2">
        <xsl:param name="resolvedPatient" tunnel="yes"/>
        <xsl:copy-of select="$resolvedPatient"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*[ends-with(local-name(), '_registration')]/patient/hcimroot" mode="copy-for-resolve" priority="2"/>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*[@value and @root = '2.16.840.1.113883.2.4.3.11.999.7'][not(*)][not(contains(local-name(), 'identification'))]" mode="copy-for-resolve">
        <xsl:variable name="resolved" select="($adaInputDocument//*[hcimroot/identification_number[lower-case(@value) = lower-case(current()/@value)][@root = current()/@root]])[1]"/>
        <xsl:if test="count($resolved) lt 1">
            <xsl:message terminate="no" select="concat('WARN   : Could not resolve ''',@value,''' in ', string-join(for $el in ancestor-or-self::* return if ($el[@id]) then concat(local-name($el), '[@id=''', $el/@id, ''']') else local-name($el), '/'))"/>
            <xsl:copy-of select="."/>
        </xsl:if>
        <xsl:apply-templates select="$resolved" mode="#current"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="patient[@conceptId='2.16.840.1.113883.2.4.3.11.60.40.1.0.1.1']" mode="copy-for-resolve">
        <xsl:variable name="patientIdentifier" select="patient_identification_number/@value"/>
        <xsl:variable name="maritalStatus" select="($adaInputDocument//marital_status_rc[hcimroot/subject/patient/patient/@value = $patientIdentifier])[1]/marital_status"/>
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" mode="#current"/>
            <xsl:copy-of select="$maritalStatus"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="copy-for-resolve">
        <!-- Default copy template -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="#current"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
