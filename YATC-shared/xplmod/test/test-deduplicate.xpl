<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.md1_yxv_wwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
      Test driver for yatcs:deduplicate-document-sequence
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

    <p:import href="../yatc-general.mod.xpl"/>

    <!-- ======================================================================= -->

    <!-- Construct a sequence with duplicate entries: -->
    <p:identity>
        <p:with-input>
            <p:document href="{static-base-uri()}"/>
            <p:document href="{static-base-uri()}"/>
            <p:document href="{resolve-uri('test-copy-dir.xpl', static-base-uri())}"/>
            <p:document href="{resolve-uri('test-copy-dir.xpl', static-base-uri())}"/>
        </p:with-input>
    </p:identity>

    <p:variable name="count" as="xs:integer" select="count(collection())" collection="true"></p:variable>
    <p:for-each message="INPUT {$count}:">
        <p:identity message="* {base-uri(/)}"/>
    </p:for-each>
    
    <yatcs:deduplicate-document-sequence/>
    
    <p:variable name="count" as="xs:integer" select="count(collection())" collection="true"></p:variable>
    <p:for-each message="OUTPUT {$count}:">
        <p:identity message="* {base-uri(/)}"/>
    </p:for-each>

</p:declare-step>
