<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.mrc_4wk_jwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Test driver for the compare-documents step from ../compare.mod.xpl
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
    <!-- IMPORTS: -->

    <p:import href="../compare.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:output port="result" primary="true" sequence="false" content-types="xml"/>

    <!-- ======================================================================= -->
    <!-- OPTIONS: -->

    <p:option name="href1" as="xs:string" required="false" select="resolve-uri('dir1/doc1.xml', static-base-uri())"/>
    <p:option name="href2" as="xs:string" required="false" select="resolve-uri('dir2/doc1.xml', static-base-uri())"/>

    <!-- ================================================================== -->
    <!-- MAIN: -->
    
    <yatcs:compare-documents>
        <p:with-option name="href1" select="$href1"/> 
        <p:with-option name="href2" select="$href2"/> 
    </yatcs:compare-documents>

</p:declare-step>
