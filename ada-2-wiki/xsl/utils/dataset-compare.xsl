<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="true" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023020714593488080330100" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <!-- ================================================================== -->
    <!--
        ? ES 202302: Purpose unclear. Not sure whether this stylesheet is still relevant/up-to-date/in-working-order.
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

    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <!-- parameter contains the current dataset, defaults to context -->
    <xsl:param name="currentDataset" select="document(.)"/>
    <xsl:param name="otherDataset"/>

    <!-- output directory for result -->
    <xsl:param name="outDir" as="xs:string?">../out-compared/</xsl:param>

    <!-- example concept map variable, should be overridden by calling XSLT which has concrete information about whatever relations there are 
       the @newConceptId may be entered if needed for ambiguity -->
    <xsl:param name="datasetConceptMap" as="element()+">
        <map newDatasetConceptShortName="medicatieverstrekking" oldDatasetConceptShortName="verstrekking"/>
        <map newConceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.414" newDatasetConceptShortName="identificatie" oldDatasetConceptShortName="identificatie_medicatieafspraak"/>
    </xsl:param>

    <xsl:variable name="currentDatasetversion4FileName" select="replace(dataset/@versionLabel, '\.', '')"/>
    <xsl:variable name="otherDatasetversion4FileName" select="replace($otherDataset/dataset/@versionLabel, '\.', '')"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Root node start template -->
        <xsl:result-document href="{$outDir}Compare-{$currentDatasetversion4FileName}_2_{$otherDatasetversion4FileName}.xml">
            <xsl:for-each select="$currentDataset">
                <dataset>
                    <xsl:apply-templates select="dataset/@*" mode="copy"/>
                    <xsl:element name="otherdataset">
                        <xsl:apply-templates select="$otherDataset/dataset/@*" mode="copy"/>
                    </xsl:element>
                    <xsl:apply-templates select="*" mode="dataset-compare"/>
                </dataset>
            </xsl:for-each>
        </xsl:result-document>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="conceptDatasetCompare" match="concept[not(parent::conceptList)]" mode="dataset-compare">
        <!-- Handle dataset concepts and compare them with the "otherdataset". -->
        <xsl:param name="currentOtherDatasetParent" select="$otherDataset/dataset">
            <!-- The current parent of the other dataset concept we are handling. Defaults to dataset element. -->
        </xsl:param>

        <!-- we must assume to find it in the same hierarchy -->
        <xsl:variable name="currentOtherDatasetConcept" as="element(concept)*" select="nf:getCurrentConcept(., $currentOtherDatasetParent)"/>

        <xsl:copy>
            <xsl:attribute name="match-exists">
                <xsl:value-of select="exists($currentOtherDatasetConcept)"/>
            </xsl:attribute>
            <!-- order of attributes better for humans -->
            <xsl:apply-templates select="@shortName" mode="copy"/>
            <xsl:apply-templates select="@type" mode="copy"/>
            <xsl:apply-templates select="@id" mode="copy"/>
            <xsl:apply-templates select="@effectiveDate" mode="copy"/>
            <xsl:apply-templates select="@statusCode" mode="copy"/>
            <xsl:apply-templates select="@*" mode="copy"/>

            <xsl:choose>
                <xsl:when test="$currentOtherDatasetConcept[@id != current()/@id]">
                    <xsl:element name="other{$currentOtherDatasetConcept/local-name()}">
                        <!-- order of attributes better for humans -->
                        <xsl:apply-templates select="$currentOtherDatasetConcept/@shortName" mode="copy"/>
                        <xsl:apply-templates select="$currentOtherDatasetConcept/@type" mode="copy"/>
                        <xsl:apply-templates select="$currentOtherDatasetConcept/@id" mode="copy"/>
                        <xsl:apply-templates select="$currentOtherDatasetConcept/@effectiveDate" mode="copy"/>
                        <xsl:apply-templates select="$currentOtherDatasetConcept/@statusCode" mode="copy"/>
                        <xsl:apply-templates select="$currentOtherDatasetConcept/@*" mode="copy"/>
                    </xsl:element>

                    <!-- content compare -->
                    <!-- terminologyAssociations on concept level, those have @code as opposed to the @valueSet for valueset assocations. -->
                    <xsl:for-each select="terminologyAssociation[@code]">
                        <xsl:apply-templates select="." mode="content-compare-attrib">
                            <xsl:with-param name="currentOtherDatasetElement" select="$currentOtherDatasetConcept/terminologyAssociation"/>
                            <xsl:with-param name="attribName" select="('code', 'codeSystem', 'displayName')"/>
                        </xsl:apply-templates>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <!-- we still copy name, because we need it to make a nicer output table later -->
                    <name>
                        <xsl:copy-of select="name"/>
                    </name>
                </xsl:otherwise>
            </xsl:choose>

            <!-- do the other underlying concepts -->
            <xsl:apply-templates select="*" mode="dataset-compare">
                <xsl:with-param name="currentOtherDatasetParent" select="$currentOtherDatasetConcept"/>
            </xsl:apply-templates>
        </xsl:copy>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="concept[parent::conceptList]" mode="valueset-compare">
        <!-- Handle valueset concepts and compare them with the "othervalueset". -->
        <xsl:param name="in" select=".">
            <!-- Input element, defaults to context -->
        </xsl:param>
        <xsl:param name="currentOtherDatasetConcept" as="element()*">
            <!-- The current concepts of the other valueset concept we are handling. -->
        </xsl:param>

        <xsl:for-each select="$in">

            <!-- use the $currentOtherDatasetConcept which has the same code/codeSystem  -->
            <xsl:variable name="otherConcept4Output" as="element()*">
                <!-- let's try to find a match on code/codeSystem -->
                <xsl:sequence select="$currentOtherDatasetConcept[@code = $in/@code][@codeSystem = $in/@codeSystem]"/>
            </xsl:variable>

            <xsl:copy>
                <xsl:call-template name="_doCompareAttrib">
                    <xsl:with-param name="in" select="$in"/>
                    <xsl:with-param name="currentOtherDatasetConcept" select="$otherConcept4Output"/>
                    <xsl:with-param name="attribName" select="@*/local-name()[. ne 'localId']"/>
                </xsl:call-template>

                <!-- do the underlying concepts -->
                <xsl:apply-templates select="*" mode="dataset-compare">
                    <xsl:with-param name="currentOtherDatasetParent" select="$otherConcept4Output"/>
                </xsl:apply-templates>
            </xsl:copy>

        </xsl:for-each>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*" mode="content-compare">
        <!-- Template for elements in mode content-compare -->
        <xsl:param name="in" select=".">
            <!-- Input element, defaults to context -->
        </xsl:param>
        <xsl:param name="currentOtherDatasetElement" as="element()*">
            <!-- The concept in the other dataset to compare to -->
        </xsl:param>

        <xsl:variable name="currentContent" select="nf:comparable-string(.)"/>
        <xsl:variable name="otherContent" as="xs:string*">
            <xsl:for-each select="$currentOtherDatasetElement">
                <xsl:value-of select="nf:comparable-string(.)"/>
            </xsl:for-each>
        </xsl:variable>

        <xsl:variable name="matched" as="xs:boolean*">
            <xsl:for-each select="$otherContent">
                <xsl:value-of select="$currentContent = $otherContent"/>
            </xsl:for-each>
        </xsl:variable>

        <xsl:copy>
            <xsl:attribute name="matches">
                <!-- we need at least one content match -->
                <xsl:value-of select="$matched = true()"/>
            </xsl:attribute>

            <!-- copy the current dataset contents -->
            <xsl:copy>
                <xsl:apply-templates select="@* | node()" mode="copy"/>
            </xsl:copy>

            <!-- copy the other dataset contents, but let's make sure that there is not another match in which case we are really not interested -->
            <!-- variable containts the set of siblings with the same element name in the original dataset -->
            <xsl:variable name="originalElements" select="../*[local-name() = $in/local-name()]" as="element()*"/>
            <xsl:variable name="originalElementStrings" as="xs:string*">
                <xsl:for-each select="$originalElements">
                    <xsl:value-of select="nf:comparable-string(.)"/>
                </xsl:for-each>
            </xsl:variable>

            <xsl:if test="$currentOtherDatasetElement and not($matched = true())">
                <xsl:for-each select="$currentOtherDatasetElement">
                    <xsl:if test="not(nf:comparable-string(.) = $originalElementStrings)">
                        <xsl:element name="other{./local-name()}">
                            <xsl:apply-templates select="./(@* | node())" mode="copy"/>
                        </xsl:element>
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>

            <!-- do any underlying concept -->
            <xsl:apply-templates select="*" mode="dataset-compare">
                <xsl:with-param name="currentOtherDatasetParent" select="$currentOtherDatasetElement"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="contentCompareAttrib" match="*" mode="content-compare-attrib">
        <!-- Template for elements in mode content-compare-attrib. Mainly meant to compare (a subselection) of attributes. -->
        <xsl:param name="in" select=".">
            <!-- Input element, defaults to context -->
        </xsl:param>
        <xsl:param name="currentOtherDatasetElement" as="element()*">
            <!-- The concept in the other dataset to compare to -->
        </xsl:param>
        <xsl:param name="attribName" as="xs:string*" select="$in/@*/local-name()">
            <!-- The attribute name(s) in the context item to compare. Defaults to all attributes in the context element (which may not always be what is desired!) -->
        </xsl:param>

        <xsl:copy>
            <xsl:call-template name="_doCompareAttrib">
                <xsl:with-param name="in" select="$in"/>
                <xsl:with-param name="currentOtherDatasetConcept" select="$currentOtherDatasetElement"/>
                <xsl:with-param name="attribName" select="$attribName"/>
            </xsl:call-template>

            <!-- do any underlying concept -->
            <xsl:apply-templates select="*" mode="dataset-compare">
                <xsl:with-param name="currentOtherDatasetParent" select="$currentOtherDatasetElement"/>
            </xsl:apply-templates>
        </xsl:copy>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="_doCompareAttrib">
        <!-- Helper template to allow for better re-use. Template for elements in mode content-compare-attrib. Mainly meant to compare (a subselection) of attributes. -->
        <xsl:param name="in" select=".">
            <!-- Input element, defaults to context -->
        </xsl:param>
        <xsl:param name="currentOtherDatasetConcept" as="element()*">
            <!-- The concept in the other dataset to compare to -->
        </xsl:param>
        <xsl:param name="attribName" as="xs:string*" select="$in/@*/local-name()">
            <!-- The attribute name(s) in the context item to compare. Defaults to all attributes in the context element (which may not always be what is desired!) -->
        </xsl:param>

        <xsl:variable name="matched" as="xs:boolean*">
            <xsl:for-each select="$attribName">
                <xsl:value-of select="$in/@*[local-name() = current()] = $currentOtherDatasetConcept/@*[local-name() = current()]"/>
            </xsl:for-each>
        </xsl:variable>

        <xsl:attribute name="matches">
            <!-- all attributes must match for matches to be true -->
            <xsl:value-of select="not($matched = false())"/>
        </xsl:attribute>

        <!-- copy the current dataset contents -->
        <xsl:copy>
            <xsl:apply-templates select="@*[local-name() = $attribName]" mode="copy"/>
        </xsl:copy>

        <xsl:if test="$currentOtherDatasetConcept and ($matched = false())">
            <xsl:for-each select="$currentOtherDatasetConcept">
                <xsl:element name="other{./local-name()}">
                    <xsl:apply-templates select="@*[local-name() = $attribName]" mode="copy"/>
                </xsl:element>
            </xsl:for-each>
        </xsl:if>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="valueDomain | valueDomain/property | conceptList/concept/designation | relationship" mode="dataset-compare">
        <!-- Handle comparison of any element needing attrib-compare -->
        <xsl:param name="currentOtherDatasetParent" as="element()?">
            <!-- The current parent of the other dataset concept we are handling. Defaults to dataset element. -->
        </xsl:param>
        <xsl:variable name="currentOtherDatasetElement" as="element()*" select="nf:getCurrentConceptLocalname(., $currentOtherDatasetParent)"/>
        <xsl:apply-templates select="." mode="content-compare-attrib">
            <xsl:with-param name="currentOtherDatasetElement" select="$currentOtherDatasetElement"/>
            <xsl:with-param name="attribName" select="@*/local-name()"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="example | name | desc" mode="dataset-compare">
        <!-- Handle comparison of any element needing content-compare -->
        <xsl:param name="currentOtherDatasetParent" as="element()*">
            <!-- The current parent of the other dataset concept we are handling.  -->
        </xsl:param>
        <xsl:variable name="currentOtherDatasetElement" as="element()*" select="nf:getCurrentConceptLocalname(., $currentOtherDatasetParent)"/>
        <xsl:apply-templates select="." mode="content-compare">
            <xsl:with-param name="currentOtherDatasetElement" select="$currentOtherDatasetElement"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="usage" mode="dataset-compare">
        <!-- Handle comparison of usage dataset-compare, TODO: not yet implemented -->
        <xsl:param name="currentOtherDatasetParent" as="element()*">
            <!-- The current parent of the other dataset concept we are handling.  -->
        </xsl:param>
        <!-- disable for now, TODO implement usage as well -->
        <!--        <xsl:variable name="currentOtherDatasetElement" as="element()*" select="nf:getCurrentConceptLocalname(., $currentOtherDatasetParent)"/>-->
        <!-- <xsl:apply-templates select="." mode="content-compare">
            <xsl:with-param name="currentOtherDatasetElement" select="$currentOtherDatasetElement"/>
        </xsl:apply-templates>-->
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="contentCompareValueSet" match="valueSet" mode="dataset-compare">
        <!-- Template for elements in mode dataset-compare -->
        <xsl:param name="in" select=".">
            <!-- Input element, defaults to context -->
        </xsl:param>
        <xsl:param name="currentOtherDatasetParent" as="element()*">
            <!-- The parent element in which to find the matching stuff -->
        </xsl:param>

        <xsl:for-each select="$in">

            <xsl:variable name="currentOtherDatasetElement" as="element()*" select="$currentOtherDatasetParent/*[local-name() = current()/local-name()]"/>

            <xsl:variable name="otherValueSetSameId" select="$currentOtherDatasetElement[@id = $in/@id]" as="element()?"/>
            <xsl:variable name="otherValueSetSameIdEffectiveDate" select="$otherValueSetSameId[@effectiveDate = $in/@effectiveDate]" as="element()?"/>
            <xsl:variable name="otherValueSetSameName" select="$currentOtherDatasetElement[@name = $in/@name]" as="element()?"/>

            <xsl:copy>
                <!-- is another valueSet found? -->
                <xsl:attribute name="match-exists">
                    <xsl:value-of select="exists($currentOtherDatasetElement[@id])"/>
                </xsl:attribute>
                <!-- is the other valueSet identical? -->
                <xsl:attribute name="matches" select="exists($otherValueSetSameIdEffectiveDate)"/>
                <xsl:apply-templates select="@*" mode="copy"/>

                <xsl:if test="$currentOtherDatasetElement[@id] and not(exists($otherValueSetSameIdEffectiveDate))">
                    <xsl:choose>
                        <!-- valueSet with same id -->
                        <xsl:when test="exists($otherValueSetSameId)">
                            <xsl:element name="other{$otherValueSetSameId/local-name()}">
                                <xsl:apply-templates select="$otherValueSetSameId/@*" mode="copy"/>
                            </xsl:element>
                        </xsl:when>
                        <!-- valueSet with same name -->
                        <xsl:when test="exists($otherValueSetSameName)">
                            <xsl:element name="other{$otherValueSetSameName/local-name()}">
                                <xsl:apply-templates select="$otherValueSetSameName/@*" mode="copy"/>
                            </xsl:element>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:for-each select="$currentOtherDatasetElement">
                                <xsl:element name="other{local-name()}">
                                    <xsl:apply-templates select="./@*" mode="copy"/>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:otherwise>
                    </xsl:choose>
                    <!-- content compare -->
                    <!-- compare each concepList/concept, only needed if the valueset is not actually the exact same valueSet -->
                    <xsl:if test="not(exists($otherValueSetSameIdEffectiveDate))">
                        <xsl:apply-templates select="conceptList/concept" mode="valueset-compare">
                            <xsl:with-param name="currentOtherDatasetConcept" select="$currentOtherDatasetElement/conceptList/concept"/>
                        </xsl:apply-templates>
                    </xsl:if>
                </xsl:if>

                <!-- do the underlying concepts -->
                <!--<xsl:apply-templates select="*" mode="dataset-compare">
                    <xsl:with-param name="currentOtherDatasetParent" select="$currentOtherDatasetElement"/>
                </xsl:apply-templates>-->
            </xsl:copy>
        </xsl:for-each>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@versionLabel | @iddisplay" mode="copy"><!-- Do not copy this stuff --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="copy">
        <!-- Recursive copy template for everything in mode copy -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="copy"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*" mode="dataset-compare">
        <!-- Recursive template for elements in mode dataset-compare -->
        <xsl:param name="currentOtherDatasetParent" select="$otherDataset/dataset" as="element()*">
            <!-- The parent element in which to find the matching stuff -->
        </xsl:param>
        <!-- we must assume to find it in the same hierarchy -->
        <xsl:variable name="currentOtherDatasetConcept" as="element(concept)*" select="nf:getCurrentConcept(., $currentOtherDatasetParent)"/>
        <xsl:apply-templates select="*" mode="dataset-compare">
            <xsl:with-param name="currentOtherDatasetParent" select="if (not(empty($currentOtherDatasetConcept))) then $currentOtherDatasetConcept else $currentOtherDatasetParent"/>
        </xsl:apply-templates>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="valueDomain/conceptList" mode="dataset-compare"><!-- Don't do anything with the elements in match in dataset-compare mode (yet) --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:comparable-string" as="xs:string?">
        <!-- Make a string from the text() contents of an xml element and it's sub elements -->
        <xsl:param name="in" as="element()?">
            <!-- The element to handle -->
        </xsl:param>

        <!-- join the text() strings in the element and it's subelement, so that (html) elements are ignored in the compare string -->
        <xsl:variable name="joinedString" select="$in/string-join(text() | .//*/text(), '')" as="xs:string?"/>
        <!-- remove whitespace -->
        <xsl:variable name="noWhiteSpaceJoinedString" select="replace($joinedString, '\s', '')" as="xs:string?"/>
        <!-- upper-case -->
        <xsl:value-of select="(upper-case($noWhiteSpaceJoinedString))"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:getCurrentConcept" as="element()*">
        <!-- Attempts to find the current other dataset concept based on shortName of the in concept, if not found uses the $datasetConceptMap -->
        <xsl:param name="in" as="element()?">
            <!-- The element for which to find a match -->
        </xsl:param>
        <xsl:param name="currentOtherDatasetParent" as="element()?">
            <!-- The element in the other dataset, which is the parent in which to find the matching concept -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:variable name="currentShortname" select="@shortName"/>
            <xsl:choose>
                <xsl:when test="$currentOtherDatasetParent/concept[@shortName = $currentShortname]">
                    <xsl:sequence select="$currentOtherDatasetParent/concept[@shortName = $currentShortname]"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- use the mapping variable to find the appropriate Old dataset concept -->
                    <xsl:sequence select="$currentOtherDatasetParent/concept[@shortName = $datasetConceptMap[not(@currentConceptId) or @currentConceptId = current()/@id][@currentDatasetConceptShortName = $currentShortname]/@otherDatasetConceptShortName]"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:getCurrentConceptLocalname" as="element()*">
        <!-- Attempts to find the current other dataset concept based on local-name of the in concept -->
        <xsl:param name="in" as="element()*">
            <!-- The element for which to find a match -->
        </xsl:param>
        <xsl:param name="currentOtherDatasetParent" as="element()*">
            <!-- The element in the other dataset, which is the parent in which to find the matching concept -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:sequence select="$currentOtherDatasetParent/*[local-name() = $in/local-name()]"/>
        </xsl:for-each>
    </xsl:function>
</xsl:stylesheet>
