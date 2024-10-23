<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.q5g_gjx_bzb" xmlns:yatcs-cht="https://nictiz.nl/ns/YATC-shared/command-help-text" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet takes a document with command help text XML (according to  ../../xsd/command-help-text.xsd,
       but with all XIncludes resolved) and produces the pure text version of this.
       
       When $markdown is true it will produce a Markdown version (but without a title).
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

    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:mode on-no-match="fail"/>

    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:param name="commandStaticBaseUri" as="xs:string" required="true"/>

    <xsl:param name="markdown" as="xs:boolean" required="yes"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="commandWrapperSuffix" as="xs:string" select="'-cw'"/>

    <xsl:variable name="baseIndentSpaces" as="xs:integer" select="4"/>
    <xsl:variable name="maxLineLength" as="xs:integer" select="70"/>

    <xsl:variable name="lf" as="xs:string" select="'&#10;'"/>
    <xsl:variable name="space" as="xs:string" select="'&#160;'"/>
    <xsl:variable name="emptyLine" as="xs:string" select="''"/>
    <xsl:variable name="emptyLineMarkdown" as="xs:string?" select="if ($markdown) then $emptyLine else ()"/>
    <xsl:variable name="backtick" as="xs:string" select="'`'"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">

        <xsl:variable name="commandAutoRaw" as="xs:string" select="yatcs:href-name-noext($commandStaticBaseUri)"/>
        <xsl:variable name="commandAuto" as="xs:string" select="if (ends-with($commandAutoRaw, $commandWrapperSuffix)) then substring-before($commandAutoRaw, $commandWrapperSuffix) else $commandAutoRaw"/>
        <xsl:variable name="command" as="xs:string" select="(/*/@command, $commandAuto)[1]"/>

        <xsl:variable name="outputLines" as="xs:string+">

            <!-- Header: -->
            <xsl:sequence select="if ($markdown) then () else $command"/>
            <xsl:sequence select="$emptyLine"/>
            <xsl:call-template name="wrapOutput">
                <xsl:with-param name="in" select="local:remove-backticks(string(/*/yatcs-cht:description))"/>
            </xsl:call-template>
            <xsl:sequence select="$emptyLine"/>

            <!-- Command line options: -->
            <xsl:sequence select="'Command line options:'"/>
            <xsl:sequence select="$emptyLineMarkdown"/>
            
            <xsl:for-each select="/*/yatcs-cht:command-line-options/yatcs-cht:command-line-option">
                <!-- Line with arguments/flags: -->
                <xsl:variable name="parts" as="xs:string+">
                    <xsl:for-each select="yatcs-cht:flag | yatcs-cht:argument">
                        <xsl:variable name="optional" as="xs:boolean" select="xs:boolean((@optional, false())[1])"/>
                        <xsl:variable name="flag" as="xs:boolean" select="exists(self::yatcs-cht:flag)"/>
                        <xsl:variable name="flagArgumentText" as="xs:string?" select="if ($flag and (normalize-space(@argument) ne '')) then (':' || @argument) else ()"/>
                        <xsl:sequence select="(if ($optional) then '[' else ()) || (if ($flag) then '-' else ()) || @name || $flagArgumentText || (if ($optional) then ']' else ())"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:sequence select="local:in-backticks(string-join($parts, $space))"/>
                <xsl:sequence select="$emptyLineMarkdown"/>
                
                <!-- Line(s) with description: -->
                <xsl:call-template name="wrapOutput">
                    <xsl:with-param name="in" select="local:remove-backticks(string(yatcs-cht:description))"/>
                    <xsl:with-param name="indentLevel" select="1"/>
                </xsl:call-template>
                <xsl:sequence select="$emptyLineMarkdown"/>
                
                <!-- Check if there are flags/arguments with a description of their own: -->
                <xsl:for-each select="(yatcs-cht:flag | yatcs-cht:argument)[normalize-space(.) ne '']">
                    <xsl:variable name="flag" as="xs:boolean" select="exists(self::yatcs-cht:flag)"/>
                    <xsl:call-template name="wrapOutput">
                        <xsl:with-param name="in" select="local:in-backticks((if ($flag) then '-' else ()) || @name ) || ': ' || local:remove-backticks(string(.))"/>
                        <xsl:with-param name="indentLevel" select="1"/>
                        <xsl:with-param name="additionalLinesExtraIndent" select="true()"/>
                    </xsl:call-template>
                    <xsl:sequence select="$emptyLineMarkdown"/>
                </xsl:for-each>
                
            </xsl:for-each>
        </xsl:variable>

        <xsl:sequence select="string-join($outputLines, $lf)"/>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template name="wrapOutput" as="xs:string+">
        <!-- Takes $in and turns this into lines no longer than the given $maxLineLength -->
        <xsl:param name="in" as="xs:string" required="true"/>
        <xsl:param name="indentLevel" as="xs:integer" required="false" select="0"/>
        <xsl:param name="additionalLinesExtraIndent" as="xs:boolean" required="false" select="false()"/>

        <xsl:choose>
            <xsl:when test="$markdown">
                <xsl:sequence select="local:indent-string($indentLevel * $baseIndentSpaces) || $in"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="wrapOutputHelper">
                    <xsl:with-param name="remainingWords" select="tokenize($in, '\s+')[.]"/>
                    <xsl:with-param name="indentSize" select="$indentLevel * $baseIndentSpaces"/>
                    <xsl:with-param name="additionalLinesExtraIndent" select="$additionalLinesExtraIndent"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="wrapOutputHelper" as="xs:string*">
        <!-- Recursive helper template for wrapOutput -->
        <xsl:param name="remainingWords" as="xs:string*" required="true"/>
        <xsl:param name="textSofar" as="xs:string" required="false" select="''"/>
        <xsl:param name="indentSize" as="xs:integer" required="false" select="0"/>
        <xsl:param name="processingFirstLine" as="xs:boolean" required="false" select="true()"/>
        <xsl:param name="additionalLinesExtraIndent" as="xs:boolean" required="false" select="false()"/>

        <xsl:variable name="textEmpty" as="xs:boolean" select="$textSofar eq ''"/>
        <xsl:variable name="nextWord" as="xs:string?" select="$remainingWords[1]"/>
        <xsl:variable name="indentSizeNextLine" as="xs:integer" select="if ($additionalLinesExtraIndent and not($processingFirstLine)) then ($indentSize + $baseIndentSpaces) else $indentSize"/>
        <xsl:choose>
            <xsl:when test="empty($nextWord)">
                <!-- Done: -->
                <xsl:if test="not($textEmpty)">
                    <xsl:sequence select="local:indent-string($indentSizeNextLine) || $textSofar"/>
                </xsl:if>
            </xsl:when>
            <xsl:when test="$textEmpty and (($indentSizeNextLine + string-length($nextWord)) gt $maxLineLength)">
                <!-- We have a very long word... Just put it on a single line: -->
                <xsl:sequence select="local:indent-string($indentSizeNextLine) || $nextWord"/>
                <xsl:call-template name="wrapOutputHelper">
                    <xsl:with-param name="remainingWords" select="subsequence($remainingWords, 2)"/>
                    <xsl:with-param name="processingFirstLine" select="false()"/>
                    <xsl:with-param name="indentSize" select="$indentSize"/>
                    <xsl:with-param name="additionalLinesExtraIndent" select="$additionalLinesExtraIndent"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="($indentSizeNextLine + string-length($textSofar) + string-length($nextWord) + (if ($textEmpty) then 0 else 1)) gt $maxLineLength">
                <!-- The next word would make the line go over the line length. So this is it and start another one: -->
                <xsl:sequence select="local:indent-string($indentSizeNextLine) || $textSofar"/>
                <xsl:call-template name="wrapOutputHelper">
                    <xsl:with-param name="remainingWords" select="$remainingWords"/>
                    <xsl:with-param name="processingFirstLine" select="false()"/>
                    <xsl:with-param name="indentSize" select="$indentSize"/>
                    <xsl:with-param name="additionalLinesExtraIndent" select="$additionalLinesExtraIndent"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <!-- The next word still fits: -->
                <xsl:call-template name="wrapOutputHelper">
                    <xsl:with-param name="textSofar" select="if ($textEmpty) then $nextWord else ($textSofar || $space || $nextWord)"/>
                    <xsl:with-param name="remainingWords" select="subsequence($remainingWords, 2)"/>
                    <xsl:with-param name="processingFirstLine" select="$processingFirstLine"/>
                    <xsl:with-param name="indentSize" select="$indentSize"/>
                    <xsl:with-param name="additionalLinesExtraIndent" select="$additionalLinesExtraIndent"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:indent-string" as="xs:string?">
        <xsl:param name="indentSize" as="xs:integer"/>
        <xsl:if test="$indentSize gt 0">
            <xsl:sequence select="string-join(for $x in (1 to $indentSize) return $space)"/>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:in-backticks" as="xs:string">
        <!-- Adds backticks when we're producing Markdown. -->
        <xsl:param name="in" as="xs:string"/>

        <xsl:sequence select="if ($markdown) then $backtick || $in || $backtick else $in"/>
    </xsl:function>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:function name="local:remove-backticks" as="xs:string">
        <!-- Removes any backticks when we're *not*  producing Markdown -->
        <xsl:param name="in" as="xs:string"/>
        
        <xsl:sequence select="if ($markdown) then $in else translate($in, $backtick, '')"/>
    </xsl:function>

</xsl:stylesheet>
