<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.gx5_fht_jzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This adapts a stylesheet, schema or schematron document to the new include structure.
       
       Input is the document to change.
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

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/href.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/yatc-sanitize-filenames.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- PARAMETERS -->

    <xsl:param name="hrefDocumentSource" as="xs:string" required="yes"/>
    <xsl:param name="hrefDocumentTarget" as="xs:string" required="yes"/>

    <xsl:param name="flattenedDocumentList" as="document-node()" required="yes">
        <!-- This must be the document as created in the encompassing pipeline with all the stylesheet source/target names. -->
    </xsl:param>

    <xsl:param name="additionalInfo" as="xs:string" required="yes"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="namespace" as="xs:string" select="string($flattenedDocumentList/*/@namespace)"/>
    <xsl:variable name="includeElements" as="xs:string+" select="yatcs:str2seq($flattenedDocumentList/*/@include-elements)"/>
    <xsl:variable name="attributeName" as="xs:string" select="string($flattenedDocumentList/*/@attribute-name)"/>
    <xsl:variable name="distributionVersion" as="xs:string" select="string($flattenedDocumentList/*/@distribution-version)"/>
    <xsl:variable name="distributionName" as="xs:string" select="string($flattenedDocumentList/*/@distribution-name)"/>
    <xsl:variable name="distributionTimestamp" as="xs:string" select="string($flattenedDocumentList/*/@distribution-timestamp)"/>

    <!-- Values for the additional information (must be the same as defined in the distribution 
         data schema ../../xsd/distribute-data.xsd, simple type t-additional-info. -->
    <xsl:variable name="infoProvenanceComment" as="xs:string" select="'provenance-comment'"/>
    <xsl:variable name="infoProvenancePI" as="xs:string" select="'provenance-pi'"/>
    <xsl:variable name="infoDistributionComment" as="xs:string" select="'distribution-comment'"/>
    <xsl:variable name="infoDistributionPI" as="xs:string" select="'distribution-pi'"/>
    <xsl:variable name="infoAll" as="xs:string" select="'#all'"/>

    <!-- Names of the information PIs: -->
    <xsl:variable name="piPrefix" as="xs:string" select="'yatc-distribution-'"/>
    <xsl:variable name="piProvenance" as="xs:string" select="$piPrefix || 'provenance'"/>
    <xsl:variable name="piDistribution" as="xs:string" select="$piPrefix || 'info'"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">

        <!-- Sort out the additional info: -->
        <xsl:variable name="additionalInfos" as="xs:string*" select="yatcs:str2seq($additionalInfo) => distinct-values()"/>
        <xsl:variable name="allInfos" as="xs:boolean" select="$infoAll = $additionalInfos"/>
        
        <xsl:variable name="provenance" as="xs:string" select="yatcs:sanitize-filename($hrefDocumentSource)"/>
        <!-- PIs: -->
        <xsl:if test="($infoProvenancePI = $additionalInfos) or $allInfos">
            <xsl:call-template name="create-pi">
                <xsl:with-param name="name" select="$piProvenance"/>
                <xsl:with-param name="pars" as="map(xs:string, xs:string)">
                    <xsl:map>
                        <xsl:map-entry key="'href'" select="$provenance"/>
                    </xsl:map>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="($infoProvenancePI = $additionalInfos) or $allInfos">
            <xsl:call-template name="create-pi">
                <xsl:with-param name="name" select="$piDistribution"/>
                <xsl:with-param name="pars" as="map(xs:string, xs:string)">
                    <xsl:map>
                        <xsl:map-entry key="'name'" select="$distributionName"/>
                        <xsl:map-entry key="'version'" select="$distributionVersion"/>
                        <xsl:map-entry key="'timestamp'" select="$distributionTimestamp"/>
                    </xsl:map>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:if>
        <!-- Comments: -->
        <xsl:if test="($infoProvenanceComment = $additionalInfos) or $allInfos">
            <xsl:comment> == Provenance: {$provenance} == </xsl:comment>
        </xsl:if>
        <xsl:if test="($infoDistributionComment = $additionalInfos) or $allInfos">
            <xsl:comment> == Distribution: {$distributionName}; {if ($distributionVersion ne '') then $distributionVersion else '(no version)'}; {$distributionTimestamp} == </xsl:comment>
        </xsl:if>

        <!-- And process the rest: -->
        <xsl:apply-templates select="*"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/*/*[namespace-uri(.) eq $namespace][local-name(.) = $includeElements][exists(@*[local-name(.) eq $attributeName])]">

        <!-- Find the entry for the include: -->
        <xsl:variable name="href" as="xs:string" select="string(@*[local-name(.) eq $attributeName])"/>
        <xsl:variable name="hrefIncludeAsInSourceCanonical" as="xs:string" select="resolve-uri($href, $hrefDocumentSource) => yatcs:href-canonical()"/>
        <xsl:variable name="includeDocumentEntry" as="element(document)?" select="$flattenedDocumentList/*//document[@href-source eq $hrefIncludeAsInSourceCanonical]"/>
        <xsl:if test="empty($includeDocumentEntry)">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="($yatcs:internal-error-prompt, 'Include/import document not found in master list while flattening: ', yatcs:q($hrefIncludeAsInSourceCanonical))"/>
            </xsl:call-template>
        </xsl:if>

        <!-- Re-create the element with the changed href: -->
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:attribute name="{$attributeName}" select="yatcs:href-relative($hrefDocumentTarget, $includeDocumentEntry/@href-target)"/>
            <xsl:apply-templates/>
        </xsl:copy>

    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template name="create-pi">
        <xsl:param name="name" as="xs:string" required="yes"/>
        <xsl:param name="pars" as="map(xs:string, xs:string)" required="yes"/>

        <xsl:variable name="contentParts" as="xs:string*">
            <xsl:for-each select="map:keys($pars)">
                <xsl:variable name="key" as="xs:string" select="."/>
                <xsl:sequence select="$key || '=' || yatcs:q($pars($key))"/>
            </xsl:for-each>
        </xsl:variable>
        <xsl:processing-instruction name="{$name}" select="string-join($contentParts, ' ')"/>
    </xsl:template>
    
</xsl:stylesheet>
