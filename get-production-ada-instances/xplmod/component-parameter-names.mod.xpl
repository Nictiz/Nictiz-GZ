<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.wkq_fml_lwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Defines the component's parameter names, as defined in ../data/parameters.xml
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

    <p:option static="true" name="yatci:parnameApplicationAdaRetrievalDataDocument" as="xs:string" select="'applicationAdaRetrievalDataDocument'"/>
    <p:option static="true" name="yatci:parnameServerForAdaRetrievalBaseUri" as="xs:string" select="'serverForAdaRetrievalBaseUri'"/>
    <p:option static="true" name="yatci:parnameGetDataRestCallUri" as="xs:string" select="'getDataRestCallUri'"/>
    <p:option static="true" name="yatci:parnameStoreAdaIndexFiles" as="xs:string" select="'storeAdaIndexFiles'"/>

</p:library>
