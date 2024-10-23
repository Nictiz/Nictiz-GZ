<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.a3w_5rz_21c" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" xmlns:yatcs-iad="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
      TBD
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

    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:variable name="baseHrefTarget" as="xs:string" select="/*/@href-target"/>

    <!-- ======================================================================= -->

    <xsl:template match="/*">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:for-each-group select="yatcs-iad:document" group-by="@href">
                <xsl:for-each select="current-group()[1]">
                    <xsl:copy>
                        <xsl:apply-templates select="@*"/>
                        <xsl:attribute name="href-target" select="yatcs:href-concat(($baseHrefTarget, @href-rel)) => yatcs:href-canonical()"/>
                        <xsl:apply-templates/>
                    </xsl:copy>
                </xsl:for-each>
            </xsl:for-each-group>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
