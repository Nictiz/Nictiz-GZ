<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.uxz_czy_gwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This XProc library simply defines the names of the shared parameters coming from ../data/parameters.xml
       and the automatic ones.
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
    <!-- Parameters added and filled by the parameter system: -->

    <p:option static="true" name="yatcs:parnameBaseUri" as="xs:string" select="'baseUri'"/>
    <p:option static="true" name="yatcs:parnameBaseDriveRoot" as="xs:string" select="'baseDriveRoot'"/>
    <p:option static="true" name="yatcs:parnameYatcBaseDirectory" as="xs:string" select="'yatcBaseDirectory'"/>
    <p:option static="true" name="yatcs:parnameYatcRepositoryDirectory" as="xs:string" select="'yatcRepositoryDirectory'"/>
    <p:option static="true" name="yatcs:parnameYatcRepositoryName" as="xs:string" select="'yatcRepositoryName'"/>
    <p:option static="true" name="yatcs:parnameYatcComponentDirectory" as="xs:string" select="'yatcComponentDirectory'"/>
    <p:option static="true" name="yatcs:parnameYatcComponentName" as="xs:string" select="'yatcComponentName'"/>

    <!-- ======================================================================= -->
    <!-- Parameters from YATC-shared/data/parameters.xml: -->
    <p:option static="true" name="yatcs:parnameHL7-mappingsDirectory" as="xs:string" select="'HL7-mappingsDirectory'"/>
    <p:option static="true" name="yatcs:parnameArt_decorDirectory" as="xs:string" select="'art_decorDirectory'"/>
    <p:option static="true" name="yatcs:parnameYatcSharedDirectory" as="xs:string" select="'yatcSharedDirectory'"/>
    <p:option static="true" name="yatcs:parnameYatcInternalDirectory" as="xs:string" select="'yatcInternalDirectory'"/>
    <p:option static="true" name="yatcs:parnameYatcPublicDirectory" as="xs:string" select="'yatcPublicDirectory'"/>
    <p:option static="true" name="yatcs:parnameAORTADirectory" as="xs:string" select="'AORTADirectory'"/>

    <p:option static="true" name="yatcs:parnameInternalBaseStorageDirectory" as="xs:string" select="'internalBaseStorageDirectory'"/>
    <p:option static="true" name="yatcs:parnamePublicBaseStorageDirectory" as="xs:string" select="'publicBaseStorageDirectory'"/>
    <p:option static="true" name="yatcs:parnamePublicBaseDistributionDirectory" as="xs:string" select="'publicBaseDistributionDirectory'"/>

    <p:option static="true" name="yatcs:parnameProductionAdaInstancesBaseStorageDirectory" as="xs:string" select="'productionAdaInstancesBaseStorageDirectory'"/>
    <p:option static="true" name="yatcs:parnameProductionAdaInstancesDataSubdir" as="xs:string" select="'productionAdaInstancesDataSubdir'"/>
    <p:option static="true" name="yatcs:parnameAdarefs2adaBaseStorageDirectory" as="xs:string" select="'adarefs2adaBaseStorageDirectory'"/>
    <p:option static="true" name="yatcs:parnameProjectsBaseStorageDirectory" as="xs:string" select="'projectsBaseStorageDirectory'"/>

    <p:option static="true" name="yatcs:parnameStoreProcessedApplicationData" as="xs:string" select="'storeProcessedApplicationData'"/>

    <p:option static="true" name="yatcs:parnameArtDecorRepoForComparisonsBaseDirectory" as="xs:string" select="'ArtDecorRepoForComparisonsBaseDirectory'"/>
    <p:option static="true" name="yatcs:parnameHL7MappingsRepoForComparisonsBaseDirectory" as="xs:string" select="'HL7MappingsRepoForComparisonsBaseDirectory'"/>
    <p:option static="true" name="yatcs:parnameMappingsRepoForComparisonsBaseDirectory" as="xs:string" select="'mappingsRepoForComparisonsBaseDirectory'"/>
    <p:option static="true" name="yatcs:parnameYatcDocumentCompareRules" as="xs:string" select="'yatcDocumentCompareRules'"/>

</p:library>
