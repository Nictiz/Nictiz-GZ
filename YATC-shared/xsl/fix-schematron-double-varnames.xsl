<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.znr_gdd_b1c" exclude-result-prefixes="#all" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns="http://purl.oclc.org/dsdl/schematron" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet takes a Schematron schema as input and fixes all repeated variable names.
       
       Repeated variable names (underneath the same parent element) are not allowed, according to strict Schematron rules.
       However, some of the original Nictiz code produces Schematrons that have this problems. This was, 
       before the SchXslt times, never detected because oXygen is relaxed about it.
       
       SchXslt is more strict and produces an error in this situation, so we had to fix it. We could have done this
       by tuning the original XSLT, but turned out to be quite a difficult and error-prone job. Therefore, the problem
       was fixed by tuning the generated Schematron schemas. Any repeated variable names are changed. 
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

    <xsl:include href="../xslmod/general.mod.xsl"/>

    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:mode name="mode-replace-varname" on-no-match="shallow-copy"/>

    <!-- ================================================================== -->

    <xsl:template match="sch:*[local:element-has-repeated-varnames(.)]" mode="#all">
        <!-- Handle an element with contained multiple variable names. -->
        
        <xsl:variable name="repeated-varnames" as="xs:string*" select="local:repeated-varnames(.)"/>
        <xsl:copy>
            <xsl:apply-templates select="@*"/>

            <!-- Split the children of the element in groups that start with a repeated varname: -->
            <xsl:for-each-group select="*" group-starting-with="sch:let[@name = $repeated-varnames]">
                <xsl:variable name="first-element-of-group" as="element()" select="current-group()[1]"/>
                <xsl:choose>
                    <xsl:when test="exists($first-element-of-group/self::sch:let[@name = $repeated-varnames])">
                        <!-- We have a group that starts with a variable declaration that uses a repeated varname.
                             Prepare the replace: -->
                        <xsl:variable name="repeated-varname" as="xs:string" select="string($first-element-of-group/@name)"/>
                        <xsl:variable name="varname-index" as="xs:integer" select="count(preceding-sibling::sch:let[@name eq $repeated-varname])"/>
                        <xsl:choose>
                            <xsl:when test="$varname-index eq 0">
                                <!-- This is the first occurrence of a repeated variable name, just leave it as it is: -->
                                <xsl:apply-templates select="current-group()"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- This is the second or later occurrence of this variable name, change it: -->
                                <xsl:variable name="new-varname" as="xs:string" select="$repeated-varname || '-' || $varname-index"/>
                                <xsl:variable name="varname-regexp" as="xs:string" select="yatcs:str2regexp($repeated-varname, false())"/>
                                <xsl:comment> == Repeated variable name: {$repeated-varname} -&gt; {$new-varname} == </xsl:comment>
                                <xsl:apply-templates select="current-group()" mode="mode-replace-varname">
                                    <xsl:with-param name="repeated-varname" select="$repeated-varname" tunnel="true"/>
                                    <xsl:with-param name="varname-regexp" select="$varname-regexp" tunnel="true"/>
                                    <xsl:with-param name="new-varname" select="$new-varname" tunnel="true"/>
                                </xsl:apply-templates>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- This is an element group that does *not* start with a repeated varname. So we simply carry on... -->
                        <xsl:apply-templates select="current-group()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each-group>

        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="sch:let" mode="mode-replace-varname">
        <!-- When replacing, we must change the declaration of the variable and provide the appropriate new varname: -->
        <xsl:param name="repeated-varname" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="new-varname" as="xs:string" required="true" tunnel="true"/>

        <xsl:choose>
            <xsl:when test="@name eq $repeated-varname">
                <xsl:copy>
                    <xsl:attribute name="name" select="$new-varname"/>
                    <xsl:copy-of select="@* except @name"/>
                    <xsl:copy-of select="node()"/>
                </xsl:copy>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@*[contains(., '$')]" mode="mode-replace-varname">
        <!-- Check any attribute for references to the renamed variable. -->
        <xsl:param name="varname-regexp" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="new-varname" as="xs:string" required="true" tunnel="true"/>

        <xsl:variable name="full-regexp" as="xs:string" select="'\$' || $varname-regexp || '(\C|$)'"/>
        <xsl:variable name="replacment-parts" as="xs:string*">
            <xsl:analyze-string select="string(.)" regex="{$full-regexp}">
                <xsl:matching-substring>
                    <xsl:sequence select="'$' || $new-varname || regex-group(1)"/>
                </xsl:matching-substring>
                <xsl:non-matching-substring>
                    <xsl:sequence select="."/>
                </xsl:non-matching-substring>
            </xsl:analyze-string>
        </xsl:variable>
        <xsl:attribute name="{node-name(.)}" select="string-join($replacment-parts)"/>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:function name="local:element-has-repeated-varnames" as="xs:boolean">
        <xsl:param name="elm" as="element()"/>

        <xsl:variable name="varnames" as="xs:string*" select="$elm/sch:let/@name/string()"/>
        <xsl:sequence select="count($varnames) gt count(distinct-values($varnames))"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:repeated-varnames" as="xs:string*">
        <!-- Returns a sequence of all the varnames with multiple occurrences, that are a direct child of $elm. -->
        <xsl:param name="elm" as="element()"/>

        <xsl:variable name="all-varnames" as="xs:string*" select="$elm/sch:let/@name/string()"/>
        <xsl:variable name="distinct-varnames" as="xs:string*" select="distinct-values($all-varnames)"/>
        <xsl:for-each select="$distinct-varnames">
            <xsl:variable name="varname" as="xs:string" select="."/>
            <xsl:if test="count($all-varnames[. eq $varname]) gt 1">
                <xsl:sequence select="$varname"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:function>

</xsl:stylesheet>
