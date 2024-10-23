<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.vmt_rgh_fwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
        Finalizes the retrieved distribute data, so it can be processed 
        more easily by the pipeline(s) that use it: Adds several additional attributes 
        to elements (all beginning with an underscore) containing computed full absolute 
        directory and file URIs.
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

    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:strip-space elements="*"/>

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/href.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/yatc-system.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/yatc-parameters.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/yatc-parameters-map.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/simple-macros.mod.xsl"/>

    <xsl:import href="../../../../YATC-shared/xslmod/handle-include-exclude-glob-pattern-attributes.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="parameters" as="map(xs:string, xs:string*)" select="yatcs:get-combined-parameters-map(static-base-uri())"/>

    <xsl:variable name="targetAsSourceMacro" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'SOURCE'"/>
    <xsl:variable name="targetSourceNameMacro" as="xs:string" select="$yatcs:simpleMacroStartCharacter || 'SOURCENAME'"/>

    <xsl:variable name="flattenElementsSuffix" as="xs:string" select="'flatten-'">
        <!-- All <flatten-*> elements/instructions start with this suffix. -->
    </xsl:variable>
    
    <xsl:variable name="documentBaseUri" as="xs:string" select="base-uri(/)"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <!-- Supply the values for the default source and target directories (as tunnel parameters) and go.
             The values supplied here must correspond with the definitions for the defaults of /*/@source-dir 
             and /*/@target-dir in ../../xsd/distribute-data.xsd
        -->
        <xsl:apply-templates>
            <xsl:with-param name="baseSourceDir" as="xs:string" select="$parameters($yatcs:parnameYatcInternalDirectory)" tunnel="true"/>
            <xsl:with-param name="baseTargetDir" as="xs:string" select="$parameters($yatcs:parnamePublicBaseDistributionDirectory)" tunnel="true"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="
        /yatci:distribute-data | 
        yatci:distribution | 
        yatci:directory | 
        yatci:flatten-stylesheets | yatci:flatten-schemas | yatci:flatten-schematrons |
        yatci:group |
        yatci:master-document-directory
     ">
        <!-- This template matches all elements that have an (optional) @source-directory and @target-directory element. -->
        <xsl:param name="baseSourceDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="baseTargetDir" as="xs:string" required="true" tunnel="true"/>

        <!-- Get the settings for the source and target directory. Handle the special $targetDirAsSourceMacro value for the target directory
             (which explicitly makes the target directory the same as the source directory).  -->
        <xsl:variable name="sourceDir" as="xs:string?" select="xs:string(@source-directory)"/>
        <xsl:variable name="targetDirRaw" as="xs:string?" select="xs:string(@target-directory)"/>
        <xsl:variable name="targetDir" as="xs:string?" select="if (exists($targetDirRaw) and ($targetDirRaw eq $targetAsSourceMacro)) then $sourceDir else $targetDirRaw"/>

        <!-- Compute the new base directories: -->
        <xsl:variable name="newBaseSourceDir" as="xs:string" select="local:compute-href-source(., $baseSourceDir, $sourceDir)"/>
        <xsl:variable name="newBaseTargetDir" as="xs:string" select="local:concat-and-make-canonical(($baseTargetDir, $targetDir))"/>

        <!-- Copy and adjust: -->
        <xsl:copy>
            <xsl:attribute name="_source-directory" select="$newBaseSourceDir"/>
            <xsl:attribute name="_target-directory" select="$newBaseTargetDir"/>

            <!-- Handle the @href-zip also (is on the <distribution> element only). Its path must be relative to the 
                 target directory set by @target-directory. -->
            <xsl:if test="exists(@href-zip)">
                <xsl:attribute name="_href-zip" select="local:concat-and-make-canonical(($newBaseTargetDir, string(@href-zip)))"/>
            </xsl:if>

            <!-- Handle the @href-include, which is on the <flatten-*> elements. Its path must be relative to the 
                 target directory set by @target-directory. -->
            <xsl:if test="starts-with(local-name(.), $flattenElementsSuffix)">
                <xsl:variable name="hrefInclude" as="xs:string" select="string((@href-include, 'include')[1])"/>
                <xsl:attribute name="_href-include" select="local:concat-and-make-canonical(($newBaseTargetDir, $hrefInclude))"/>
            </xsl:if>

            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="baseSourceDir" select="$newBaseSourceDir" tunnel="true"/>
                <xsl:with-param name="baseTargetDir" select="$newBaseTargetDir" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatci:master-document[empty(@href-target)]">
        <!-- The @href-target on master documents is optional. If not present, derive it from @href-source. -->
        <xsl:param name="baseTargetDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="_href-target" select="local:concat-and-make-canonical(($baseTargetDir, yatcs:href-name(@href-source)))"/>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@href-source">
        <!-- We can match on the attribute here, because @href-source is required. -->
        <xsl:param name="baseSourceDir" as="xs:string" required="true" tunnel="true"/>

        <xsl:copy/>
        <xsl:attribute name="_{local-name(.)}" select="local:compute-href-source(.., $baseSourceDir, string(.))"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@href-target">
        <!-- We can match on the attribute here, because @href-target is required. -->
        <xsl:param name="baseTargetDir" as="xs:string" required="true" tunnel="true"/>

        <!-- Check for the use of the special $targetDirAsSourceMacro value and adjust accordingly: -->
        <xsl:variable name="hrefSource" as="xs:string?" select="xs:string(../@href-source)"/>
        <xsl:variable name="hrefTargetRaw" as="xs:string?" select="xs:string(.)"/>
        <xsl:variable name="hrefTarget" as="xs:string?">
            <xsl:choose>
                <xsl:when test="exists($hrefTargetRaw) and (($hrefTargetRaw eq $targetAsSourceMacro) or contains($hrefTargetRaw, $targetSourceNameMacro))">
                    <!-- We need information from @href-source. Check whether it exists: -->
                    <xsl:if test="empty($hrefSource)">
                        <xsl:call-template name="yatcs:raise-error">
                            <xsl:with-param name="msg-parts" select="('Invalid use of ', $targetAsSourceMacro, ' or ', $targetSourceNameMacro, ' in @href-target: @href-source not specified here')"/>
                        </xsl:call-template>
                    </xsl:if>
                    <xsl:choose>
                        <xsl:when test="$hrefTargetRaw eq $targetAsSourceMacro">
                            <xsl:sequence select="$hrefSource"/>
                        </xsl:when>
                        <xsl:when test="contains($hrefTargetRaw, $targetSourceNameMacro)">
                            <!-- Remark: Do this with the simple macro replacement mechanism because that takes into account some special cases. -->
                            <xsl:variable name="replacementMap" as="map(xs:string, xs:string)" select="map{$targetSourceNameMacro: yatcs:href-name($hrefSource)}"/>
                            <xsl:sequence select="yatcs:expand-simple-macros($hrefTargetRaw, $replacementMap, false())"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- Internal error, should not happen, let go for now... -->
                            <xsl:sequence select="$hrefTargetRaw"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <!-- No special handling of @href-target required: -->
                    <xsl:sequence select="$hrefTargetRaw"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <!-- Copy and adjust: -->
        <xsl:copy/>
        <xsl:attribute name="_{local-name(.)}" select="local:concat-and-make-canonical(($baseTargetDir, $hrefTarget))"/>

    </xsl:template>

    <!-- ======================================================================= -->
    <!-- SUPPORT: -->

    <xsl:function name="local:concat-and-make-canonical" as="xs:string">
        <xsl:param name="in" as="xs:string+"/>
        <xsl:sequence select="yatcs:href-concat($in) => yatcs:href-canonical()"/>
    </xsl:function>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:function name="local:compute-href-source" as="xs:string">
        <xsl:param name="parent" as="element()"/>
        <xsl:param name="baseDir" as="xs:string"/>
        <xsl:param name="value" as="xs:string?"/>
        
        <xsl:choose>
            <xsl:when test="starts-with($value, '#')">
                <xsl:sequence select="local:resolve-uri-against-data-file-location($parent, substring($value, 2))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="local:concat-and-make-canonical(($baseDir, $value))"/>
            </xsl:otherwise>  
        </xsl:choose>
        
    </xsl:function>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:function name="local:resolve-uri-against-data-file-location" as="xs:string">
        <!-- Resolves a relative URI against the location of the data files (the location where it is specified).
             But since this can be created from includes (using xi:include href="..."/> elements), we need to process 
             any @xml:base attributes properly. -->
        <xsl:param name="parent-element" as="element()"/>
        <xsl:param name="uri" as="xs:string"/>
        
        <xsl:variable name="xmlBase" as="xs:string" select="(($parent-element/ancestor-or-self::*/@xml:base)[last()], $documentBaseUri)[1]"/>
        <xsl:sequence select="resolve-uri($uri, $xmlBase) => yatcs:href-canonical()"/>
    </xsl:function>
    
</xsl:stylesheet>
