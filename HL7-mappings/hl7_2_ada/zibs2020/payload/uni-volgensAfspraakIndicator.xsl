<?xml version="1.0" encoding="UTF-8"?>
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
<xsl:stylesheet exclude-result-prefixes="#all" xmlns:hl7="urn:hl7-org:v3" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:local="urn:fhir:stu3:functions" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:nf="http://www.nictiz.nl/functions" xmlns:uuid="http://www.uuid.org" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xd:doc>
        <xd:desc>Helper template for the volgens_afspraak_indicator</xd:desc>
        <xd:param name="in">The hl7 element which has the relations in entryRelationships. Defaults to context.</xd:param>
    </xd:doc>
    <xsl:template name="uni-volgensAfspraakIndicator">
        <xsl:param name="in" select="."/>

        <xsl:for-each select="$in">
            <xsl:for-each select="hl7:entryRelationship/hl7:observation[hl7:code[@code = '8'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2'] or hl7:code[@code = '112221000146107'][@codeSystem = $oidSNOMEDCT]]/hl7:value">
                <xsl:call-template name="handleBL">
                    <xsl:with-param name="elemName">volgens_afspraak_indicator</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
