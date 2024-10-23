<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="urn:fhir:stu3:functions">
    <!-- ================================================================== -->
    <!--
        TBD
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

    <!-- ================================================================== -->

    <xsl:template match="f:Practitioner" mode="nl-core-practitioner-2.0">
        <!-- Template to convert f:Practitioner to ADA zorgverlener -->
        <xsl:param name="organizationReference">
            <!-- Optional reference to the Organization the Practitioner belongs to e.g. the ADA zorgaanbieder -->
        </xsl:param>
        <xsl:param name="specialtyReference">
            <!-- Optional reference to the PractitionerRole the Practitioner belongs to e.g. the ADA specialisme -->
        </xsl:param>
        <zorgverlener>
            <!-- zorgverlener_identificatienummer -->
            <xsl:apply-templates select="f:identifier" mode="#current"/>
            <!-- naamgegevens -->
            <xsl:apply-templates select="f:name" mode="#current"/>
            <!--telecom
            address not present in MP9.0.7-->
            <!-- specialisme -->
            <xsl:if test="not($specialtyReference='')">
                <xsl:apply-templates select="ancestor::f:Bundle/f:entry[f:fullUrl/@value=$specialtyReference]/f:resource/f:PractitionerRole" mode="nl-core-practitionerrole-2.0"/>
            </xsl:if>
            <!-- zorgaanbieder -->
            <xsl:if test="not($organizationReference='')">
                <xsl:apply-templates select="ancestor::f:Bundle/f:entry[f:fullUrl/@value=$organizationReference]/f:resource/f:Organization" mode="nl-core-organization-2.0"/>
            </xsl:if>
        </zorgverlener>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:identifier" mode="nl-core-practitioner-2.0">
        <!-- Template to convert f:identifier to zorgverlener_identificatienummer -->
        <xsl:param name="practitionerIdUnderscore" select="false()" tunnel="yes">
            <!-- Optional boolean to create ADA element zorgverlener_identificatie_nummer -->
        </xsl:param>
        <xsl:variable name="adaElementName">
            <xsl:choose>
                <xsl:when test="$practitionerIdUnderscore=true()">zorgverlener_identificatie_nummer</xsl:when>
                <xsl:otherwise>zorgverlener_identificatienummer</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:call-template name="Identifier-to-identificatie">
            <xsl:with-param name="adaElementName" select="$adaElementName"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:name" mode="nl-core-practitioner-2.0">
        <!-- Template to convert f:name to naamgegevens -->
        <xsl:param name="practitionerNaamgegevensElement" select="'naamgegevens'" tunnel="yes">
            <!-- Optional string to create ADA element with alternative name -->
        </xsl:param>
        <xsl:element name="{$practitionerNaamgegevensElement}">
            <xsl:apply-templates select="." mode="nl-core-humanname-2.0"/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
