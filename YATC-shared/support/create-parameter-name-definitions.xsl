<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xslout="#xslout" xmlns:p="http://www.w3.org/ns/xproc" xmlns:local="#local.nnp_214_mwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet takes a YATC parameter file as its input and produces a small XML document with list of 
       variable/option definitions for the parameter names, using the conventions for this.
       
       You can simply copy/paste the right lines into the appropriate XSLT stylesheet or XProc step/library.
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

    <xsl:mode on-no-match="fail"/>

    <xsl:namespace-alias stylesheet-prefix="xslout" result-prefix="xsl"/>

    <!-- ================================================================== -->

    <xsl:param name="prefix" as="xs:string" required="false" select="'yatcs'">
        <!-- Prefix used for the namespace of the variable/option names. -->
    </xsl:param>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <parameter-name-defs sourc="{base-uri(/)}" timestamp="{current-dateTime()}">
            <xsl:namespace name="p" select="'http://www.w3.org/ns/xproc'"/>

            <xsl:comment> == XSL == </xsl:comment>
            <xsl:for-each select="/*/yatcs:parameter">
                <xsl:variable name="parname" as="xs:string" select="@name"/>
                <xslout:variable name="{local:varname($parname)}" as="xs:string" select="'{$parname}'"/>
            </xsl:for-each>

            <xsl:comment> == XPROC == </xsl:comment>
            <xsl:for-each select="/*/yatcs:parameter">
                <xsl:variable name="parname" as="xs:string" select="@name"/>
                <p:option static="true" name="{local:varname($parname)}" as="xs:string" select="'{$parname}'"/>
            </xsl:for-each>

        </parameter-name-defs>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:varname" as="xs:string">
        <xsl:param name="parname" as="xs:string"/>

        <xsl:variable name="parts" as="xs:string+">
            <xsl:sequence select="$prefix"/>
            <xsl:sequence select="':'"/>
            <xsl:sequence select="'parname'"/>
            <xsl:sequence select="upper-case(substring($parname, 1, 1))"/>
            <xsl:sequence select="substring($parname, 2)"/>
        </xsl:variable>
        <xsl:sequence select="string-join($parts)"/>
    </xsl:function>

</xsl:stylesheet>
