<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:util="urn:hl7:utilities" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032311044476553680100">
    <xsl:import href="../../../../YATC-shared/xsl/util/utilities.xsl"/>
    <!-- ================================================================== -->
    <!--
        Stylesheet that adds/amends concept ids in ADA documents.
    -->
    <!-- ================================================================== -->
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
    <!-- ================================================================== -->
    <!-- SETUP: -->

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>

    <xsl:strip-space elements="*"/>

    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>

    <xsl:include href="../../xslmod/adarefs2ada-build-standard-parameters.mod.xsl"/>

    <xsl:param name="repoSetDir" as="xs:string?">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input --> </xsl:param>

    <xsl:variable name="repoSet" as="document-node()*" select="yatcs:get-ada-files($repoSetDir)"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:apply-templates select="@* | node()" mode="resolveExtAdaRefs"/>
    </xsl:template>

    <!-- add local bouwstenen also when there is no bouwstenen in current instance -->
    <xsl:template match="data/*[exists(.//*[@datatype = 'reference'][contains(@value, '#')])][not(bouwstenen)]" mode="resolveExtAdaRefs">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()[not(self::voorstel_gegevens)]" mode="#current"/>
            <!-- bouwstenen to be added last -->
            <xsl:call-template name="addLocalBouwstenen"/>
            <xsl:apply-templates select="voorstel_gegevens" mode="#current"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="*[@datatype = 'reference'][contains(@value, '#')]/@value" mode="resolveExtAdaRefs">
        <!-- Replace external ref, make it local ref -->
        <xsl:attribute name="value" select="replace(., '(.*)#(.*)', '$2')"/>
    </xsl:template>

    <xsl:template match="bouwstenen[exists(//*[@datatype = 'reference'][contains(@value, '#')])]" name="addLocalBouwstenen" mode="resolveExtAdaRefs">
        <!-- resolve external refs, add the bouwsteen locally if needed -->
        <xsl:variable name="currentBouwstenen" select="." as="element()?"/>
        <xsl:variable name="currentAda" select="/"/>

        <!-- only unique ids -->
        <xsl:variable name="uniqueIds" as="xs:string*" select="distinct-values(//*[@datatype = 'reference'][contains(@value, '#')]/@value)"/>
        <xsl:variable name="localUniqueIds" as="xs:string*">
            <xsl:for-each select="$uniqueIds">
                <xsl:value-of select="replace(., '(.*)#(.*)', '$2')"/>
            </xsl:for-each>
        </xsl:variable>

        <bouwstenen comment="" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.259">
            <xsl:if test="$currentBouwstenen/local-name() = 'bouwstenen'">
                <!-- copy attributes -->
                <xsl:apply-templates select="@*" mode="#current"/>
            </xsl:if>
            <!-- resolve external references -->
            <xsl:variable name="resolvedExtReferenceStep1" as="element()*">
                <xsl:for-each select="$localUniqueIds">
                    <xsl:if test="not(exists($currentAda//*[@id = current()]))">
                        <!-- does not exist locally (expected situation really, but hey, sometimes the IA's refer to external but still add it locally as well) 
                             let's find it in de the reposet -->
                        <xsl:variable name="externalSearch" select="($repoSet//*[@id = current()])[1]" as="element()*"/>
                        <xsl:choose>
                            <xsl:when test="$externalSearch">
                                <xsl:sequence select="$externalSearch"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- log error -->
                                <xsl:call-template name="util:logMessage">
                                    <xsl:with-param name="level" select="$logERROR"/>
                                    <xsl:with-param name="msg">Encountered a non-resolvable external reference: '<xsl:value-of select="current()"/>'. </xsl:with-param>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:if>
                </xsl:for-each>
            </xsl:variable>

            <!-- also include the applicable referenced stuff in the resolved stuff -->
            <xsl:variable name="resolvedExtReference" as="element()*">
                    <xsl:if test="$resolvedExtReferenceStep1[self::zorgverlener]">
                        <!-- also include the referenced zorgaanbieder if not already included -->
                        <xsl:variable name="uniqueZorgaanbiederId" as="xs:string*" select="distinct-values($resolvedExtReferenceStep1//*[@datatype = 'reference']/@value)"/>
                        
                        <xsl:for-each select="$uniqueZorgaanbiederId[not(. = $resolvedExtReferenceStep1/@id)]">
                              <xsl:sequence select="($repoSet//*[@id = current()])[1]"/>
                        </xsl:for-each>
                        
                    </xsl:if>
     
                <xsl:sequence select="$resolvedExtReferenceStep1"/>
                
            </xsl:variable>


            <!-- output elements in the correct order -->
            <xsl:apply-templates select="$resolvedExtReference[self::contactpersoon] | $currentBouwstenen/contactpersoon" mode="#current"/>
            <xsl:apply-templates select="$resolvedExtReference[self::farmaceutisch_product] | $currentBouwstenen/farmaceutisch_product" mode="#current"/>
            <xsl:apply-templates select="$resolvedExtReference[self::zorgverlener] | $currentBouwstenen/zorgverlener" mode="#current"/>
            <xsl:apply-templates select="$resolvedExtReference[self::zorgaanbieder] | $currentBouwstenen/zorgaanbieder" mode="#current"/>
            <!-- there may be existing lengte gewicht bouwstenen in the group -->
            <xsl:apply-templates select="lichaamslengte" mode="#current"/>
            <xsl:apply-templates select="lichaamsgewicht" mode="#current"/>
            
            <!-- log error if resolvedExtReference is not expected -->
            <xsl:variable name="unexpectedRef" select="$resolvedExtReference[not(local-name() = ('contactpersoon', 'farmaceutisch_product', 'zorgverlener', 'zorgaanbieder'))]"/>
            <xsl:if test="$unexpectedRef">
                <xsl:call-template name="util:logMessage">
                    <xsl:with-param name="level" select="$logERROR"/>
                    <xsl:with-param name="msg">Encountered an unexpected resolved external reference. Expected is 'contactpersoon', 'farmaceutisch_product', 'zorgverlener', or 'zorgaanbieder', but found: '<xsl:value-of select="string-join($unexpectedRef/local-name(), ' ')"/>' for external local reference: '<xsl:value-of select="$unexpectedRef/@id"/>'.</xsl:with-param>
                </xsl:call-template>
            </xsl:if>
        </bouwstenen>

    </xsl:template>

    <xsl:template match="@* | node()" mode="resolveExtAdaRefs">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="#current"/>
        </xsl:copy>
    </xsl:template>


</xsl:stylesheet>
