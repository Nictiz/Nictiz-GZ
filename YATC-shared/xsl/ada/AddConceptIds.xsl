<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032311044476553680100">
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

    <xsl:include href="../../xslmod/general.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <!-- de xsd variabelen worden gebruikt om de juiste conceptId's te vinden voor de ADA xml instance -->
    <xsl:param name="schemaFileString" as="xs:string" required="false" select="'../ada_schemas/sturen_medicatiegegevens.xsd'"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL VARIABLES: -->

    <xsl:variable name="schema" as="document-node()">
        <xsl:choose>
            <xsl:when test="doc-available($schemaFileString)">
                <xsl:sequence select="doc($schemaFileString)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('Schema for adding concept ids not found: ', yatcs:q($schemaFileString))"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="adaxml/data/*//*">
        <!-- Add missing conceptId to all elements in ada instance based on ada schema fixed value. -->
        <xsl:param name="in" as="element()" select=".">
            <!-- The input ada element for which to add conceptIds. Defaults to context. -->
        </xsl:param>
        <xsl:param name="schemaFragment" as="element(xs:complexType)?" select="nf:getADAComplexType($schema, nf:getADAComplexTypeName($schema, local-name(ancestor::adaxml/data/*)))">
            <!-- The schemaFragment of the parent of the current ada element. Defaults to the schemaFragment of the 
                 transaction (adaxml/data/*) when not given. This is needed for the top level dataset concepts. -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:variable name="elemName" select="local-name()"/>
            <xsl:variable name="newSchemaFragment" select="nf:getADAComplexType($schema, nf:getADAComplexTypeName($schemaFragment, $elemName))"/>

            <xsl:copy>
                <xsl:apply-templates select="@*"/>
                <xsl:if test="normalize-space(@conceptId) eq ''">
                    <xsl:copy-of select="nf:getADAComplexTypeConceptId($newSchemaFragment)"/>
                </xsl:if>
                <xsl:apply-templates select="node()">
                    <xsl:with-param name="schemaFragment" select="$newSchemaFragment"/>
                </xsl:apply-templates>

            </xsl:copy>
        </xsl:for-each>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:getADAComplexTypeConceptId" as="attribute(conceptId)?">
        <!-- Returns the fixed conceptId attribute value for a named XSD complexType -->
        <xsl:param name="schemaFragment" as="element(xs:complexType)?">
            <!-- XSD Schema to retrieve the xs:complexType from -->
        </xsl:param>
        <xsl:variable name="conceptId" select="$schemaFragment/xs:attribute[@name = 'conceptId']/@fixed"/>

        <xsl:if test="$conceptId">
            <xsl:attribute name="conceptId" select="$conceptId"/>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:existsADAComplexTypeId" as="xs:boolean?">
        <!-- Returns whether an @id attribute exists for a certain complexType in a schemaFragment -->
        <xsl:param name="schemaFragment" as="element(xs:complexType)?">
            <!-- XSD SchemaFragment with complexType to evaluate -->
        </xsl:param>
        <xsl:sequence select="exists($schemaFragment/xs:attribute[@name = 'id'])"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:getADAComplexTypeName" as="xs:string?">
        <!-- Returns the type value for a named XSD element -->
        <xsl:param name="schemaFragment" as="node()*">
            <!-- XSD Schema to retrieve the typed element from -->
        </xsl:param>
        <xsl:param name="elementName" as="xs:string?">
            <!-- Name of the element to retrieve the type for -->
        </xsl:param>
        <xsl:value-of select="$schemaFragment/(xs:sequence | xs:schema)/xs:element[@name = $elementName]/@type"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:getADAComplexType" as="element()?">
        <!-- Returns a named XSD complexType -->
        <xsl:param name="schema" as="node()*">
            <!-- XSD Schema to retrieve the typed element from -->
        </xsl:param>
        <xsl:param name="complexTypeName" as="xs:string?">
            <!-- Name of the xs:complexType to retrieve the conceptId for -->
        </xsl:param>
        <xsl:copy-of select="$schema//xs:complexType[@name = $complexTypeName]"/>
    </xsl:function>

</xsl:stylesheet>
