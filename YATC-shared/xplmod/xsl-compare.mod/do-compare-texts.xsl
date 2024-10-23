<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.oxz_g5k_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet implements the comparison of two text documents.
       
       Remark: The original files were written using an UTF-16 encoding. Reading a text file without specifying the
       encoding proved to be complicated. We had to write a function that tries different encodings. See below.
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

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:param name="href1" as="xs:string" required="true"/>
    <xsl:param name="href2" as="xs:string" required="true"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">

        <xsl:variable name="href1Canonical" as="xs:string" select="yatcs:href-canonical($href1)"/>
        <xsl:variable name="href2Canonical" as="xs:string" select="yatcs:href-canonical($href2)"/>
        
        <xsl:variable name="href1Contents" as="xs:string?" select="local:get-unparsed-text($href1Canonical)"/>
        <xsl:variable name="href2Contents" as="xs:string?" select="local:get-unparsed-text($href2Canonical)"/>

        <compare-texts href1="{$href1Canonical}" href2="{$href2Canonical}">

            <xsl:if test="empty($href1Contents)">
                <xsl:call-template name="local:create-message">
                    <xsl:with-param name="msg-parts" select="('Text document for compare not found or unreadable: ', yatcs:q($href1Canonical))"/>
                </xsl:call-template>
            </xsl:if>

            <xsl:if test="empty($href2Contents)">
                <xsl:call-template name="local:create-message">
                    <xsl:with-param name="msg-parts" select="('Text document for compare not found: ', yatcs:q($href2Canonical))"/>
                </xsl:call-template>
            </xsl:if>

            <xsl:if test="exists($href1Contents) and exists($href2Contents)">
                <xsl:if test="$href1Contents ne $href2Contents">
                    <xsl:call-template name="local:create-message">
                        <xsl:with-param name="msg-parts" select="'Text differences found'"/>
                    </xsl:call-template>
                </xsl:if>
            </xsl:if>

        </compare-texts>

    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:function name="local:get-unparsed-text" as="xs:string?">
        <!-- Tries to read the text file, trying some different encodings. If not found (or some other error) it returns (). -->
        <xsl:param name="href" as="xs:string"/>

        <xsl:variable name="contents" as="xs:string?">
            <xsl:try>
                <xsl:sequence select="unparsed-text($href)"/>
                <xsl:catch>
                    <xsl:sequence select="()"/>
                </xsl:catch>
            </xsl:try>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="exists($contents)">
                <xsl:sequence select="$contents"/>
            </xsl:when>
            <xsl:otherwise>
                <!-- We couldn't read the file using the default encoding. Try the utf-16 encoding explicitly: -->
                <xsl:try>
                    <xsl:sequence select="unparsed-text($href, 'utf-16')"/>
                    <xsl:catch>
                        <xsl:sequence select="()"/>
                    </xsl:catch>
                </xsl:try>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="local:create-message">
        <xsl:param name="msg-parts" as="item()+" required="true"/>

        <message>
            <xsl:value-of select="yatcs:items2str($msg-parts)"/>
        </message>
    </xsl:template>

</xsl:stylesheet>
