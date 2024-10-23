<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map">
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp/9.3.0 adarefs2ada builds.
        
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

    <xsl:import href="../adarefs2ada-mp.xsl"/>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="(lichaamslengte | lichaamsgewicht)/identificatienummer" mode="copy-for-override">
        <!--  update element name identificatie from refs to full  -->
        <identificatie>
            <xsl:apply-templates select="@*" mode="copy-for-override"/>
        </identificatie>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="zorgverlener[*]" mode="copy-for-override">
        <!--  Add telefoonnummer (in medicatievoorschrift)  -->
        
        <xsl:copy>
            <xsl:apply-templates select="@*" mode="copy-for-override"/>
            
            <!-- telefoonnummer must be added in contactgegevens, let's copy any element before contactgevens -->
            <xsl:apply-templates select="node()[not(local-name() = ('contactgegevens', 'zorgaanbieder'))]" mode="copy-for-override"/>
            
            <xsl:variable name="adaRefsBouwsteen" as="element()?">
                <xsl:sequence select="($ada-input/adaxml/data/*//voorschrijver)[1]"/>
            </xsl:variable>
            
            <!-- contactgegevens may exist in the repo, if so we add the new telephonenumber from the refs transaction, otherwise we create a whole new contactgegevens -->
            <xsl:choose>
                <xsl:when test="contactgegevens//(@value | @code | @nullFlavor)">
                    <xsl:for-each select="contactgegevens">
                        <xsl:copy>
                            <xsl:copy-of select="@*"/>
                            <!-- existing telefoonnummers -->
                            <xsl:copy-of select="telefoonnummers"/>
                            <!-- add the new telefoonnummers from the ref transaction -->
                            <xsl:for-each select="$adaRefsBouwsteen/telefoonnummer_voorschrijver/@value">
                                <telefoonnummers conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.160">
                                    <telefoonnummer value="{.}" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.161"/>
                                    <!-- only work telephone specified for MP transaction, so default -->
                                    <nummer_soort code="WP" codeSystem="2.16.840.1.113883.5.1119" codeSystemName="Address Use" displayName="Zakelijk telefoonnummer" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.163"/>
                                </telefoonnummers>
                            </xsl:for-each>
                            <!-- existing email_adressen -->
                            <xsl:copy-of select="email_adressen"/>
                        </xsl:copy>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <!-- add the new telefoonnummers from the ref transaction -->
                    <xsl:for-each select="$adaRefsBouwsteen/telefoonnummer_voorschrijver/@value">
                        <contactgegevens conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.159">
                            <telefoonnummers conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.160">
                                <telefoonnummer value="{.}" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.161"/>
                                <!-- only work telephone specified for MP transaction, so default -->
                                <nummer_soort code="WP" codeSystem="2.16.840.1.113883.5.1119" codeSystemName="Address Use" displayName="Zakelijk telefoonnummer" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.163"/>
                            </telefoonnummers>
                        </contactgegevens>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>
            <!-- zorgaanbieder is the last child that we have not copied yet, so lets copy that one as the last one -->
            <xsl:apply-templates select="zorgaanbieder" mode="copy-for-override"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
