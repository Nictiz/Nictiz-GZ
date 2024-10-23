<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:local="#local.ywv_grm_hwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
        This stylesheet contains generic code for all adarefs2ada builds.
       
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

    <!-- ======================================================================= -->

    <xsl:template match="scenario-nr/@value" mode="copy-for-resolve">
        <!-- Remove leading and trailing spaces in scenario-nr -->
        <xsl:attribute name="value">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:attribute>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="copy-for-resolve copy-for-update-sturen">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="#current"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="copy-for-override">
        <!-- Template for overriding element in resolved stuff -->
        <xsl:param name="resolvedAdaPatient" as="element(patient)?">
            <!-- The resolved ada patient for when handling more than one patient. Optional when handling one patient. -->
        </xsl:param>
        <xsl:param name="overrideElement" as="element()*">
            <!-- The element that contains the overriding parts, if any -->
        </xsl:param>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="copy-for-override"/>
            <xsl:for-each select="node()">
                <xsl:apply-templates select="." mode="copy-for-override">
                    <xsl:with-param name="resolvedAdaPatient" select="$resolvedAdaPatient"/>
                    <xsl:with-param name="overrideElement" as="element()*">
                        <xsl:choose>
                            <xsl:when test="$overrideElement[local-name() = local-name(current())]">
                                <xsl:sequence select="$overrideElement[local-name() = local-name(current())]"/>
                            </xsl:when>
                            <xsl:when test="$overrideElement/*[local-name() = local-name(current())]">
                                <xsl:sequence select="$overrideElement/*[local-name() = local-name(current())]"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:sequence select="$overrideElement"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:with-param>
                </xsl:apply-templates>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="narf:get-override-value" as="xs:string?">
        <!-- Get the override value based on the parameters -->
        <xsl:param name="in" as="element()">
            <!-- The bouwsteen (such as medicatieafspraak / verstrekkingsverzoek) of which an element needs overriding. Must have child element 'identificatie' -->
        </xsl:param>
        <xsl:param name="id" as="xs:string?">
            <!-- The name of the id element in the references transaction -->
        </xsl:param>
        <xsl:param name="field" as="xs:string?">
            <!-- The name of the xml element in the references transaction which holds the new value to be used for override -->
        </xsl:param>

        <xsl:value-of select="narf:get-override-bouwsteen($in, $id)/*[local-name() = $field]/@value"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="narf:get-override-bouwsteen" as="element()?">
        <!-- Get the override bouwsteen based on the parameters -->
        <xsl:param name="in" as="element()">
            <!-- The bouwsteen (such as medicatieafspraak / verstrekkingsverzoek / labuitslag) of which an element needs overriding. Must have child element that contains string 'identificatie'. -->
        </xsl:param>
        <xsl:param name="id" as="xs:string?">
            <!-- The name of the id element in the references transaction -->
        </xsl:param>

        <xsl:sequence select="($ada-input/adaxml/data/*//*[local-name() = $in/local-name()][*[local-name() = $id]/@value = $in/*[contains(local-name(), 'identificatie')]/@value])[1]"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="narf:get-override-bouwsteen-basedonref" as="element()?">
        <!-- Get the override bouwsteen based on the parameters -->
        <xsl:param name="in" as="element()">
            <!-- The bouwsteen (such as medicatieafspraak / verstrekkingsverzoek) of which an element needs overriding. Must have a (reference) id attribute. -->
        </xsl:param>
        <xsl:param name="id" as="xs:string?">
            <!-- The name of the reference-id element in the references transaction -->
        </xsl:param>

        <xsl:sequence select="($ada-input/adaxml/data/*//*[*[local-name() = $id]/@value = $in/@id])[1]"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="narf:get-original-time" as="xs:string?">
        <!-- Adds the time of the repo date element to the override date element, if the override date(time) does not have a time -->
        <xsl:param name="newDate" as="xs:string?">
            <!-- The override date string -->
        </xsl:param>
        <xsl:param name="repoDate" as="xs:string?">
            <!-- The repo original date string -->
        </xsl:param>

        <!-- the code below takes the original time if no override time has been given -->
        <xsl:variable name="newHasTime" as="xs:boolean" select="matches($newDate, '^T([+\-]\d+(\.\d+)?[YMD])?\{(.*)\}')"/>
        <xsl:variable name="repoHasTime" as="xs:boolean" select="matches($repoDate, '^T([+\-]\d+(\.\d+)?[YMD])?\{(.*)\}')"/>

        <xsl:if test="string-length($newDate) gt 0">
            <xsl:choose>
                <xsl:when test="not($newHasTime) and $repoHasTime">
                    <xsl:variable name="repoTime" select="replace($repoDate, 'T([+\-]\d+(\.\d+)?[YMD])?(\{(.*)\})', '$3')"/>
                    <xsl:value-of select="concat($newDate, $repoTime)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$newDate"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>

</xsl:stylesheet>
