<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.r21_lrx_3wb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
        This is the stylesheet with generic code for lab adarefs2ada builds.
        
        Meant to be imported from a higher/more specific stylesheet.
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

    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>

    <xsl:import href="../utils/adarefs_2_ada.xsl"/>

    <!-- ======================================================================= -->

    <xsl:template match="laboratorium_uitslag" mode="copy-for-override" priority="+1">
        <!-- Add kopie-indicator -->
        <xsl:param name="in" select="." as="element()?">
            <!-- The bouwsteen in which to add the kopie_indicator, edifact_referentienummer, and/or resultaat_status. Defaults to context. -->
        </xsl:param>
        <xsl:param name="resolvedAdaPatient" as="element(patient)?">
            <!-- The resolved ada patient for when handling more than one patient. Optional when handling one patient. -->
        </xsl:param>
        <xsl:param name="overrideElement" as="element(laboratorium_uitslag)">
            <!-- The element that contains the overriding parts, if any -->
        </xsl:param>
        <xsl:param name="overridePerformer" as="element(uitvoerder)?">
            <!-- The element that contains the overriding parts for uitvoerder, if any -->
        </xsl:param>

        <xsl:for-each select="$in">

            <xsl:copy>
                <xsl:apply-templates select="@*" mode="copy-for-override"/>
                <xsl:apply-templates select="laboratorium_uitslag_identificatie" mode="copy-for-override"/>

                <xsl:choose>
                    <xsl:when test="$overrideElement/edifact_referentienummer">
                        <xsl:element name="edifact_referentienummer">
                            <xsl:apply-templates select="$overrideElement/edifact_referentienummer/@*" mode="copy-for-override"/>
                            <xsl:attribute name="conceptId">2.16.840.1.113883.2.4.3.11.60.25.2.2.4409</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="edifact_referentienummer" mode="copy-for-override"/>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="$overrideElement/(kopie_indicator | kopie-indicator)">
                        <xsl:element name="kopie_indicator">
                            <xsl:apply-templates select="$overrideElement/(kopie_indicator | kopie-indicator)/(@* except @conceptId)" mode="copy-for-override"/>
                            <xsl:attribute name="conceptId">2.16.840.1.113883.2.4.3.11.60.25.2.2.4297</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="kopie_indicator" mode="copy-for-override"/>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:apply-templates select="laboratorium_test" mode="copy-for-override"/>

                <xsl:apply-templates select="monster" mode="copy-for-override"/>

                <xsl:apply-templates select="onderzoek" mode="copy-for-override"/>

                <xsl:choose>
                    <xsl:when test="$overrideElement/resultaat_status">
                        <xsl:element name="resultaat_status">
                            <xsl:apply-templates select="$overrideElement/resultaat_status/@*" mode="copy-for-override"/>
                            <xsl:attribute name="conceptId">2.16.840.1.113883.2.4.3.11.60.25.2.2.4287</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="resultaat_status" mode="copy-for-override"/>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:apply-templates select="toelichting" mode="copy-for-override"/>

                <xsl:choose>
                    <xsl:when test="$overridePerformer">
                        <xsl:apply-templates select="$overridePerformer" mode="copy-for-override"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="uitvoerder" mode="copy-for-override"/>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:apply-templates select="adaextension" mode="copy-for-override"/>

            </xsl:copy>

        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
