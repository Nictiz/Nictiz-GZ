<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ct4_k5q_5wb" xmlns:yatcs-td="https://nictiz.nl/ns/YATC-shared/text-document" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet converts the basic YATC text document format into Markdown.
       All <element> elements must have been post-processed by yatcs-document-postprocess-elements.xsl.
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
    <xsl:mode name="mode-process-mixed-contents" on-no-match="fail"/>
    <xsl:mode name="mode-process-block-contents" on-no-match="fail"/>

    <xsl:include href="../../xslmod/general.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL VARIABLES: -->

    <xsl:variable name="lf" as="xs:string" select="'&#10;'"/>
    <xsl:variable name="lflf" as="xs:string" select="$lf || $lf"/>

    <xsl:variable name="dividerLine" as="xs:string" select="'-----'"/>
    <xsl:variable name="codeblockMarker" as="xs:string" select="'```'"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/yatcs-td:text-document">
        <xsl:call-template name="process-section"/>
    </xsl:template>

    <!-- ======================================================================= -->
    <!-- BLOCK CONTENTS GENERAL: -->

    <xsl:template name="process-block-contents-elements">
        <xsl:param name="elms" as="element()*" required="true"/>
        <xsl:apply-templates select="$elms" mode="mode-process-block-contents"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="process-section">
        <xsl:param name="elm" as="element()?" required="false" select="."/>
        
        <xsl:for-each select="$elm">
            <!-- Find out how deep this section is nested and output the correct numbers of # characters to get 
                 the right section header level: -->
            <xsl:variable name="ancestorSectionCount" as="xs:integer" select="count(ancestor::yatcs-td:section | ancestor::yatcs-td:text-document)"/>
            <xsl:if test="$ancestorSectionCount eq 1">
                <xsl:value-of select="$dividerLine || $lflf"/>
            </xsl:if>
            <xsl:call-template name="process-mixed-contents-element">
                <xsl:with-param name="elm" select="yatcs-td:title"/>
                <xsl:with-param name="prefix" select="yatcs:char-repeat('#', $ancestorSectionCount + 1) || ' '"/>
            </xsl:call-template>
            <xsl:value-of select="$lflf"/>
            <xsl:call-template name="process-block-contents-elements">
                <xsl:with-param name="elms" select="yatcs-td:* except yatcs-td:title"/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:macro" mode="mode-process-block-contents">
        <!-- Ignore here, should have been handled somewhere else... -->
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:group" mode="mode-process-block-contents">
        <!-- Ignore grouping, just carry on... -->
        <xsl:apply-templates select="yatcs-td:*" mode="#current"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:para" mode="mode-process-block-contents">
        <xsl:param name="lfCount" as="xs:integer" required="false" select="2"/>

        <xsl:call-template name="process-mixed-contents-element"/>
        <xsl:value-of select="yatcs:char-repeat($lf, $lfCount)"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="yatcs-td:subheading" mode="mode-process-block-contents">
        <xsl:call-template name="process-mixed-contents-element">
            <xsl:with-param name="prefix" select="'***'"/>
            <xsl:with-param name="suffix" select="'***'"/>
        </xsl:call-template>
        <xsl:value-of select="$lflf"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:section" mode="mode-process-block-contents">
        <xsl:call-template name="process-section"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:codeblock" mode="mode-process-block-contents">
        <xsl:value-of select="$codeblockMarker || @language || $lf || string(.) || $lf || $codeblockMarker || $lflf"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:dividerline" mode="mode-process-block-contents">
        <xsl:value-of select="$dividerLine || $lflf"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:emptyline" mode="mode-process-block-contents">
        <xsl:value-of select="'&#160;' || $lflf"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:markdown" mode="mode-process-block-contents">
        <xsl:value-of select=". || $lflf"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="yatcs-td:image" mode="mode-process-block-contents">
        <xsl:variable name="scaleNormalized" as="xs:string" select="normalize-space(@scale)"/>
        <xsl:variable name="scaleAttribute" as="xs:string" select="if ($scaleNormalized ne '') then (' width=' || yatcs:q($scaleNormalized)) else ()"/>
        <xsl:value-of select="'&lt;image src=' || yatcs:q(@href) || $scaleAttribute || '/&gt;'"/>
        <xsl:value-of select="$lflf"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:unorderedlist | yatcs-td:orderedlist" mode="mode-process-block-contents">
        <xsl:param name="depth" as="xs:integer" required="false" select="0"/>

        <xsl:variable name="prefix" as="xs:string" select="if (self::yatcs-td:unorderedlist) then '*' else '1.'"/>
        <xsl:for-each select="yatcs-td:entry">
            <xsl:value-of select="local:spaces($depth * 2) || $prefix || ' '"/>
            <xsl:apply-templates select="yatcs-td:para[1]" mode="#current">
                <xsl:with-param name="lfCount" as="xs:integer" select="1"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="(yatcs-td:unorderedlist | yatcs-td:orderedlist)[1]" mode="#current">
                <xsl:with-param name="depth" select="$depth + 1"/>
            </xsl:apply-templates>
        </xsl:for-each>
        <xsl:value-of select="$lf"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:table" mode="mode-process-block-contents">

        <xsl:variable name="tsep1" as="xs:string" select="'| '"/>
        <xsl:variable name="tsep" as="xs:string" select="' ' || $tsep1"/>

        <!-- Header: -->
        <xsl:value-of select="$tsep1"/>
        <xsl:for-each select="yatcs-td:header/yatcs-td:entry">
            <xsl:apply-templates select="yatcs-td:para[1]" mode="#current">
                <xsl:with-param name="lfCount" as="xs:integer" select="0"/>
            </xsl:apply-templates>
            <xsl:value-of select="$tsep"/>
        </xsl:for-each>
        <xsl:value-of select="$lf"/>
        <xsl:value-of select="$tsep1"/>
        <xsl:for-each select="yatcs-td:header/yatcs-td:entry">
            <xsl:value-of select="$dividerLine"/>
            <xsl:value-of select="$tsep"/>
        </xsl:for-each>
        <xsl:value-of select="$lf"/>
        <!-- Contents: -->
        <xsl:for-each select="yatcs-td:row">
            <xsl:value-of select="$tsep1"/>
            <xsl:for-each select="yatcs-td:entry">
                <xsl:apply-templates select="yatcs-td:para[1]" mode="#current">
                    <xsl:with-param name="lfCount" as="xs:integer" select="0"/>
                </xsl:apply-templates>
                <xsl:value-of select="$tsep"/>
            </xsl:for-each>
            <xsl:value-of select="$lf"/>
        </xsl:for-each>
        <xsl:value-of select="$lf"/>
    </xsl:template>

    <!-- ======================================================================= -->
    <!-- MIXED CONTENTS: -->

    <xsl:template name="process-mixed-contents-element">
        <xsl:param name="elm" as="element()?" required="false" select="."/>
        <xsl:param name="prefix" as="xs:string?" required="false" select="()"/>
        <xsl:param name="suffix" as="xs:string?" required="false" select="()"/>

        <xsl:value-of select="$prefix"/>
        <xsl:apply-templates select="$elm/node()" mode="mode-process-mixed-contents"/>
        <xsl:value-of select="$suffix"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:emph" mode="mode-process-mixed-contents">
        <xsl:variable name="starCount1" as="xs:integer" select="if (yatcs:str2bln(@bold, false())) then 2 else 0"/>
        <xsl:variable name="starCount2" as="xs:integer" select="if (yatcs:str2bln(@italic, true())) then 1 else 0"/>
        <xsl:variable name="prefixSuffix" as="xs:string" select="yatcs:char-repeat('*', $starCount1 + $starCount2)"/>
        <xsl:value-of select="$prefixSuffix || string(.) || $prefixSuffix"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:code" mode="mode-process-mixed-contents">
        <xsl:value-of select="'`' || string(.) || '`'"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:anchor" mode="mode-process-mixed-contents">
        <xsl:value-of select="'&lt;a name=&quot;' || string(@name) || '&quot;/&gt;'"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:br" mode="mode-process-mixed-contents">
        <xsl:value-of select="'&lt;br/&gt;'"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:link" mode="mode-process-mixed-contents">
        <xsl:value-of select="'[' || (if (normalize-space(.) eq '') then string(@href) else string(.))  || '](' || string(@href) || ')'"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-td:elm" mode="mode-process-mixed-contents">
        <xsl:value-of select="'`&lt;' || string(.) || '&gt;`'"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="text()" mode="mode-process-mixed-contents">
        <xsl:copy/>
    </xsl:template>

    <!-- ======================================================================= -->
    <!-- SUPPORT: -->

    <xsl:template match="comment() | processing-instruction()" mode="#all">
        <!-- Ignore, always, everywhere... -->
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:spaces" as="xs:string">
        <xsl:param name="length" as="xs:integer"/>
        <xsl:sequence select="yatcs:char-repeat(' ', $length)"/>
    </xsl:function>

</xsl:stylesheet>
