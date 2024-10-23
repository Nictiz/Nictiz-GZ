<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.mrc_z2b_pzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Creates a flatten master document from the prepared input 
       (in ../distribute.mod.xpl, local:create-flatten-master-document)
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

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>

    <xsl:include href="../../xslmod/flatten-types.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:param name="distributionTimestamp" as="xs:dateTime" required="yes"/>
    <xsl:param name="distributionName" as="xs:string" required="yes"/>
    <xsl:param name="distributionVersion" as="xs:string?" required="yes"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/yatci:flatten-stylesheets">
        <xsl:call-template name="create-flatten-master-documents">
            <xsl:with-param name="type" select="$flattenTypeStylesheet"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/yatci:flatten-schemas">
        <xsl:call-template name="create-flatten-master-documents">
            <xsl:with-param name="type" select="$flattenTypeSchema"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/yatci:flatten-schematrons">
        <xsl:call-template name="create-flatten-master-documents">
            <xsl:with-param name="type" select="$flattenTypeSchematron"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="create-flatten-master-documents">
        <xsl:param name="root" as="element()" required="false" select="."/>
        <xsl:param name="type" as="xs:string" required="yes">
            <!-- The flattening type, see the $flattenType* global variables. -->
        </xsl:param>

        <xsl:for-each select="$root">
            <flatten-master type="{$type}" target-directory="{@_target-directory}" href-include="{@_href-include}" clear-target="{xs:boolean((@clear-target, true())[1])}" add-additional-info="{string(@add-addional-info)}" distribution-name="{$distributionName}" distribution-version="{$distributionVersion}" distribution-timestamp="{$distributionTimestamp}">
                <xsl:apply-templates/>
            </flatten-master>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatci:master-document">
        <xsl:call-template name="add-master-document">
            <xsl:with-param name="href-source" select="@_href-source"/>
            <xsl:with-param name="href-target" select="@_href-target"/>
            <xsl:with-param name="must-exist" select="xs:boolean((@must-exist, true())[1])"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatci:master-document-directory">
        <xsl:variable name="allowEmpty" as="xs:boolean" select="xs:boolean((@allow-empty, false())[1])"/>
        <xsl:variable name="files" as="element(file)*" select="directory-list/file"/>
        <xsl:if test="not($allowEmpty) and empty($files)">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="('Empty directory not allowed: ', yatcs:q(@_source-directory))"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:for-each select="$files">
            <xsl:call-template name="add-master-document">
                <xsl:with-param name="href-source" select="@href-source"/>
                <xsl:with-param name="href-target" select="@href-target"/>
                <xsl:with-param name="must-exist" select="not($allowEmpty)"/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template name="add-master-document">
        <xsl:param name="href-source" as="xs:string" required="true"/>
        <xsl:param name="href-target" as="xs:string" required="true"/>
        <xsl:param name="must-exist" as="xs:boolean" required="true"/>

        <xsl:choose>
            <xsl:when test="doc-available($href-source)">
                <master-document href-source="{$href-source}" href-target="{$href-target}"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="$must-exist">
                    <xsl:call-template name="yatcs:raise-error">
                        <xsl:with-param name="msg-parts" select="('Required master document for flattening not found (or not well-formed): ', yatcs:q($href-source))"/>
                    </xsl:call-template>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="comment() | processing-instruction() | text()">
        <!-- Discard… -->
    </xsl:template>

</xsl:stylesheet>
