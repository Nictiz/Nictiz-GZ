<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.cf4_3xh_rzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Turns a general engine configuration file into a map.
       
       All /*/@* | /*/* | /*/*/@* will become entries with their local names as keys. 
       Boolean values (true/false) will be stored as boolean data, otherwise it will be a string.
       
       The schema must ensure that the names are unique! Only the first occurrence of a name is used.
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

    <xsl:output method="json" encoding="UTF-8"/>

    <xsl:mode on-no-match="fail"/>

    <xsl:include href="../../../xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:variable name="parnameSchematronSchema" as="xs:string" select="'data-file-schematron'"/>
    <xsl:variable name="defaultSchematronSchema" as="xs:string" select="resolve-uri('../../sch/general-engine-data.sch', static-base-uri()) => yatcs:href-canonical()"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        
        <!-- Expand everything in the configuration document into a map: -->
        <xsl:variable name="baseMap" as="map(*)">
            <xsl:map>
                <!-- Make sure we get no duplicates keys (probably not occurring anyway, but you never know) -->
                <xsl:for-each-group select="/*/@* | /*/* | /*/*/@*" group-by="local-name(.)">
                    <xsl:for-each select="current-group()[1]">
                        <xsl:variable name="valueRaw" as="xs:string" select="string(.)"/>
                        <xsl:variable name="value" as="xs:anyAtomicType">
                            <xsl:choose>
                                <xsl:when test="normalize-space($valueRaw) eq ''">
                                    <xsl:sequence select="''"/>
                                </xsl:when>
                                <xsl:when test="$valueRaw castable as xs:boolean">
                                    <xsl:sequence select="xs:boolean($valueRaw)"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:sequence select="$valueRaw"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <xsl:map-entry key="current-grouping-key()" select="$value"/>
                    </xsl:for-each>
                </xsl:for-each-group>
            </xsl:map>
        </xsl:variable>
        
        <!-- Take care of defaults: -->
        <xsl:variable name="defaultsMap" as="map(*)" select="map{$parnameSchematronSchema: $defaultSchematronSchema}"/>
        <xsl:sequence select="map:merge(($baseMap, $defaultsMap), map{'duplicates': 'use-first'})"/>
        
    </xsl:template>

</xsl:stylesheet>
