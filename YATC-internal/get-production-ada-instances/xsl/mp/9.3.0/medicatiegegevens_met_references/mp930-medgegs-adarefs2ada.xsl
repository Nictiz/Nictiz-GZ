<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.202303210848561961910100">
    <!-- WATCH OUT: References a stylesheet in mp/9.2.0, which does most of the actual conversions... -->
    <xsl:import href="../../9.2.0/medicatiegegevens_met_references/mp920-medgegs-adarefs2ada.xsl"/>
    
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp/9.3.0 adarefs2ada builds.
        
        Input is the ADA document to transform. 
        It then takes a working set of ADA documents (passed in as parameter $adaWorkingSet) and transforms these, using 
        information from the input document.
        
        The output is a sequence of secondary documents (using <xsl:result-document>). The actual stylesheet output can be discarded.
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

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:strip-space elements="*"/>


    <xsl:param name="ada-input" as="document-node()" required="false" select="/">
        <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
    </xsl:param>

    <!-- ======================================================================= -->

<!--    <!-\- override the adaWorkingSetDirectory and outputDirectory parameter for unit testing purposes -\->
    <xsl:param name="adaWorkingSetDirectory" as="xs:string" required="false" select="resolve-uri('../../../../../../art_decor/adarefs2ada/mp/9.3.0/beschikbaarstellen_medicatiegegevens/ada_instance_repo', static-base-uri())">
        <!-\- The name of the directory containing the working set of ADA documents used in the processing of this stylesheet. 
             As defined by the build/ada-working-set element. 
        -\->
    </xsl:param>
    <!-\- also the outputdir -\->
    <xsl:param name="outputDirectory" as="xs:string" required="false" select="'../temp/out'">
        <!-\- The full absolute name of the output directory for this build (as specified in the build/output element)
             For instance 'file:///…/lab/3.0.0/beschikbaarstellen_laboratoriumresultaten/ada_instance'. 
        -\->
    </xsl:param>
    <xsl:param name="outputDirectoryRaadplegen" as="xs:string" required="false" select="'../temp/out'">
        <!-\- The full absolute name of the output directory for this build (as specified in the build/output element)
             For instance 'file:///…/lab/3.0.0/beschikbaarstellen_laboratoriumresultaten/ada_instance'. 
        -\->
    </xsl:param>-->


    <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
        <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
    </xsl:variable>

    <xsl:param name="versionDir">9.3.0</xsl:param>
    <xsl:param name="transactionRef">2.16.840.1.113883.2.4.3.11.60.20.77.4.374</xsl:param>
    <xsl:param name="transactionEffectiveDate">2022-06-30T00:00:00</xsl:param>

    <xsl:variable name="concat2id">mg-</xsl:variable>

    <!-- override the starting template in 920 to add support for 930 new stuff -->
    <xsl:template match="/">
        <!-- Template to start conversion. Input is ada instance of transaction 'medicatiegegevens_met_references'. 
             Outputs ada instance beschikbaarstellen_medicatiegegevens in the given output directory  -->

        <xsl:for-each select="$ada-input/adaxml/data/*/subscenario[string-length(scenario-nr/@value) gt 0]">
            <!-- Variable resolved-ada-input which contains medicatie_gegevens type transaction (with full patient/ma/vv/ta/mve) 
                 rather than the references type transaction (with only identifiers for patient/ma/vv/ta/mve-->

            <xsl:variable name="resolvedAdaInput" as="node()*">
                <xsl:apply-templates select="." mode="copy-for-resolve"/>
            </xsl:variable>

            <xsl:if test="string-length($outputDirectory) gt 0">
                <xsl:result-document href="{$outputDirectory}/{concat($resolvedAdaInput/data/*/@id, '.xml')}">
                    <xsl:copy-of select="$resolvedAdaInput"/>
                </xsl:result-document>
            </xsl:if>

            <!-- NICTIZ-1910 if there is more than one type of bouwsteen in the ada instance, then we also want to split into a result instance per type of bouwsteen -->
            <xsl:if test="count($resolvedAdaInput/data/*/distinct-values(medicamenteuze_behandeling/*[not(self::identificatie)]/local-name())) gt 1">
                <!-- more then one type bouwsteen, let's make additional files split on type bouwsteen -->
                <xsl:for-each-group select="$resolvedAdaInput/data/*/medicamenteuze_behandeling/*[not(self::identificatie)]" group-by="local-name()">
                    <xsl:result-document href="{$outputDirectory}/{concat(narf:new-id-for-split($resolvedAdaInput/data/*/@id, current-grouping-key()), '.xml')}">
                        <xsl:apply-templates select="$resolvedAdaInput" mode="copy-for-split"/>
                    </xsl:result-document>
                </xsl:for-each-group>
            </xsl:if>
            
        </xsl:for-each>
        
        <!-- ada instance for raadplegen_medicatiegegevens, we group per scenario, rather than per subscenario -->
        <!-- Variable resolved-ada-input which contains medicatie_gegevens type transaction (with full patient/ma/vv/ta/mve) 
             rather than the references type transaction (with only identifiers for patient/ma/vv/ta/mve-->
        <xsl:if test="string-length($outputDirectoryRaadplegen) gt 0">
            
            <xsl:for-each select="$ada-input/adaxml/data/*">
                
                <xsl:variable name="resolvedAdaInput" as="node()*">
                    <xsl:apply-templates select="." mode="copy-for-resolve-raadplegen"/>
                </xsl:variable>
                <xsl:result-document href="{$outputDirectoryRaadplegen}/{concat($resolvedAdaInput/data/*/@id, '.xml')}">
                    <xsl:copy-of select="$resolvedAdaInput"/>
                </xsl:result-document>
                
                <!-- NICTIZ-1910 if there is more than one type of bouwsteen in the ada instance, then we also want to split into a result instance per type of bouwsteen -->
                <xsl:if test="count($resolvedAdaInput/data/*/distinct-values(medicamenteuze_behandeling/*[not(self::identificatie)]/local-name())) gt 1">
                    <!-- more then one type bouwsteen, let's make additional files split on type bouwsteen -->
                    <xsl:for-each-group select="$resolvedAdaInput/data/*/medicamenteuze_behandeling/*[not(self::identificatie)]" group-by="local-name()">
                        <xsl:result-document href="{$outputDirectoryRaadplegen}/{concat(narf:new-id-for-split($resolvedAdaInput/data/*/@id, current-grouping-key()), '.xml')}">
                            <xsl:apply-templates select="$resolvedAdaInput" mode="copy-for-split"/>
                        </xsl:result-document>
                    </xsl:for-each-group>
                </xsl:if>   
                
            </xsl:for-each>
            
        </xsl:if>               
    </xsl:template>
    
    <xsl:template match="data/*/@id" mode="copy-for-split">
        <!-- make new id -->
        <xsl:attribute name="id" select="narf:new-id-for-split(., current-grouping-key())"></xsl:attribute>
    </xsl:template>
    

</xsl:stylesheet>
