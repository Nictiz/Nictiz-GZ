<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ct4_k5q_5wb" xmlns:yatcs-td="https://nictiz.nl/ns/YATC-shared/text-document" xmlns="https://nictiz.nl/ns/YATC-shared/text-document" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet processes the <element> elements of the YATC text document format into straight 
       codeblocks and tables.
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

    <xsl:output method="xml" encoding="UTF-8"/>

    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:mode name="mode-coded-description" on-no-match="fail"/>

    <xsl:include href="../../xslmod/general.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL VARIABLES: -->

    <xsl:variable name="lf" as="xs:string" select="'&#10;'"/>

    <xsl:variable name="standard-coded-description-indent" as="xs:integer" select="2"/>

    <xsl:variable name="add-attribute-element-header" as="xs:boolean" select="false()"/>

    <!-- ======================================================================= -->

    <xsl:template match="yatcs-td:element">

        <!-- Coded description: -->
        <codeblock>
            <xsl:call-template name="create-coded-description"/>
        </codeblock>

        <!-- Attributes: -->
        <xsl:variable name="attributes" as="element(yatcs-td:attribute)*" select="yatcs-td:attributes/yatcs-td:attribute"/>
        <xsl:if test="exists($attributes)">
            <xsl:if test="$add-attribute-element-header">
                <para>Attributes of <elm>{@name}</elm>:</para>
            </xsl:if>
            <table>
                <header>
                    <entry>
                        <para>Attribute</para>
                    </entry>
                    <entry>
                        <para>#</para>
                    </entry>
                    <entry>
                        <para>Type</para>
                    </entry>
                    <entry>
                        <para>Description</para>
                    </entry>
                </header>
                <xsl:for-each select="$attributes">
                    <row>
                        <entry>
                            <para>
                                <code>{@name}</code>
                            </para>
                        </entry>
                        <entry>
                            <para>{if (yatcs:str2bln(@required, false())) then '1' else '?'}</para>
                        </entry>
                        <entry>
                            <para>
                                <code>{@type}</code>
                            </para>
                        </entry>
                        <entry>
                            <para>
                                <xsl:if test="normalize-space(@default) ne ''">
                                    <xsl:text>Default: </xsl:text>
                                    <code>{@default}</code>
                                    <br/>
                                </xsl:if>
                                <xsl:copy-of select="yatcs-td:para/node()"/>
                            </para>
                        </entry>
                    </row>
                </xsl:for-each>
            </table>
        </xsl:if>

        <!-- Elements: -->
        <xsl:variable name="childElements" as="element(yatcs-td:element)*" select="yatcs-td:children//yatcs-td:element"/>
        <xsl:if test="exists($childElements)">
            <xsl:if test="$add-attribute-element-header">
                <para>Child elements of <elm>{@name}</elm>:</para>
            </xsl:if>
            <table>
                <header>
                    <entry>
                        <para>Child element</para>
                    </entry>
                    <entry>
                        <para>#</para>
                    </entry>
                    <entry>
                        <para>Description</para>
                    </entry>
                </header>

                <xsl:for-each select="$childElements">
                    <row>
                        <entry>
                            <para>
                                <code>{@name}</code>
                            </para>
                        </entry>
                        <entry>
                            <xsl:choose>
                                <xsl:when test="exists(../self::yatcs-td:choice)">
                                    <!-- An occurrence indicator for an element in a choice does usually not make much sense... -->
                                    <para>&#160;</para>
                                </xsl:when>
                                <xsl:otherwise>
                                    <para>{(@occurrences, '1')[1]}</para>
                                </xsl:otherwise>  
                            </xsl:choose>
                            
                        </entry>
                        <entry>
                            <xsl:copy-of select="yatcs-td:para"/>
                        </entry>
                    </row>
                </xsl:for-each>
            </table>
        </xsl:if>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="create-coded-description">
        <xsl:param name="element-description" as="element(yatcs-td:element)" required="false" select="."/>

        <xsl:for-each select="$element-description">
            <xsl:variable name="element-name" as="xs:string" select="@name"/>
            <xsl:variable name="attributes" as="element(yatcs-td:attribute)*" select="yatcs-td:attributes/yatcs-td:attribute"/>
            <xsl:variable name="contents" as="element()*" select="yatcs-td:children/(yatcs-td:choice | yatcs-td:element)"/>
            <xsl:variable name="additional-text" as="xs:string" select="string(yatcs-td:additional-text)"/>
            <xsl:variable name="has-additional-text" as="xs:boolean" select="normalize-space($additional-text) ne ''"/>

            <xsl:text>&lt;</xsl:text>
            <xsl:value-of select="$element-name"/>

            <xsl:choose>
                <!-- Nothing, just an empty element: -->
                <xsl:when test="empty($attributes) and empty($contents) and not($has-additional-text)">
                    <xsl:text>/&gt;</xsl:text>
                </xsl:when>

                <!-- We have contents... -->
                <xsl:otherwise>

                    <!-- Attributes: -->
                    <xsl:choose>
                        <xsl:when test="empty($attributes)">
                            <xsl:text>&gt;</xsl:text>
                            <xsl:value-of select="$lf"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:variable name="indent" as="xs:integer" select="string-length($element-name) + 2"/>
                            <xsl:for-each select="$attributes">
                                <xsl:if test="position() ne 1">
                                    <xsl:value-of select="local:spaces($indent)"/>
                                </xsl:if>
                                <xsl:if test="position() eq 1">
                                    <xsl:text> </xsl:text>
                                </xsl:if>
                                <xsl:call-template name="output-code-description-attribute"/>
                                <xsl:if test="position() ne last()">
                                    <xsl:value-of select="$lf"/>
                                </xsl:if>
                            </xsl:for-each>
                            <xsl:value-of select="if (empty($contents) and not($has-additional-text)) then ' /&gt;' else concat(' &gt;', $lf)"/>
                        </xsl:otherwise>
                    </xsl:choose>

                    <!-- Elements and choices: -->
                    <xsl:apply-templates select="$contents" mode="mode-coded-description">
                        <xsl:with-param name="indent" select="$standard-coded-description-indent"/>
                    </xsl:apply-templates>

                    <!-- Additional text: -->
                    <xsl:if test="$has-additional-text">
                        <xsl:value-of select="local:spaces($standard-coded-description-indent) || '&lt;!-- ' || $additional-text || ' --&gt;' || $lf"/>
                    </xsl:if>

                    <!-- Closing tag: -->
                    <xsl:if test="exists($contents) or $has-additional-text">
                        <xsl:text>&lt;/</xsl:text>
                        <xsl:value-of select="$element-name"/>
                        <xsl:text>&gt;</xsl:text>
                    </xsl:if>

                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:element" mode="mode-coded-description">
        <xsl:param name="indent" as="xs:integer" required="yes"/>
        <xsl:param name="do-newline" as="xs:boolean" required="no" select="true()"/>

        <xsl:variable name="pseudo-attributes" as="xs:string*" select="yatcs:str2seq(@pseudo-attributes)"/>
        <xsl:variable name="comment" as="xs:string?" select="xs:string(@comment)"/>
        <xsl:variable name="attributes-indicator" as="xs:boolean" select="yatcs:str2bln(@attributes-indicator, false())"/>
        <xsl:variable name="is-closed" as="xs:boolean" select="yatcs:str2bln(@close, false())"/>

        <xsl:value-of select="local:spaces($indent)"/>
        <xsl:text>&lt;</xsl:text>
        <xsl:value-of select="@name"/>
        <xsl:for-each select="$pseudo-attributes">
            <xsl:value-of select="' ' || . || '=&quot;…&quot;'"/>
        </xsl:for-each>
        <xsl:if test="$attributes-indicator">
            <xsl:value-of select="' …'"/>
        </xsl:if>
        <xsl:if test="$is-closed">
            <xsl:text>/</xsl:text>
        </xsl:if>
        <xsl:text>&gt;</xsl:text>
        <xsl:value-of select="local:occurs-indicator(.)"/>
        <xsl:if test="exists($comment)">
            <xsl:value-of select="' (' || $comment || ')'"/>
        </xsl:if>
        <xsl:if test="$do-newline">
            <xsl:value-of select="$lf"/>
        </xsl:if>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:choice" mode="mode-coded-description">
        <xsl:param name="indent" as="xs:integer" required="yes"/>

        <xsl:variable name="opening-prefix" as="xs:string" select="'( '"/>
        <xsl:variable name="elements" as="element()+" select="yatcs-td:element | yatcs-td:element-placeholder"/>

        <xsl:value-of select="local:spaces($indent)"/>
        <xsl:value-of select="$opening-prefix"/>
        <!-- The first element is not indented (it follows the opening bracket): -->
        <xsl:apply-templates select="$elements[1]" mode="#current">
            <xsl:with-param name="indent" select="0"/>
            <xsl:with-param name="do-newline" select="false()"/>
        </xsl:apply-templates>
        <!-- Do the rest, if any, separated by pipes: -->
        <xsl:if test="count($elements) gt 1">
            <xsl:text> |</xsl:text>
            <xsl:value-of select="$lf"/>
        </xsl:if>
        <xsl:for-each select="$elements[position() gt 1]">
            <xsl:apply-templates select="." mode="#current">
                <xsl:with-param name="indent" select="$indent + string-length($opening-prefix)"/>
                <xsl:with-param name="do-newline" select="false()"/>
            </xsl:apply-templates>
            <xsl:if test="position() lt last()">
                <xsl:text> |</xsl:text>
                <xsl:value-of select="$lf"/>
            </xsl:if>
        </xsl:for-each>
        <xsl:text> )</xsl:text>
        <xsl:value-of select="local:occurs-indicator(.)"/>
        <xsl:value-of select="$lf"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="output-code-description-attribute">
        <xsl:param name="attribute" as="element(yatcs-td:attribute)" required="no" select="."/>

        <xsl:for-each select="$attribute">

            <!-- Output attribute name and occurrences: -->
            <xsl:value-of select="@name"/>
            <xsl:if test="not(yatcs:str2bln(@required, false()))">
                <xsl:text>?</xsl:text>
            </xsl:if>
            <xsl:text> = </xsl:text>
            <xsl:value-of select="@type"/>

        </xsl:for-each>
    </xsl:template>

    <!-- ======================================================================= -->
    <!-- SUPPORT: -->

    <xsl:function name="local:spaces" as="xs:string">
        <xsl:param name="length" as="xs:integer"/>
        <xsl:sequence select="yatcs:char-repeat(' ', $length)"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:occurs-indicator" as="xs:string">
        <xsl:param name="element-with-occurs" as="element()"/>
        <xsl:variable name="occurs" as="xs:string" select="($element-with-occurs/@occurrences, '1')[1]"/>
        <xsl:sequence select="if ($occurs eq '1') then '' else $occurs"/>
    </xsl:function>

</xsl:stylesheet>
