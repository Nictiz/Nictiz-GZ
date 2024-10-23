<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="http://www.xtpxlib.nl/ns/common/xslmod/compare/local" exclude-result-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This is a generic library for  comparing XML documents/elements.
       
       Its origin is the open source project https://common.xtpxlib.org/. 
       The namespace was changed for convenience reasons (so everything is in the YATC-shared namespace).
       Because of the external origin, some YATC naming conventions are not in use.
       
       Documentation (which uses the original namespace prefix xtlc) can be found here:  
       https://common.xtpxlib.org/2_XSLT_Modules.html#compare.mod.xsl
       
       Depends on:
       - general.mod.xsl
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
    <!-- LOCAL DECLARATIONS: -->

    <xsl:variable name="local:wildcardElmAttr" as="xs:string" select="'*'"/>

    <xsl:variable name="local:attMatchSeparator" as="xs:string" select="'/@'"/>

    <!-- ======================================================================= -->

    <xsl:template name="yatcs:compare-documents" as="element(yatcs:message)*">
        <!--~ 
            Compares two XML documents with each other:
            
            * Comments and processing instructions are ignored
            * Text nodes are normalized before comparison 
            * Empty text nodes (after normalization) are ignored
            * The comparison stops after the first difference is encountered. 
            * The result is either:
              * An empty set, when no differences found
              * One or more <yatcs:message> elements when differences were found (you can only get more than one message 
                on attribute differences)
        -->
        <xsl:param name="doc1" as="document-node()" required="yes">
            <!--~ First document to compare. -->
        </xsl:param>
        <xsl:param name="doc2" as="document-node()" required="yes">
            <!--~ Second document to compare. -->
        </xsl:param>
        <xsl:param name="compareRules" as="element()?" required="no" select="()">
            <!-- The compare rules. Must be valid against ../xsdmod/compare-rules.mod.xsd -->
        </xsl:param>

        <xsl:variable name="enableCompare" as="xs:boolean" select="yatcs:str2bln($compareRules/@enable-compare, true())"/>
        <xsl:if test="$enableCompare">
            <xsl:call-template name="local:compare-elements">
                <xsl:with-param name="elm1" select="$doc1/*"/>
                <xsl:with-param name="elm2" select="$doc2/*"/>
                <xsl:with-param name="compareRules" as="element()?" select="$compareRules" tunnel="yes"/>
            </xsl:call-template>
        </xsl:if>


    </xsl:template>

    <!-- ================================================================== -->

    <xsl:template name="local:compare-elements" as="element(yatcs:message)*">
        <xsl:param name="elm1" as="element()" required="yes"/>
        <xsl:param name="elm2" as="element()" required="yes"/>
        <xsl:param name="xpath" as="xs:string" required="no" select="''">
            <!-- XPath expression leading up to the elements to compare. -->
        </xsl:param>
        <xsl:param name="compareRules" as="element()?" required="yes" tunnel="yes"/>

        <xsl:if test="not(local:ignore-element($elm1, $compareRules))">
            <xsl:variable name="current-path" as="xs:string" select="concat($xpath, '/', name($elm1), local:elm-seq-nr-string($elm1))"/>
            <xsl:choose>
                <!-- Compare the element itself: -->
                <xsl:when test="not(local:elm-eq($elm1, $elm2))">
                    <xsl:call-template name="local:create-message">
                        <xsl:with-param name="msg-parts" select="('Elements differ at ', $current-path)"/>
                    </xsl:call-template>
                </xsl:when>
                <!-- Element itself checks out, check its attributes: -->
                <xsl:otherwise>
                    <xsl:variable name="att-compare-results" as="element(yatcs:message)*" select="local:compare-attributes($current-path, local-name($elm1), $elm1/@*, $elm2/@*, $compareRules)"/>
                    <xsl:choose>
                        <!-- Compare the attributes: -->
                        <xsl:when test="exists($att-compare-results)">
                            <xsl:sequence select="$att-compare-results"/>
                        </xsl:when>
                        <!-- This element checks out completely, go deeper -->
                        <xsl:otherwise>
                            <xsl:call-template name="local:compare-node-lists">
                                <xsl:with-param name="nodes1" select="$elm1/node()"/>
                                <xsl:with-param name="nodes2" select="$elm2/node()"/>
                                <xsl:with-param name="xpath" select="$current-path"/>
                            </xsl:call-template>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="local:compare-node-lists" as="element(yatcs:message)*">
        <xsl:param name="nodes1" as="node()*" required="yes"/>
        <xsl:param name="nodes2" as="node()*" required="yes"/>
        <xsl:param name="xpath" as="xs:string" required="yes"/>
        <xsl:param name="compareRules" as="element()?" required="yes" tunnel="yes"/>

        <xsl:variable name="node1" as="node()?" select="$nodes1[1]"/>
        <xsl:variable name="node2" as="node()?" select="$nodes2[1]"/>

        <xsl:choose>

            <!-- Nothing to compare: -->
            <xsl:when test="empty($nodes1) and empty($nodes2)">
                <!-- Ok -->
            </xsl:when>

            <!-- Do not compare on processing instructions and comments: -->
            <xsl:when test="($node1 instance of processing-instruction()) or ($node1 instance of comment())">
                <xsl:call-template name="local:compare-node-lists">
                    <xsl:with-param name="nodes1" select="subsequence($nodes1, 2)"/>
                    <xsl:with-param name="nodes2" select="$nodes2"/>
                    <xsl:with-param name="xpath" select="$xpath"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="($node2 instance of processing-instruction()) or ($node2 instance of comment())">
                <xsl:call-template name="local:compare-node-lists">
                    <xsl:with-param name="nodes1" select="$nodes1"/>
                    <xsl:with-param name="nodes2" select="subsequence($nodes2, 2)"/>
                    <xsl:with-param name="xpath" select="$xpath"/>
                </xsl:call-template>
            </xsl:when>

            <!-- Do not compare empty text nodes (after normalization): -->
            <xsl:when test="($node1 instance of text()) and (normalize-space($node1) eq '')">
                <xsl:call-template name="local:compare-node-lists">
                    <xsl:with-param name="nodes1" select="subsequence($nodes1, 2)"/>
                    <xsl:with-param name="nodes2" select="$nodes2"/>
                    <xsl:with-param name="xpath" select="$xpath"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="($node2 instance of text()) and (normalize-space($node2) eq '')">
                <xsl:call-template name="local:compare-node-lists">
                    <xsl:with-param name="nodes1" select="$nodes1"/>
                    <xsl:with-param name="nodes2" select="subsequence($nodes2, 2)"/>
                    <xsl:with-param name="xpath" select="$xpath"/>
                </xsl:call-template>
            </xsl:when>

            <!-- Elements: -->
            <xsl:when test="($node1 instance of element()) and ($node2 instance of element())">
                <xsl:variable name="compare-elements-result" as="element(yatcs:message)*">
                    <xsl:call-template name="local:compare-elements">
                        <xsl:with-param name="elm1" select="$node1"/>
                        <xsl:with-param name="elm2" select="$node2"/>
                        <xsl:with-param name="xpath" select="$xpath"/>
                    </xsl:call-template>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="exists($compare-elements-result)">
                        <xsl:sequence select="$compare-elements-result"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="local:compare-node-lists">
                            <xsl:with-param name="nodes1" select="subsequence($nodes1, 2)"/>
                            <xsl:with-param name="nodes2" select="subsequence($nodes2, 2)"/>
                            <xsl:with-param name="xpath" select="$xpath"/>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!-- Text nodes: -->
            <xsl:when test="($node1 instance of text()) and ($node2 instance of text())">
                <xsl:choose>
                    <xsl:when test="local:ignore-text-node-value($node1, $node2, $compareRules)">
                        <!-- Do not compare… -->
                    </xsl:when>
                    <xsl:when test="normalize-space($node1) ne normalize-space($node2)">
                        <xsl:call-template name="local:create-message">
                            <xsl:with-param name="msg-parts" select="('Text nodes differ on ', $xpath, ' (&quot;', normalize-space($node1), '&quot;, &quot;', normalize-space($node2), '&quot;)')"/>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="local:compare-node-lists">
                            <xsl:with-param name="nodes1" select="subsequence($nodes1, 2)"/>
                            <xsl:with-param name="nodes2" select="subsequence($nodes2, 2)"/>
                            <xsl:with-param name="xpath" select="$xpath"/>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!-- Can't compare: -->
            <xsl:otherwise>
                <xsl:call-template name="local:create-message">
                    <xsl:with-param name="msg-parts" select="('Unequal sets of child nodes at ', $xpath)"/>
                </xsl:call-template>
            </xsl:otherwise>

        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:compare-attributes" as="element(yatcs:message)*">
        <xsl:param name="xpath" as="xs:string"/>
        <xsl:param name="elmName" as="xs:string"/>
        <xsl:param name="attlist1" as="attribute()*"/>
        <xsl:param name="attlist2" as="attribute()*"/>
        <xsl:param name="compareRules" as="element()?"/>

        <xsl:choose>

            <!-- Must have the same number of attributes: -->
            <xsl:when test="count($attlist1) ne count($attlist2)">
                <xsl:call-template name="local:create-message">
                    <xsl:with-param name="msg-parts" select="('Number of attributes differs at ', $xpath)"/>
                </xsl:call-template>
            </xsl:when>

            <!-- Compare them one-by one: -->
            <xsl:otherwise>
                <xsl:for-each select="$attlist1">
                    <xsl:variable name="att" as="attribute()" select="."/>
                    <xsl:variable name="att-name" as="xs:string" select="local-name($att)"/>
                    <xsl:variable name="att-namespace" as="xs:anyURI" select="namespace-uri($att)"/>
                    <xsl:variable name="att-value" as="xs:string" select="string($att)"/>
                    <xsl:variable name="matching-att" as="attribute()?" select="$attlist2[local-name(.) eq $att-name][namespace-uri(.) eq $att-namespace]"/>
                    <xsl:variable name="matching-att-value" as="xs:string" select="string($matching-att)"/>

                    <xsl:choose>

                        <!-- Attribute missing: -->
                        <xsl:when test="empty($matching-att)">
                            <xsl:call-template name="local:create-message">
                                <xsl:with-param name="msg-parts" select="('Attribute ', $xpath, '/@', name($att), ' not present in both sets')"/>
                            </xsl:call-template>
                        </xsl:when>

                        <!-- Ignore attribute completely? -->
                        <xsl:when test="local:ignore-attribute($att, $compareRules)">
                            <!-- Ignore… -->
                        </xsl:when>

                        <!-- Ignore based on value? -->
                        <xsl:when test="local:ignore-attribute-value($att, $matching-att, $compareRules)">
                            <!-- Ignore… -->
                        </xsl:when>

                        <!-- Finally, straight compare: -->
                        <xsl:when test="$att-value ne $matching-att-value">
                            <xsl:call-template name="local:create-message">
                                <xsl:with-param name="msg-parts" select="('Values differ on attribute ', $xpath, '/@', name(.), ' (&quot;', $att-value, '&quot;, &quot;', string($matching-att), '&quot;)')"/>
                            </xsl:call-template>
                        </xsl:when>

                        <xsl:otherwise>
                            <!-- Ok! -->
                        </xsl:otherwise>

                    </xsl:choose>

                </xsl:for-each>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:elm-eq" as="xs:boolean">
        <xsl:param name="elm1" as="element()"/>
        <xsl:param name="elm2" as="element()"/>

        <xsl:sequence select="(local-name($elm1) eq local-name($elm2)) and (namespace-uri($elm1) eq namespace-uri($elm2))"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:elm-seq-nr-string" as="xs:string?">
        <!-- Determines a sequence number string for an XPath. When () it means that a sequence number is not necessary -->
        <xsl:param name="elm" as="element()"/>

        <xsl:variable name="seq-nr" as="xs:integer?">
            <xsl:choose>

                <!-- We have to display a sequence number when there are siblings with the same name: -->
                <xsl:when test="exists($elm/preceding-sibling::*[local:elm-eq(., $elm)]) or exists($elm/following-sibling::*[local:elm-eq(., $elm)])">
                    <xsl:sequence select="count($elm/preceding-sibling::*[local:elm-eq(., $elm)]) + 1"/>
                </xsl:when>

                <!-- No same siblings, no sequence number necessary... -->
                <xsl:otherwise>
                    <xsl:sequence select="()"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:sequence select="if (exists($seq-nr)) then concat('[', $seq-nr, ']') else ()"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="local:create-message">
        <xsl:param name="msg-parts" as="item()+" required="true"/>

        <yatcs:message>
            <xsl:value-of select="yatcs:items2str($msg-parts)"/>
        </yatcs:message>
    </xsl:template>

    <!-- ======================================================================= -->
    <!-- SUPPORT FOR HANDLING COMPARE RULES: -->

    <xsl:function name="local:ignore-element" as="xs:boolean">
        <xsl:param name="elm" as="element()"/>
        <xsl:param name="compareRules" as="element()?"/>

        <xsl:variable name="local-element-names-to-ignore" as="xs:string*" select="for $matches in $compareRules/*:ignore-elements/@simple-match return yatcs:str2seq(string($matches))"/>
        <xsl:sequence select="local:name-matches-name-in-list(local-name($elm), $local-element-names-to-ignore)"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:ignore-attribute" as="xs:boolean">
        <xsl:param name="att" as="attribute()"/>
        <xsl:param name="compareRules" as="element()?"/>

        <xsl:variable name="local-attribute-matches-to-ignore" as="xs:string*" select="for $matches in $compareRules/*:ignore-attributes/@simple-match return yatcs:str2seq(string($matches))"/>
        <xsl:sequence select="local:attribute-matches-name-in-list($att, $local-attribute-matches-to-ignore)"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:ignore-text-node-value" as="xs:boolean">
        <xsl:param name="text1" as="text()"/>
        <xsl:param name="text2" as="text()"/>
        <!-- Remark"The assumption here is that the parent elements of the text nodes have already been checked and therefore have the same name. -->
        <xsl:param name="compareRules" as="element()?"/>

        <xsl:variable name="ignores" as="xs:boolean*">
            <!-- Remark: This is not a vary efficient way to do this, since we go on comparing when we already have a match. However,
                 it is expected not to be noticeable, since these lists will be small. We can always refactor it to something more 
                 efficient (using recursion), if necessary. -->
            <xsl:for-each select="$compareRules/*:do-not-compare-text-nodes-on-match">
                <xsl:variable name="matching-parent-local-element-names" as="xs:string*" select="yatcs:str2seq(string(@simple-match))"/>
                <xsl:if test="local:name-matches-name-in-list(local-name($text1/..), $matching-parent-local-element-names)">
                    <xsl:sequence select="local:value-matches-regexp-attribute(string($text1), @regexp) and local:value-matches-regexp-attribute(string($text2), @regexp)"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>
        <xsl:sequence select="some $ignore in $ignores satisfies $ignore"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:ignore-attribute-value" as="xs:boolean">
        <xsl:param name="att1" as="attribute()"/>
        <xsl:param name="att2" as="attribute()"/>
        <!-- Remark: The assumption here is that $att1 and $att2 have the same name. This must be already checked! -->
        <xsl:param name="compareRules" as="element()?"/>

        <xsl:variable name="ignores" as="xs:boolean*">
            <xsl:for-each select="$compareRules/*:do-not-compare-attribute-values-on-match">
                <!-- Remark: Again, see above, not very efficient, for the same reasons. -->
                <xsl:variable name="matching-attributes" as="xs:string*" select="yatcs:str2seq(string(@simple-match))"/>
                <xsl:if test="local:attribute-matches-name-in-list($att1, $matching-attributes)">
                    <xsl:sequence select="local:value-matches-regexp-attribute(string($att1), @regexp) and local:value-matches-regexp-attribute(string($att2), @regexp)"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>
        <xsl:sequence select="some $ignore in $ignores satisfies $ignore"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:attribute-matches-name-in-list" as="xs:boolean">
        <xsl:param name="att" as="attribute()"/>
        <xsl:param name="localMatchList" as="xs:string*">
            <!-- List is composed of: elm-name/@att-name -->
        </xsl:param>

        <xsl:variable name="attName" as="xs:string" select="local-name($att)"/>
        <xsl:variable name="parentElmName" as="xs:string" select="local-name($att/..)"/>
        <xsl:variable name="matches" as="xs:boolean*">
            <xsl:for-each select="$localMatchList">
                <!-- Remark: Again, see above, not very efficient, for the same reasons. -->
                <xsl:variable name="elmCompareName" as="xs:string" select="substring-before(., $local:attMatchSeparator)"/>
                <xsl:variable name="attCompareName" as="xs:string" select="substring-after(., $local:attMatchSeparator)"/>
                <!-- The following if is a protection against incorrectly formatted entries: -->
                <xsl:if test="($elmCompareName ne '') and ($attCompareName ne '')">
                    <xsl:variable name="elmCompares" as="xs:boolean" select="($elmCompareName eq $local:wildcardElmAttr) or ($elmCompareName eq $parentElmName)"/>
                    <xsl:variable name="attCompares" as="xs:boolean" select="($attCompareName eq $local:wildcardElmAttr) or ($attCompareName eq $attName)"/>
                    <xsl:sequence select="$elmCompares and $attCompares"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>
        <xsl:sequence select="some $match in $matches satisfies $match"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:value-matches-regexp-attribute" as="xs:boolean">
        <xsl:param name="value" as="xs:string"/>
        <xsl:param name="regexp-attribute" as="attribute(regexp)?"/>

        <xsl:choose>
            <xsl:when test="empty($regexp-attribute) or (normalize-space($regexp-attribute) eq '')">
                <!-- If there is not @regexp, everything matches! -->
                <xsl:sequence select="true()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="matches($value, string($regexp-attribute))"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:name-matches-name-in-list" as="xs:boolean">
        <xsl:param name="name" as="xs:string"/>
        <xsl:param name="localNameList" as="xs:string*"/>

        <xsl:sequence select="($local:wildcardElmAttr = $localNameList) or ($name = $localNameList)"/>
    </xsl:function>

</xsl:stylesheet>
