<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:naf="http://www.nictiz.nl/ada-functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="#local.2024020614533789952620100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
        TBD
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

    <!-- shared stuff for ada handling -->

    <!-- ================================================================== -->

    <!-- Resolves an ada reference element (an element without subelements) to the element with contents it references to -->
    <xsl:function name="naf:resolve-ada-reference" as="element()?">
        <xsl:param name="in" as="element()?">
            <!-- The ada reference element -->
        </xsl:param>
        <xsl:for-each select="$in">
            <xsl:choose>
                <xsl:when test="./*">
                    <!-- this is not a reference let's return the input -->
                    <xsl:sequence select="."/>
                </xsl:when>
                <xsl:when test=".[not(@datatype) or @datatype = 'reference'][@value]">
                    <xsl:sequence select="(ancestor::*[parent::data]//*[local-name() = local-name($in)][@id = $in/@value])[1]"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:function>
</xsl:stylesheet>
