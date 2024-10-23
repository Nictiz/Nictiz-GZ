<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.drv_rb4_mwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
        Defines the component's parameter names as defined in ../data/parameters.xml
        
        Also defines the standard parameters (the ones added automatically by the parameter system). 
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
    <!-- Names of automatic parameters: -->
    
    <xsl:variable name="yatcs:parnameBaseUri" as="xs:string" select="'baseUri'"/>
    <xsl:variable name="yatcs:parnameBaseDriveRoot" as="xs:string" select="'baseDriveRoot'"/>
    <xsl:variable name="yatcs:parnameYatcBaseDirectory" as="xs:string" select="'yatcBaseDirectory'"/>
    <xsl:variable name="yatcs:parnameYatcRepositoryDirectory" as="xs:string" select="'yatcRepositoryDirectory'"/>
    <xsl:variable name="yatcs:parnameYatcRepositoryName" as="xs:string" select="'yatcRepositoryName'"/>
    <xsl:variable name="yatcs:parnameYatcComponentDirectory" as="xs:string" select="'yatcComponentDirectory'"/>
    <xsl:variable name="yatcs:parnameYatcComponentName" as="xs:string" select="'yatcComponentName'"/>
    <xsl:variable name="yatcs:parnameYatcComponentNameShortened" as="xs:string" select="'yatcComponentNameShortened'"/>
    <xsl:variable name="yatcs:parnameYatcComponentNameTraditional" as="xs:string" select="'yatcComponentNameTraditional'"/>

    <!-- ======================================================================= -->
    <!-- Names of the parameters defined in YATC-shared/data/parameters.xml -->
    
    <xsl:variable name="yatcs:parnameHL7-mappingsDirectory" as="xs:string" select="'HL7-mappingsDirectory'"/>
    <xsl:variable name="yatcs:parnameArt_decorDirectory" as="xs:string" select="'art_decorDirectory'"/>
    <xsl:variable name="yatcs:parnameYatcSharedDirectory" as="xs:string" select="'yatcSharedDirectory'"/>
    <xsl:variable name="yatcs:parnameYatcInternalDirectory" as="xs:string" select="'yatcInternalDirectory'"/>
    <xsl:variable name="yatcs:parnameYatcPublicDirectory" as="xs:string" select="'yatcPublicDirectory'"/>
    <xsl:variable name="yatcs:parnameAORTADirectory" as="xs:string" select="'AORTADirectory'"/>
    
    <xsl:variable name="yatcs:parnameInternalBaseStorageDirectory" as="xs:string" select="'internalBaseStorageDirectory'"/>
    <xsl:variable name="yatcs:parnamePublicBaseStorageDirectory" as="xs:string" select="'publicBaseStorageDirectory'"/>
    <xsl:variable name="yatcs:parnamePublicBaseDistributionDirectory" as="xs:string" select="'publicBaseDistributionDirectory'"/>
    
    <xsl:variable name="yatcs:parnameProductionAdaInstancesBaseStorageDirectory" as="xs:string" select="'productionAdaInstancesBaseStorageDirectory'"/>
    <xsl:variable name="yatcs:parnameProductionAdaInstancesDataSubdir" as="xs:string" select="'productionAdaInstancesDataSubdir'"/>
    <xsl:variable name="yatcs:parnameAdarefs2adaBaseStorageDirectory" as="xs:string" select="'adarefs2adaBaseStorageDirectory'"/>
    <xsl:variable name="yatcs:parnameProjectsBaseStorageDirectory" as="xs:string" select="'projectsBaseStorageDirectory'"/>
    
    <xsl:variable name="yatcs:parnameStoreProcessedApplicationData" as="xs:string" select="'storeProcessedApplicationData'"/>

    <xsl:variable name="yatcs:parnameArtDecorRepoForComparisonsBaseDirectory" as="xs:string" select="'ArtDecorRepoForComparisonsBaseDirectory'"/>
    <xsl:variable name="yatcs:parnameHL7MappingsRepoForComparisonsBaseDirectory" as="xs:string" select="'HL7MappingsRepoForComparisonsBaseDirectory'"/>
    <xsl:variable name="yatcs:parnameMappingsRepoForComparisonsBaseDirectory" as="xs:string" select="'mappingsRepoForComparisonsBaseDirectory'"/>
    <xsl:variable name="yatcs:parnameYatcDocumentCompareRules" as="xs:string" select="'yatcDocumentCompareRules'"/>
    
</xsl:stylesheet>
