<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.rbc_rtd_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!--
        Support code for handling the specification of in/excluding files in copy operations.
        Most important functionality is to turn (simple) UNIX glob patterns into XPath regexps.
        
        For instance a glob '*xx*.xml' becomes the 'xx.*\.xml$' regexp. 
        
        The globs this module can process must be simple: Only the wildcards * and ? are allowed. 
        Specifically character ranges ([...]) are not supported.
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

    <xsl:template match="*:include | *:exclude">
        <!-- Prepares an include or exclude element.
            
             It checks whether it has either a (non zero-length) @pattern or @glob. 
             If it has a @glob (simple UNIX glob), this is turned into an @pattern (XPath regexp).
             
             Returns the same element, with always an appropriate @pattern attribute and never an @glob. 
             
             If there was an @glob, this is returned in an @_glob (just for reference, 
             to verify that the conversion was done correctly).
             
             For instance: 
             - <include glob="*xx*.xml"/> becomes <include pattern="xx.*\.xml$" _glob="*xx*.xml"/>
             - <include pattern="xx.*\.xml$"/> stays unaltered.
        -->

        <xsl:choose>

            <!-- Check whether there is an @pattern *or* an @glob: -->
            <xsl:when test="exists(@pattern) and exists(@glob)">
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('Element ', name(.), ' contains both @pattern and @glob, only one of these is allowed')"/>
                </xsl:call-template>
            </xsl:when>

            <!-- Filled @pattern present: -->
            <xsl:when test="normalize-space(@pattern) ne ''">
                <!-- Element contains @pattern, return what we've got: -->
                <xsl:sequence select="."/>
            </xsl:when>

            <!-- Filled @glob present: -->
            <xsl:when test="normalize-space(@glob) ne ''">
                <xsl:variable name="glob" as="xs:string" select="string(@glob)"/>
                <xsl:copy copy-namespaces="false">
                    <xsl:copy-of select="@* except (@glob, @pattern, @_glob)"/>
                    <xsl:attribute name="pattern" select="yatcs:glob-to-pattern($glob)"/>
                    <xsl:attribute name="_glob" select="$glob"/>
                    <xsl:copy-of select="node()"/>
                </xsl:copy>
            </xsl:when>

            <!-- If we arrive here, there was no @pattern nor @glob containing data: -->
            <xsl:otherwise>
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('Element ', name(.), ' contains empty @pattern or @glob')"/>
                </xsl:call-template>
            </xsl:otherwise>

        </xsl:choose>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:glob-to-pattern" as="xs:string">
        <!-- Turns a simple UNIX glob pattern (containing only the * and ? wildcard characters) into a XPath regexp.
             For instance a glob '*xx*.xml' becomes the 'xx.*\.xml$' regexp. 
        -->
        <xsl:param name="glob" as="xs:string"/>

        <!-- Do a quick check on the presence of character ranges: -->
        <xsl:if test="contains($glob, '[')">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="('Glob too complex for automatic regexp conversion: ', yatcs:q($glob), ' (character ranges […] not supported)')"/>
            </xsl:call-template>
        </xsl:if>

        <!-- A * at the beginning or end determines anchoring: -->
        <xsl:variable name="anchored-at-start" as="xs:boolean" select="not(starts-with($glob, '*'))"/>
        <xsl:variable name="anchored-at-end" as="xs:boolean" select="not(ends-with($glob, '*'))"/>

        <!-- Examine the rest and create the sequence of strings that make up the regexp:: -->
        <xsl:variable name="patternParts" as="xs:string*">
            <!-- Starting anchor: -->
            <xsl:if test="$anchored-at-start">
                <xsl:sequence select="'^'"/>
            </xsl:if>
            <!-- Examine the glob on * and ? characters and output the appropriate regexp string for these:: -->
            <xsl:variable name="glob-no-anchors" as="xs:string" select="$glob => replace('^\*', '') => replace('\*$', '')"/>
            <xsl:analyze-string select="$glob-no-anchors" regex="\*|\?">
                <!-- A * or a ?. Target the appropriate XPath string: -->
                <xsl:matching-substring>
                    <xsl:choose>
                        <xsl:when test=". eq '*'">
                            <xsl:sequence select="'.*'"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:sequence select="'.'"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:matching-substring>
                <xsl:non-matching-substring>
                    <!-- Some string not containing * or ?. Turn this into a literal matching regexp by escaping
                         all special regexp characters: -->
                    <xsl:sequence select="yatcs:str2regexp(.)"/>
                </xsl:non-matching-substring>
            </xsl:analyze-string>
            <!-- Ending anchor: -->
            <xsl:if test="$anchored-at-end">
                <xsl:sequence select="'$'"/>
            </xsl:if>
        </xsl:variable>

        <!-- Piece everything together: -->
        <xsl:sequence select="string-join($patternParts)"/>
    </xsl:function>

</xsl:stylesheet>
