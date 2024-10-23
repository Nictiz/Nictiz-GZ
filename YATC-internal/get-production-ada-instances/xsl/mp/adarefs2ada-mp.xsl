<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:util="urn:hl7:utilities" xmlns:narf="http://www.nictiz.nl/adarefs-functions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023032108485629615930100">
    <xsl:import href="../utils/adarefs_2_ada.xsl"/>
    <xsl:import href="../../../../YATC-shared/xsl/util/utilities.xsl"/>
    <!-- ================================================================== -->
    <!--
        This is the stylesheet with generic code for mp adarefs2ada builds.
        
        Meant to be imported from a higher/more specific stylesheet.
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

    <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada_input -->
    <xsl:param name="inputFulladaFiles" as="document-node()*" required="false" select="()">
        <!-- Must be overridden when importing this file! -->
    </xsl:param>

    <xsl:variable name="mapBouwstenen" as="element()*">
        <map adaName="medicatieafspraak" shortName="MA"/>
        <map adaName="verstrekkingsverzoek" shortName="VV"/>
        <map adaName="wisselend_doseerschema" shortName="WDS"/>
        <map adaName="toedieningsafspraak" shortName="TA"/>
        <map adaName="medicatieverstrekking" shortName="MVE"/>
        <map adaName="medicatiegebruik" shortName="MGB"/>
        <!-- older ada name 9.0.7 -->
        <map adaName="medicatie_gebruik" version="9.0.7" shortName="MGB"/>
        <map adaName="medicatietoediening" shortName="MTD"/>
        <!-- older ada name 9.0.7 -->
        <map adaName="medicatie_toediening" version="9.0.7" shortName="MTD"/>
    </xsl:variable>


    <!-- ======================================================================= -->

    <xsl:variable name="resolvedPatient" as="element()?">
        <xsl:variable name="inPatientId" as="element()?" select="$ada-input/adaxml/data/*/patient-id"/>
        <xsl:choose>
            <xsl:when test="$inPatientId/@value">
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*/patient[identificatienummer[@value = $inPatientId/@value][@root = $inPatientId/@root]])[1]"/>
            </xsl:when>
            <xsl:when test="$ada-input//data/*//medicatieafspraak/medicatieafspraak-id/@value">
                <!-- no patient id given in references transaction, let's find a (default repo) patient using the mbh-id's -->
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/medicatieafspraak/identificatie/@value = $ada-input//data/*//medicatieafspraak/medicatieafspraak-id/@value]/patient)[1]"/>
            </xsl:when>
            <xsl:when test="$ada-input//data/*//wisselend_doseerschema/wisselend_doseerschema-id/@value">
                <!-- no patient id given in references transaction, let's find a (default repo) patient using the mbh-id's -->
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/wisselend_doseerschema/identificatie/@value = $ada-input//data/*//wisselend_doseerschema/wisselend_doseerschema-id/@value]/patient)[1]"/>
            </xsl:when>
            <xsl:when test="$ada-input//data/*//verstrekkingsverzoek/verstrekkingsverzoek-id/@value">
                <!-- no patient id given in references transaction, let's find a (default repo) patient using the mbh-id's -->
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/verstrekkingsverzoek/identificatie/@value = $ada-input//data/*//verstrekkingsverzoek/verstrekkingsverzoek-id/@value]/patient)[1]"/>
            </xsl:when>
            <xsl:when test="$ada-input//data/*//toedieningsafspraak/toedieningsafspraak-id/@value">
                <!-- no patient id given in references transaction, let's find a (default repo) patient using the mbh-id's -->
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/toedieningsafspraak/identificatie/@value = $ada-input//data/*//toedieningsafspraak/toedieningsafspraak-id/@value]/patient)[1]"/>
            </xsl:when>
            <xsl:when test="$ada-input//data/*//(medicatieverstrekking | verstrekking)/verstrekking-id/@value">
                <!-- no patient id given in references transaction, let's find a (default repo) patient using the mbh-id's -->
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/(medicatieverstrekking | verstrekking)/identificatie/@value = $ada-input//data/*//(medicatieverstrekking | verstrekking)/verstrekking-id/@value]/patient)[1]"/>
            </xsl:when>
            <xsl:when test="$ada-input//data/*//(medicatie_gebruik | medicatiegebruik)/medicatie_gebruik-id/@value">
                <!-- no patient id given in references transaction, let's find a (default repo) patient using the mbh-id's -->
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/(medicatie_gebruik | medicatiegebruik)/identificatie/@value = $ada-input//data/*//(medicatie_gebruik | medicatiegebruik)/medicatie_gebruik-id/@value]/patient)[1]"/>
            </xsl:when>
            <xsl:when test="$ada-input//data/*//medicatietoediening/medicatietoediening-id/@value">
                <!-- no patient id given in references transaction, let's find a (default repo) patient using the mbh-id's -->
                <xsl:sequence select="($inputFulladaFiles/adaxml/data/*[medicamenteuze_behandeling/medicatietoediening/identificatie/@value = $ada-input//data/*//medicatietoediening/medicatietoediening-id/@value]/patient)[1]"/>
            </xsl:when>
        </xsl:choose>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="
            (medicatieafspraak | medicatie_gebruik | medicatiegebruik | medicatieverstrekking | toedieningsafspraak | verstrekking | verstrekkingsverzoek | wisselend_doseerschema | medicatietoediening)/identificatie
            | (verstrekkingsverzoek | toedieningsafspraak)/relatie_naar_medicatieafspraak/identificatie
            | (verstrekkingsverzoek | toedieningsafspraak | medicatieafspraak | medicatiegebruik | wisselend_doseerschema | medicatietoediening)/relatie_medicatieafspraak/identificatie
            | medicatieafspraak/relatie_naar_afspraak_of_gebruik/*
            | (medicatieafspraak | medicatiegebruik | medicatietoediening)/relatie_toedieningsafspraak/identificatie
            | medicatieafspraak/relatie_medicatiegebruik/identificatie
            | (wisselend_doseerschema | medicatietoediening)/relatie_wisselend_doseerschema/identificatie
            | verstrekking/relatie_naar_verstrekkingsverzoek/identificatie
            | medicatieverstrekking/relatie_verstrekkingsverzoek/identificatie
            | (medicatiegebruik | medicatie_gebruik)/gerelateerde_afspraak/*
            | (medicatiegebruik | medicatie_gebruik)/gerelateerde_verstrekking/identificatie
            | medicatiegebruik/relatie_medicatieverstrekking/identificatie
            " mode="copy-for-override">

        <!--  Append patient shortName to id  -->
        <xsl:param name="in" select=".">
            <!-- The ada identificatie in which to append. Defaults to context. -->
        </xsl:param>
        <xsl:param name="resolvedAdaPatient" as="element(patient)?">
            <!-- The resolved ada patient. Defaults to $resolvedPatient when empty or not given, for one patient conversions -->
        </xsl:param>
        <xsl:param name="overrideElement" as="element()*">
            <!-- The element that contains the overriding parts if any -->
        </xsl:param>

        <xsl:variable name="thePatient" as="element(patient)?">
            <xsl:choose>
                <xsl:when test="not(empty($resolvedAdaPatient))">
                    <xsl:sequence select="$resolvedAdaPatient"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:sequence select="$resolvedPatient"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:for-each select="$in">

            <xsl:variable name="adaRefsBouwsteen" select="$overrideElement"/>
            <xsl:copy>
                <xsl:apply-templates select="@*" mode="copy-for-override">
                    <xsl:with-param name="overrideElement" select="$overrideElement" as="element()*"/>
                </xsl:apply-templates>
                <!-- now let's see if we want to update this id -->
                <xsl:choose>
                    <!-- override in reference transaction? -->
                    <xsl:when test="string-length($adaRefsBouwsteen/ancestor::data/*/patient-afko/@value) gt 0">
                        <xsl:attribute name="value" select="concat(@value, '-', $adaRefsBouwsteen/ancestor::data/*/patient-afko/@value)"/>
                    </xsl:when>
                    <!-- patient-afko in resolved patient? -->
                    <xsl:when test="string-length($thePatient/patient-afko/@value) gt 0">
                        <xsl:attribute name="value" select="concat(@value, '-', $thePatient/patient-afko/@value)"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- do nothing, we already copied the original id/@value -->
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:copy>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="medicatieafspraak | medicatie_gebruik | medicatiegebruik | wisselend_doseerschema" mode="copy-for-override">
        <!--  Add kopie-indicator  -->
        <xsl:param name="in" select=".">
            <!-- The bouwsteen in which to add the kopie-indicator. Defaults to context. -->
        </xsl:param>
        <xsl:param name="resolvedAdaPatient" as="element(patient)?">
            <!-- The resolved ada patient for when handling more than one patient. Optional when handling one patient. -->
        </xsl:param>
        <xsl:param name="overrideElement" as="element()*">
            <!-- The element that contains the overriding parts if any -->
        </xsl:param>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="copy-for-override"/>

            <!-- kopie-indicator must be placed just before toelichting, which is the last element, 
                pass a long a possible passed resolved patient for appending patient shortname to identificatie -->
            <xsl:apply-templates select="node()[not(local-name() = ('kopie_indicator', 'toelichting'))]" mode="copy-for-override">
                <xsl:with-param name="resolvedAdaPatient" select="$resolvedAdaPatient"/>
                <xsl:with-param name="overrideElement" select="$overrideElement"/>
            </xsl:apply-templates>

            <xsl:variable name="adaRefsBouwsteen" select="$overrideElement"/>
            <xsl:choose>
                <xsl:when test="$adaRefsBouwsteen/kopie-indicator[@value]">
                    <kopie_indicator value="{$adaRefsBouwsteen/kopie-indicator/@value}">
                        <xsl:attribute name="conceptId">
                            <xsl:choose>
                                <!-- MA MP9 2.0 -->
                                <xsl:when test="@conceptId = '2.16.840.1.113883.2.4.3.11.60.20.77.2.4.43'">2.16.840.1.113883.2.4.3.11.60.20.77.2.4.273</xsl:when>
                                <!-- WDS MP9 2.0 -->
                                <xsl:when test="@conceptId = '2.16.840.1.113883.2.4.3.11.60.20.77.2.4.632'">2.16.840.1.113883.2.4.3.11.60.20.77.2.4.693</xsl:when>
                                <!-- TA MP9 2.0 -->
                                <xsl:when test="@conceptId = ('2.16.840.1.113883.2.4.3.11.60.20.77.2.4.294', '2.16.840.1.113883.2.4.3.11.999.77.2.4.294.1.2')">2.16.840.1.113883.2.4.3.11.60.20.77.2.4.345</xsl:when>
                                <!-- MGB MP9 2.0 -->
                                <xsl:when test="@conceptId = '2.16.840.1.113883.2.4.3.11.60.20.77.2.4.362'">2.16.840.1.113883.2.4.3.11.60.20.77.2.4.418</xsl:when>
                                <!-- MA MP 9.0.7 -->
                                <xsl:when test="@conceptId = '2.16.840.1.113883.2.4.3.11.60.20.77.2.3.9580'">2.16.840.1.113883.2.4.3.11.60.20.77.2.3.23411</xsl:when>
                                <!-- TA MP 9.0.7 -->
                                <xsl:when test="@conceptId = '2.16.840.1.113883.2.4.3.11.60.20.77.2.3.20132'">2.16.840.1.113883.2.4.3.11.60.20.77.2.23412</xsl:when>
                                <!-- MGB MP 9.0.7 -->
                                <xsl:when test="@conceptId = '2.16.840.1.113883.2.4.3.11.60.20.77.2.3.21338'">2.16.840.1.113883.2.4.3.11.60.20.77.2.3.23413</xsl:when>
                            </xsl:choose>
                        </xsl:attribute>
                    </kopie_indicator>
                </xsl:when>
                <xsl:otherwise>
                    <!-- use the original kopie-indicator -->
                    <xsl:apply-templates select="kopie_indicator" mode="copy-for-override"/>
                </xsl:otherwise>
            </xsl:choose>
            <!-- toelichting is the last child of medicatieafspraak / medicatie_gebruik, so lets copy that one as the last one -->
            <xsl:apply-templates select="toelichting" mode="copy-for-override">
                <xsl:with-param name="overrideElement" select="$overrideElement" as="element()*"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="toedieningsafspraak" mode="copy-for-override">
        <!-- Add kopie-indicator  -->
        <xsl:param name="in" select=".">
            <!-- The bouwsteen in which to add the kopie-indicator. Defaults to context. -->
        </xsl:param>
        <xsl:param name="resolvedAdaPatient" as="element(patient)?">
            <!-- The resolved ada patient for when handling more than one patient. Optional when handling one patient. -->
        </xsl:param>
        <xsl:param name="overrideElement" as="element()*">
            <!-- The element that contains the overriding parts if any -->
        </xsl:param>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="copy-for-override"/>
            <!-- kopie-indicator must be placed just before relatie_naar_medicatieafspraak, which is almost the last element -->
            <xsl:apply-templates select="node()[not(local-name() = ('kopie_indicator', 'relatie_naar_medicatiefspraak', 'relatie_medicatieafspraak', 'relatie_toedieningsafspraak'))]" mode="copy-for-override">
                <xsl:with-param name="resolvedAdaPatient" select="$resolvedAdaPatient"/>
                <xsl:with-param name="overrideElement" select="$overrideElement"/>
            </xsl:apply-templates>

            <xsl:variable name="adaRefsBouwsteen" select="narf:get-override-bouwsteen(., 'toedieningsafspraak-id')"/>
            <xsl:choose>
                <xsl:when test="$adaRefsBouwsteen/kopie-indicator[@value]">
                    <kopie_indicator value="{$adaRefsBouwsteen/kopie-indicator/@value}">
                        <xsl:attribute name="conceptId">
                            <xsl:choose>
                                <!-- TA MP9 2.0 -->
                                <xsl:when test="@conceptId = ('2.16.840.1.113883.2.4.3.11.60.20.77.2.4.294', '2.16.840.1.113883.2.4.3.11.999.77.2.4.294.1.2')">2.16.840.1.113883.2.4.3.11.60.20.77.2.4.345</xsl:when>
                                <!-- TA MP 9.0.7 -->
                                <xsl:when test="@conceptId = '2.16.840.1.113883.2.4.3.11.60.20.77.2.3.20132'">2.16.840.1.113883.2.4.3.11.60.20.77.2.23412</xsl:when>
                            </xsl:choose>
                        </xsl:attribute>
                    </kopie_indicator>
                </xsl:when>
                <xsl:otherwise>
                    <!-- use the original kopie-indicator -->
                    <xsl:apply-templates select="kopie-indicator" mode="copy-for-override"/>
                </xsl:otherwise>
            </xsl:choose>
            <!-- relatie_naar_medicatieafspraak -->
            <xsl:apply-templates select="relatie_naar_medicatiafspraak | relatie_medicatieafspraak" mode="copy-for-override">
                <xsl:with-param name="resolvedAdaPatient" select="$resolvedAdaPatient"/>
                <xsl:with-param name="overrideElement" select="$overrideElement"/>
            </xsl:apply-templates>
            <!-- relatie_toedieningsafspraak -->
            <xsl:apply-templates select="relatie_toedieningsafspraak" mode="copy-for-override">
                <xsl:with-param name="resolvedAdaPatient" select="$resolvedAdaPatient"/>
                <xsl:with-param name="overrideElement" select="$overrideElement"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="verstrekking | verstrekkingsverzoek" mode="copy-for-override">
        <!--  Add kopie-indicator for verstrekking | verstrekkingsverzoek, only here for testing purposes, but needed!  -->
        <xsl:param name="in" select=".">
            <!-- The bouwsteen in which to add the kopie-indicator. Defaults to context. -->
        </xsl:param>
        <xsl:param name="resolvedAdaPatient" as="element(patient)?">
            <!-- The resolved ada patient for when handling more than one patient. Optional when handling one patient. -->
        </xsl:param>
        <xsl:param name="overrideElement" as="element()*">
            <!-- The element that contains the overriding parts if any -->
        </xsl:param>

        <xsl:copy>
            <!--  Pass a long a possible passed resolved patient for appending patient shortname to identificatie -->
            <xsl:apply-templates select="@* | node()" mode="copy-for-override">
                <xsl:with-param name="resolvedAdaPatient" select="$resolvedAdaPatient"/>
            </xsl:apply-templates>

            <xsl:variable name="adaRefsBouwsteen" select="narf:get-override-bouwsteen(., narf:get-refsid(.))"/>
            <xsl:for-each select="$adaRefsBouwsteen/kopie-indicator[@value]">
                <kopie_indicator value="{$adaRefsBouwsteen/kopie-indicator/@value}" conceptId="{$adaRefsBouwsteen/kopie-indicator/@conceptId}"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="gebruiksperiode_start | gebruiksperiode/start_datum_tijd | gebruiksperiode_eind | gebruiksperiode/eind_datum_tijd | afspraakdatum | afspraak_datum_tijd | medicatieafspraak_datum_tijd | registratie_datum_tijd | datum | verstrekkingsverzoek_datum | verstrekkingsverzoek_datum_tijd | toedieningsafspraak_datum_tijd | medicatieverstrekkings_datum_tijd | medicatieafspraak/*/gewicht_datum_tijd | medicatieafspraak/*/lengte_datum_tijd | afgesproken_datum_tijd | toedienings_datum_tijd | wisselend_doseerschema_datum_tijd | medicatiegebruik_datum_tijd" mode="copy-for-override">
        <!--  Template to override contents of a concept in the resolved ada xml, based on references ada xml This template is for any concept.  -->
        <xsl:param name="in" select=".">
            <!-- The concept to be overridden, for example the 'afspraak_datum_tijd'. -->
        </xsl:param>
        <xsl:param name="overrideElement" as="element()*">
            <!-- The element that contains the overriding parts if any -->
        </xsl:param>

        <xsl:for-each select="$in">

            <xsl:variable name="overrideFieldName" as="xs:string">
                <xsl:choose>
                    <xsl:when test="local-name() = ('afspraakdatum', 'medicatieafspraak_datum_tijd', 'toedieningsafspraak_datum_tijd')">afspraak_datum_tijd</xsl:when>
                    <xsl:when test="local-name() = 'start_datum_tijd'">gebruiksperiode_start</xsl:when>
                    <xsl:when test="local-name() = 'eind_datum_tijd'">gebruiksperiode_eind</xsl:when>
                    <xsl:when test="local-name() = 'medicatiegebruik_datum_tijd'">registratie_datum_tijd</xsl:when>
                    <xsl:when test="local-name() = 'verstrekkingsverzoek_datum_tijd'">verstrekkingsverzoek_datum</xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="local-name()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="overrideID">
                <xsl:choose>
                    <xsl:when test="ancestor::medicatieafspraak">medicatieafspraak-id</xsl:when>
                    <xsl:when test="ancestor::wisselend_doseerschema">wisselend_doseerschema-id</xsl:when>
                    <xsl:when test="ancestor::verstrekkingsverzoek">verstrekkingsverzoek-id</xsl:when>
                    <xsl:when test="ancestor::toedieningsafspraak">toedieningsafspraak-id</xsl:when>
                    <xsl:when test="ancestor::verstrekking or ancestor::medicatieverstrekking">verstrekking-id</xsl:when>
                    <xsl:when test="ancestor::medicatiegebruik or ancestor::medicatie_gebruik">medicatie_gebruik-id</xsl:when>
                    <xsl:when test="ancestor::medicatietoediening">medicatietoediening-id</xsl:when>
                </xsl:choose>
            </xsl:variable>
            <xsl:copy>
                <xsl:apply-templates select="@*" mode="copy-for-override">
                    <xsl:with-param name="overrideElement" select="$overrideElement" as="element()*"/>
                </xsl:apply-templates>
                <xsl:variable name="newValue" select="narf:get-override-value(ancestor::*[parent::medicamenteuze_behandeling], $overrideID, $overrideFieldName)"/>
                <!-- only override the @value attribute when there is an actual new value -->
                <xsl:if test="string-length($newValue) gt 0">
                    <xsl:attribute name="value" select="narf:get-original-time($newValue, @value)"/>
                </xsl:if>
            </xsl:copy>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="medicatietoediening" mode="copy-for-override">
        <!-- Add geannuleerd_indicator -->
        <xsl:param name="in" select=".">
            <!-- The bouwsteen in which to add indicator. Defaults to context. -->
        </xsl:param>
        <xsl:param name="resolvedAdaPatient" as="element(patient)?">
            <!-- The resolved ada patient for when handling more than one patient. Optional when handling one patient. -->
        </xsl:param>
        <xsl:param name="overrideElement" as="element()*">
            <!-- The element that contains the overriding parts if any -->
        </xsl:param>

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="copy-for-override">
                <xsl:with-param name="overrideElement" select="$overrideElement" as="element()*"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="identificatie | toedienings_product | registratie_datum_tijd | toedienings_datum_tijd | afgesproken_datum_tijd" mode="copy-for-override">
                <xsl:with-param name="resolvedAdaPatient" select="$resolvedAdaPatient"/>
                <xsl:with-param name="overrideElement" select="$overrideElement" as="element()*"/>
            </xsl:apply-templates>

            <!-- geannuleerd_indicator -->
            <xsl:variable name="adaRefsBouwsteen" select="narf:get-override-bouwsteen(., 'medicatietoediening-id')"/>
            <xsl:choose>
                <xsl:when test="$adaRefsBouwsteen/geannuleerd_indicator[@value]">
                    <kopie_indicator value="{$adaRefsBouwsteen/geannuleerd_indicator/@value}" conceptId="2.16.840.1.113883.2.4.3.11.999.77.2.4.419.5"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- use the original geannuleerd_indicator -->
                    <xsl:apply-templates select="geannuleerd_indicator" mode="copy-for-override">
                        <xsl:with-param name="overrideElement" select="$overrideElement" as="element()*"/>
                    </xsl:apply-templates>
                </xsl:otherwise>
            </xsl:choose>

            <!-- the rest -->
            <xsl:apply-templates select="node()[not(local-name() = ('identificatie', 'toedienings_product', 'registratie_datum_tijd', 'toedienings_datum_tijd', 'afgesproken_datum_tijd', 'geannuleerd_indicator'))]" mode="copy-for-override">
                <xsl:with-param name="resolvedAdaPatient" select="$resolvedAdaPatient"/>
                <xsl:with-param name="overrideElement" select="$overrideElement" as="element()*"/>
            </xsl:apply-templates>

        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="zorgverlener[*]" mode="copy-for-override">
        <!--  Add telefoonnummer (in medicatievoorschrift)  -->

        <xsl:copy>
            <xsl:apply-templates select="@*" mode="copy-for-override"/>

            <!-- telefoonnummer must be added in contactgegevens, let's copy any element before contactgevens -->
            <xsl:apply-templates select="node()[not(local-name() = ('contactgegevens', 'zorgaanbieder'))]" mode="copy-for-override"/>

            <!-- AWE: not sure why this variable would ever work? Where do we have zorgverlener-refid in our transactions? -->
            <xsl:variable name="Overridebouwsteen" select="narf:get-override-bouwsteen-basedonref(., 'zorgverlener-refid')"/>

            <xsl:variable name="adaRefsBouwsteen" as="element()?">
                <xsl:choose>
                    <xsl:when test="exists($Overridebouwsteen)">
                        <xsl:sequence select="$Overridebouwsteen"/>
                    </xsl:when>
                    <xsl:when test="not(preceding-sibling::zorgverlener or following-sibling::zorgverlener) and count($ada-input/adaxml/data/*//voorschrijver) = 1">
                        <!-- there is only one zorgverlener in the resolved transaction AND only one voorschrijver in the refs transaction, 
                            so we will return the refs bouwsteen for override-->
                        <xsl:sequence select="$ada-input/adaxml/data/*//voorschrijver"/>
                    </xsl:when>
                    <xsl:when test="ancestor::data/*/medicamenteuze_behandeling/(medicatieafspraak/voorschrijver | verstrekkingsverzoek/auteur)/zorgverlener[@value = current()/@id] and count($ada-input/adaxml/data/*//voorschrijver) = 1">
                        <!-- this zorgverlener is in fact the voorschrijver, so we return the voorschrijver in the refs transaction -->
                        <xsl:sequence select="$ada-input/adaxml/data/*//voorschrijver"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:variable>

            <!-- contactgegevens may exist in the repo, if so we add the new telephonenumber from the refs transaction, otherwise we create a whole new contactgegevens -->
            <xsl:choose>
                <xsl:when test="contactgegevens//(@value | @code | @nullFlavor)">
                    <xsl:for-each select="contactgegevens">
                        <xsl:copy>
                            <xsl:copy-of select="@*"/>
                            <!-- existing telefoonnummers -->
                            <xsl:copy-of select="telefoonnummers"/>
                            <!-- add the new telefoonnummers from the ref transaction -->
                            <xsl:for-each select="$adaRefsBouwsteen/telefoonnummer_voorschrijver/@value">
                                <telefoonnummers conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.160">
                                    <telefoonnummer value="{.}" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.161"/>
                                    <!-- only work telephone specified for MP transaction, so default -->
                                    <nummer_soort code="WP" codeSystem="2.16.840.1.113883.5.1119" codeSystemName="Address Use" displayName="Zakelijk telefoonnummer" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.163"/>
                                </telefoonnummers>
                            </xsl:for-each>
                            <!-- existing email_adressen -->
                            <xsl:copy-of select="email_adressen"/>
                        </xsl:copy>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <!-- add the new telefoonnummers from the ref transaction -->
                    <xsl:for-each select="$adaRefsBouwsteen/telefoonnummer_voorschrijver/@value">
                        <contactgegevens conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.159">
                            <telefoonnummers conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.160">
                                <telefoonnummer value="{.}" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.161"/>
                                <!-- only work telephone specified for MP transaction, so default -->
                                <nummer_soort code="WP" codeSystem="2.16.840.1.113883.5.1119" codeSystemName="Address Use" displayName="Zakelijk telefoonnummer" conceptId="2.16.840.1.113883.2.4.3.11.60.20.77.2.4.163"/>
                            </telefoonnummers>
                        </contactgegevens>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>
            <!-- zorgaanbieder is the last child that we have not copied yet, so lets copy that one as the last one -->
            <xsl:apply-templates select="zorgaanbieder" mode="copy-for-override"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*[@datatype = 'reference']" mode="copy-for-override">
        <!-- get rid of the part of the reference value that refers to a different ada instance, we now have a full ada file with all references in it, so they all now have a simple id -->
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:attribute name="value" select="replace(@value, '(.*)#(.*)', '$2')"></xsl:attribute>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="patient-afko" mode="copy-for-override"><!-- Do not copy the patient_afko from repo into the resolved/overridden transaction --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <!-- only copy medicamenteuze_behandeling with proper content -->
    <xsl:template match="medicamenteuze_behandeling" mode="copy-for-split">
        <xsl:if test="*/local-name() = current-grouping-key()">
            <xsl:copy>
                <xsl:apply-templates select="@* | node()" mode="#current"/>
            </xsl:copy>
        </xsl:if>
    </xsl:template>

    <!-- only copy bouwstenen which are being referenced in the current-group -->
    <xsl:template match="bouwstenen/*" mode="copy-for-split">
        <xsl:choose>
            <xsl:when test=".[@id = ancestor::data/*/medicamenteuze_behandeling/*[local-name() = current-grouping-key()]//*/@value]">
                <xsl:copy>
                    <xsl:apply-templates select="@* | node()" mode="#current"/>
                </xsl:copy>
            </xsl:when>
            <!-- special handling for zorgaanbieder that may be referenced via a referenced zorgverlener -->
            <xsl:when test=".[self::zorgaanbieder][@id = ../zorgverlener[@id = ancestor::data/*/medicamenteuze_behandeling/*[local-name() = current-grouping-key()]//*/@value]//zorgaanbieder/@value]">
                <xsl:copy>
                    <xsl:apply-templates select="@* | node()" mode="#current"/>
                </xsl:copy>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="data/*/medicamenteuze_behandeling/*[not(self::identificatie)]" mode="copy-for-split">

        <!-- assumption is that we are in a for each-group, if not log message and copy everything we've got anyway -->
        <xsl:choose>
            <xsl:when test="empty(current-grouping-key())">
                <xsl:call-template name="util:logMessage">
                    <xsl:with-param name="level" select="$logWARN"/>
                    <xsl:with-param name="msg">The functionality for splitting ada files per building block type needs a for-each-group context but this is missing. Not cool. Input simply copied without any filtering.</xsl:with-param>
                </xsl:call-template>
                <xsl:copy>
                    <xsl:apply-templates select="@* | node()" mode="#current"/>
                </xsl:copy>
            </xsl:when>
            <xsl:otherwise>
                <!-- only copy the elements that equal the current-grouping-key -->
                <xsl:if test="local-name() = current-grouping-key()">
                    <xsl:copy>
                        <xsl:apply-templates select="@* | node()" mode="#current"/>
                    </xsl:copy>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="handleMBHIdentificatieAfkoAppend">
        <!-- Helper template to append patient afko -->
        <xsl:param name="adaRefsTransaction" as="element()?">
            <!-- The ada references transaction, with a possible override for patient shortName -->
        </xsl:param>
        <xsl:param name="resolvedPatient" as="element()?">
            <!-- The ada repo patient, with a possible patient shortName -->
        </xsl:param>
        <!-- now let's see if we want to update this id with patient shortName -->
        <xsl:choose>
            <!-- override in reference transaction? -->
            <xsl:when test="string-length($adaRefsTransaction/patient-afko/@value) gt 0">
                <xsl:attribute name="value" select="concat(current-group()[1]/identificatie/@value, '-', $adaRefsTransaction/patient-afko/@value)"/>
            </xsl:when>
            <!-- patient-afko in repo? -->
            <xsl:when test="string-length($resolvedPatient/patient-afko/@value) gt 0">
                <xsl:attribute name="value" select="concat(current-group()[1]/identificatie/@value, '-', $resolvedPatient/patient-afko/@value)"/>
            </xsl:when>
            <xsl:otherwise>
                <!-- do nothing, we already copied the original id/@value -->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="copy-for-split">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="#current"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="narf:handle-ada-id">
        <!-- handling for AdaId, mainly to make things better for Touchstone later. Replaces underscores and periods with hyphens. -->
        <xsl:param name="in" as="xs:string?">
            <!-- The ada id string to be handled -->
        </xsl:param>
        <xsl:value-of select="translate($in, '_.', '--')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="narf:get-refsid" as="xs:string?">
        <!-- Get the id in the references transaction -->
        <xsl:param name="in" as="element()?">
            <!-- The bouwsteen (such as medicatieafspraak / verstrekkingsverzoek) of which an id is needed. -->
        </xsl:param>

        <xsl:value-of select="concat(local-name($in), '-id')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="narf:new-id-for-split">
        <xsl:param name="currentId" as="xs:string"/>
        <xsl:param name="adaName"/>

        <xsl:variable name="toConcatenate" select="concat($mapBouwstenen[@adaName = $adaName]/@shortName, '-')"/>

        <xsl:choose>
            <xsl:when test="contains($currentId, 'Scenarioset')">
                <xsl:value-of select="concat(substring-before($currentId, 'Scenarioset'), $toConcatenate, 'Scenarioset', substring-after($currentId, 'Scenarioset'))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="concat($currentId, $toConcatenate)"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:function>
</xsl:stylesheet>
