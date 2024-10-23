<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:hl7-org:v3" xmlns:hl7="urn:hl7-org:v3" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="#local.2024011810474798479470100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
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

    <xsl:import href="../zib2017bbr/payload/ada2hl7_all-zibs.xsl"/>
    <xsl:import href="peri20_30_shared.xsl"/>
    <xsl:output method="xml" indent="yes" exclude-result-prefixes="#default"/>

    <!-- ================================================================== -->

    <xsl:template name="_BooleanAttribute" match="element()" mode="HandleYNAttribute">
        <!-- Helper template to handle a Yes/No question for an observation or procedure, context is the ada boolean element -->
        <xsl:choose>
            <xsl:when test="@value = 'false'">
                <xsl:attribute name="negationInd">true</xsl:attribute>
            </xsl:when>
            <xsl:when test="@nullFlavor">
                <xsl:attribute name="nullFlavor" select="@nullFlavor"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN" match="element()" mode="HandleProblemObservationYN">
        <!-- Handles a Yes/No for a problem observation based on ada boolean element -->
        <xsl:param name="code" as="xs:string?">
            <!-- code attribute for value element -->
        </xsl:param>
        <xsl:param name="codeSystem" as="xs:string?" select="$oidSNOMEDCT">
            <!-- codeSystem attribute for value element, defaults to SNOMED CT -->
        </xsl:param>
        <xsl:param name="codeSystemName" as="xs:string?" select="$oidMap[@oid = $oidSNOMEDCT]/@displayName">
            <!-- codeSystemName attribute for value element, defaults to SNOMED CT -->
        </xsl:param>
        <xsl:param name="displayName" as="xs:string?">
            <!-- displayName attribute for value element -->
        </xsl:param>

        <observation classCode="OBS" moodCode="EVN">
            <xsl:call-template name="_BooleanAttribute"/>
            <templateId root="2.16.840.1.113883.2.4.3.11.60.3.10.3.19"/>
            <code code="282291009" displayName="Diagnose" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <value code="{$code}" codeSystem="{$codeSystem}">
                <xsl:attribute name="xsi:type" select="'CD'"/>
                <xsl:if test="$displayName">
                    <xsl:attribute name="displayName" select="$displayName"/>
                </xsl:if>
                <xsl:if test="$codeSystemName">
                    <xsl:attribute name="codeSystemName" select="$codeSystemName"/>
                </xsl:if>
            </value>
        </observation>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN" match="element()" mode="HandleProcedureYN">
        <!-- Handles a Yes/No for a procedure based on ada boolean element -->
        <xsl:param name="code" as="xs:string?">
            <!-- code attribute for code element -->
        </xsl:param>
        <xsl:param name="codeSystem" as="xs:string?" select="$oidSNOMEDCT">
            <!-- codeSystem attribute for code element, defaults to SNOMED CT -->
        </xsl:param>
        <xsl:param name="codeSystemName" as="xs:string?" select="$oidMap[@oid = $oidSNOMEDCT]/@displayName">
            <!-- codeSystemName attribute for code element, defaults to SNOMED CT -->
        </xsl:param>
        <xsl:param name="displayName" as="xs:string?">
            <!-- displayName attribute for code element -->
        </xsl:param>
        <xsl:param name="templateId" as="xs:string*">
            <!-- optional additional templateId(s) to be outputted -->
        </xsl:param>

        <procedure classCode="PROC" moodCode="EVN">
            <xsl:call-template name="_BooleanAttribute"/>
            <xsl:for-each select="$templateId[string-length() gt 0]">
                <templateId root="{$templateId}"/>
            </xsl:for-each>
            <templateId root="2.16.840.1.113883.2.4.3.11.60.7.10.3.23"/>
            <code code="{$code}" codeSystem="{$codeSystem}">
                <xsl:if test="$displayName">
                    <xsl:attribute name="displayName" select="$displayName"/>
                </xsl:if>
                <xsl:if test="$codeSystemName">
                    <xsl:attribute name="codeSystemName" select="$codeSystemName"/>
                </xsl:if>
            </code>
        </procedure>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901109_20181102113603" match="kernset_neonatologie" mode="HandleKernsetNeoStructuredBody">
        <!-- Kernset Neonatologie CDA Structured Body -->
        <component>
            <structuredBody>
                <!-- Maternale gegevens -->
                <xsl:if test="vrouw/demografische_gegevens/patient[.//(@value | @code | @nullFlavor)] | zwangerschapsgegevens[.//(@value | @code | @nullFlavor)]">
                    <component>
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901111_20181102115214"/>
                    </component>
                </xsl:if>

                <!-- Bevallingsgegevens -->
                <xsl:for-each select="kind/bevallingsgegevens[.//(@value | @code | @nullFlavor)]">
                    <component>
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901122_20181102155231"/>
                    </component>
                </xsl:for-each>

                <!-- Ondersteuning opvang -->
                <xsl:for-each select="kind/ondersteuning_opvang[.//(@value | @code | @nullFlavor)]">
                    <component>
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901127_20181102175559"/>
                    </component>
                </xsl:for-each>

                <!-- Gegevens horende bij Opname -->
                <xsl:for-each select="kind/opname_gegevens[.//(@value | @code | @nullFlavor)]">
                    <component>
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901128_20181103142748"/>
                    </component>
                </xsl:for-each>

                <!-- Problematiek kind -->
                <xsl:for-each select="kind/problematiek_kind[.//(@value | @code | @nullFlavor)]">
                    <component>
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901141_20181103092845"/>
                    </component>
                </xsl:for-each>
                <!-- Ontslag / Overplaatsing -->
                <xsl:for-each select="kind/ontslagoverplaatsing[.//(@value | @code | @nullFlavor)]">
                    <component>
                        <section>
                            <templateId root="2.16.840.1.113883.2.4.6.10.90.901198"/>
                            <templateId root="2.16.840.1.113883.10.12.701"/>
                            <code code="58781000146100" displayName="ontslag of overplaatsing van patiënt (verrichting)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                            <title>Gegevens Ontslag / Overplaatsing, Kernset Neonatologie</title>
                            <text/>
                            <!-- nog opgenomen? -->
                            <xsl:for-each select="nog_opgenomenq[.//(@value | @code | @nullFlavor)]">
                                <entry>
                                    <observation classCode="OBS" moodCode="EVN">
                                        <xsl:if test="@value = 'false'">
                                            <xsl:attribute name="negationInd">true</xsl:attribute>
                                        </xsl:if>
                                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901247"/>
                                        <code displayName="ziekenhuispatiënt (bevinding)" code="266938001" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                    </observation>
                                </entry>
                            </xsl:for-each>
                            <!-- bestemming kind -->
                            <xsl:for-each select="bestemming_kind[.//(@value | @code | @nullFlavor)]">
                                <entry>
                                    <observation classCode="OBS" moodCode="EVN">
                                        <xsl:if test="@value = 'false'">
                                            <xsl:attribute name="negationInd">true</xsl:attribute>
                                        </xsl:if>
                                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901245"/>
                                        <code displayName="Patient discharge (procedure)" code="58000006" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                        <xsl:call-template name="makeCEValue"/>
                                    </observation>
                                </entry>
                            </xsl:for-each>
                            <!-- Lichamelijk onderzoek -->
                            <xsl:for-each select="lichamelijk_onderzoek[.//(@value | @code | @nullFlavor)]">
                                <entry>
                                    <procedure classCode="ACT" moodCode="EVN">
                                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901200"/>
                                        <templateId root="2.16.840.1.113883.10.12.806"/>
                                        <code code="5880005" displayName="lichamelijk onderzoek (verrichting)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                        <xsl:for-each select="lichaamsgewicht[.//(@value | @code | @nullFlavor)]">
                                            <!-- Lichaamsgewicht -->
                                            <entryRelationship typeCode="COMP">
                                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.28_20171025000000"/>
                                            </entryRelationship>
                                        </xsl:for-each>
                                        <!-- Schedelomvang -->
                                        <xsl:for-each select="schedelomvang[.//(@value | @code | @nullFlavor)]">
                                            <entryRelationship typeCode="COMP">
                                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.55_20190708135422"/>
                                            </entryRelationship>
                                        </xsl:for-each>
                                    </procedure>
                                </entry>
                            </xsl:for-each>
                            <!-- Voeding kind -->
                            <xsl:for-each select="voeding_kind[@code | @nullFlavor]">
                                <entry>
                                    <supply classCode="SPLY" moodCode="EVN">
                                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901201"/>
                                        <id nullFlavor="NI"/>
                                        <product typeCode="PRD">
                                            <manufacturedProduct classCode="MANU">
                                                <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
                                                    <xsl:call-template name="makeCode"/>
                                                </manufacturedMaterial>
                                            </manufacturedProduct>
                                        </product>
                                    </supply>
                                </entry>
                            </xsl:for-each>
                            <!-- Ondersteuning bij ontslag naar huis -->
                            <xsl:for-each select="ondersteuning_bij_ontslag_naar_huis[@code | @nullFlavor]">
                                <entry>
                                    <procedure classCode="PROC" moodCode="EVN">
                                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901203"/>
                                        <xsl:call-template name="makeCode"/>
                                    </procedure>
                                </entry>
                            </xsl:for-each>
                        </section>
                    </component>
                </xsl:for-each>
                <!-- Mortaliteit -->
                <xsl:for-each select="kind/mortaliteit[.//(@value | @code | @nullFlavor)]">
                    <component>
                        <section>
                            <templateId root="2.16.840.1.113883.2.4.6.10.90.901204"/>
                            <code code="58921000146103" displayName="Mortality (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                            <title>Gegevens mortaliteit, Kernset Neonatologie</title>
                            <text/>
                            <entry>
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.840.1.113883.2.4.6.10.90.901205"/>
                                    <code code="406194006" displayName="Death characteristics (observable entity)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>

                                    <!-- Overlijden binnen 12 uur na opname NICU -->
                                    <xsl:for-each select="overlijden_lt12_uur_na_opname_nicuq[@value | @nullFlavor]">
                                        <entryRelationship typeCode="COMP">
                                            <observation classCode="OBS" moodCode="EVN">
                                                <xsl:call-template name="_BooleanAttribute"/>
                                                <templateId root="2.16.840.1.113883.2.4.6.10.90.901206"/>
                                                <code code="58991000146100" displayName="Patient died within 12 hours after admission to NICU (finding)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                            </observation>
                                        </entryRelationship>
                                    </xsl:for-each>

                                    <!-- Overleden op verloskamer peri30-dataelement-90705 -->
                                    <xsl:for-each select="overleden_op_verloskamerq[@value | @nullFlavor]">
                                        <entryRelationship typeCode="COMP">
                                            <observation classCode="OBS" moodCode="EVN">
                                                <xsl:call-template name="_BooleanAttribute"/>
                                                <templateId root="2.16.840.1.113883.2.4.6.10.90.901208"/>
                                                <code code="59001000146100" displayName="Patient died in delivery room (finding)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                            </observation>
                                        </entryRelationship>
                                    </xsl:for-each>

                                    <!-- Oorzaak overlijden -->
                                    <xsl:for-each select="oorzaak_overlijden[@code | @nullFlavor]">
                                        <entryRelationship typeCode="RSON">
                                            <observation classCode="OBS" moodCode="EVN">
                                                <templateId root="2.16.840.1.113883.2.4.6.10.90.901207"/>
                                                <code code="71000146108" displayName="Immediate cause of natural death (observable entity)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                                <xsl:call-template name="makeCDValue"/>
                                            </observation>
                                        </entryRelationship>
                                    </xsl:for-each>

                                    <!-- Staken IC-behandeling -->
                                    <xsl:for-each select="staken_icbehandelingq[@value | @nullFlavor]">
                                        <entryRelationship typeCode="COMP">
                                            <observation classCode="OBS" moodCode="EVN">
                                                <xsl:call-template name="_BooleanAttribute"/>
                                                <templateId root="2.16.840.1.113883.2.4.6.10.90.901209"/>
                                                <code code="56371000146104" displayName="Intensive care treatment stopped (situation)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                            </observation>
                                        </entryRelationship>
                                    </xsl:for-each>

                                </observation>
                            </entry>
                        </section>
                    </component>
                </xsl:for-each>
                <!-- Follow up-->
                <xsl:for-each select="kind/follow_up[.//(@value | @code | @nullFlavor)]">
                    <component>
                        <section>
                            <templateId root="2.16.840.1.113883.2.4.6.10.90.901210"/>
                            <templateId root="2.16.840.1.113883.10.12.701"/>
                            <code code="58811000146102" displayName="Follow-up (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                            <title>Gegevens Follow-up, Kernset Neonatologie</title>
                            <text/>
                            <!-- Na ontslag-->
                            <xsl:for-each select="na_ontslag[.//(@value | @code | @nullFlavor)]">
                                <entry>
                                    <organizer classCode="CLUSTER" moodCode="EVN">
                                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901211"/>
                                        <code code="406151001" displayName="Post-discharge follow-up (finding)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                        <statusCode code="completed"/>
                                        <!-- O2 op dag 28 -->
                                        <xsl:for-each select="o2_op_dag_28q[@value | @nullFlavor]">
                                            <component>
                                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901148_20181106144851"/>
                                            </component>
                                        </xsl:for-each>

                                        <!-- Gradatie BPD -->
                                        <xsl:for-each select="gradatie_bpd[@code | @nullFlavor]">
                                            <component>
                                                <observation classCode="OBS" moodCode="EVN">
                                                    <templateId root="2.16.840.1.113883.2.4.6.10.90.901212"/>
                                                    <code code="67569000" displayName="Bronchopulmonary dysplasia of newborn (disorder)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                                    <xsl:call-template name="makeCDValue"/>
                                                    <!--                                                <value xsi:type="CD" code="22021000146102" displayName="Bronchopulmonary dysplasia of newborn - grade 1 (disorder)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>-->
                                                </observation>
                                            </component>
                                        </xsl:for-each>
                                        <!-- zintuigelijke problemen en behandelingen -->
                                        <xsl:for-each select="zintuigen[.//(@value | @code | @nullFlavor)]">
                                            <component>
                                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901186_20181107000000"/>
                                            </component>
                                        </xsl:for-each>
                                    </organizer>
                                </entry>
                            </xsl:for-each>
                        </section>
                    </component>
                </xsl:for-each>
            </structuredBody>
        </component>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901111_20181102115214" match="kernset_neonatologie" mode="HandleCDAKernsetNeoMaternal">
        <!-- Maternal Information -->
        <!-- Maternal Information -->
        <xsl:if test="(vrouw | zwangerschapsgegevens)[.//(@value | @code | @nullFlavor)]">
            <section>
                <templateId root="2.16.840.1.113883.2.4.6.10.90.901111"/>
                <templateId root="2.16.840.1.113883.10.12.701"/>
                <code code="79192-1" displayName="Maternal information section" codeSystem="{$oidLOINC}" codeSystemName="{$oidMap[@oid=$oidLOINC]/@displayName}"/>
                <title>Maternale gegevens van Kernset Neonatologie</title>
                <!-- textual representation not relevant for Perined -->
                <text/>
                <!-- Woman -->
                <xsl:for-each select="vrouw/demografische_gegevens/patient[.//(@value | @code | @nullFlavor)]">
                    <subject>
                        <relatedSubject classCode="PRS">
                            <xsl:for-each select="identificatienummer">
                                <xsl:call-template name="makeIIValue">
                                    <xsl:with-param name="elemName">sdtc:id</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <code code="NMTH" displayName="natural mother" codeSystem="2.16.840.1.113883.5.111" codeSystemName="RoleCode"/>
                            <!-- Adres -->
                            <xsl:for-each select=".//adresgegevens[not(adresgegevens)][.//(@value | @code | @nullFlavor)]">
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1.101_20170602000000">
                                    <xsl:with-param name="adres" select="."/>
                                </xsl:call-template>
                            </xsl:for-each>

                            <!--Telecom details-->
                            <xsl:call-template name="_CdaTelecom"/>

                            <!-- Person details -->
                            <subject>
                                <xsl:call-template name="_CdaPerson"/>
                            </subject>
                        </relatedSubject>
                    </subject>
                </xsl:for-each>
                <!-- pregnancy details -->
                <xsl:for-each select="zwangerschapsgegevens[.//(@value | @code | @nullFlavor)]">
                    <entry typeCode="COMP">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901113_20181102122311"/>
                    </entry>
                </xsl:for-each>
            </section>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901122_20181102155231" match="bevallingsgegevens" mode="HandleCDAKernsetNeoDelivery">
        <!-- Make section for neonatal delivery information based on ada bevallingsgegevens -->
        <section>
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901122"/>
            <templateId root="2.16.840.1.113883.10.12.701"/>
            <code code="15508-5" displayName="Labor and delivery records" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
            <title>Neonatale bevallingsgegevens van Kernset Neonatologie</title>
            <text/>
            <entry>
                <procedure classCode="ACT" moodCode="EVN">
                    <templateId root="2.16.840.1.113883.2.4.6.10.90.901123"/>
                    <templateId root="2.16.840.1.113883.10.12.806"/>
                    <code code="Baring" displayName="Baring" codeSystem="2.16.840.1.113883.2.4.3.22.1.3" codeSystemName="PerinatologyProceduresPRN"/>
                    <!-- Locatie partus -->
                    <!-- Thuis -->
                    <xsl:for-each select="locatie_partus[@code]">
                        <participant typeCode="LOC">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901124_20181102163242"/>
                        </participant>
                    </xsl:for-each>
                    <!-- ziekenhuis baring -->
                    <xsl:for-each select="zorgaanbieder[.//(@value | @code | @nullFlavor)]">
                        <participant typeCode="LOC">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901125_20181102172304"/>
                        </participant>
                    </xsl:for-each>
                    <!-- zwangerschapsduur -->
                    <xsl:for-each select="zwangerschapsduur[@value | @nullFlavor]">
                        <entryRelationship typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901216_20190531145950"/>
                        </entryRelationship>
                    </xsl:for-each>
                    <!-- aantal_geboren_kinderen -->
                    <xsl:for-each select="aantal_geboren_kinderen[@value | @nullFlavor]">
                        <entryRelationship typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901246_20200312122852"/>
                        </entryRelationship>
                    </xsl:for-each>
                    <!-- Type partus -->
                    <xsl:for-each select="type_partus[@code | @nullFlavor]">
                        <entryRelationship typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901107_20180228162810"/>
                        </entryRelationship>
                    </xsl:for-each>
                </procedure>
            </entry>
        </section>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901124_20181102163242" match="locatie_partus" mode="HandleBirthTypeLocation">
        <!-- locatie_partus participantRole -->
        <templateId root="2.16.840.1.113883.2.4.6.10.90.901124"/>
        <participantRole classCode="BIRTHPL">
            <xsl:call-template name="makeCode"/>
        </participantRole>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901125_20181102172304" match="zorgaanbieder" mode="HandleBirthLocation">
        <!-- ziekenhuis_baring participantRole -->
        <templateId root="2.16.840.1.113883.2.4.6.10.90.901125"/>
        <participantRole classCode="DSDLOC">
            <!--MP CDA Organization id name-->
            <xsl:for-each select="(zorgaanbieder_identificatie_nummer | zorgaanbieder_identificatienummer)[@value | @root][not(@nullFlavor and not(@value))]">
                <!-- MP CDA Zorgaanbieder identificaties -->
                <xsl:call-template name="makeIIid"/>
            </xsl:for-each>
            <!-- if no proper value, still output nullFlavor if applicable -->
            <xsl:if test="not((zorgaanbieder_identificatie_nummer | zorgaanbieder_identificatienummer)[@value | @root][not(@nullFlavor and not(@value))]) and (zorgaanbieder_identificatie_nummer | zorgaanbieder_identificatienummer)[@nullFlavor]">
                <!-- MP CDA Zorgaanbieder identificaties -->
                <xsl:call-template name="makeIIid"/>
            </xsl:if>
            <xsl:for-each select="organisatie_type[@code | @nullFlavor]">
                <xsl:call-template name="makeCode"/>
            </xsl:for-each>
            <xsl:for-each select="organisatie_naam[@value]">
                <playingEntity>
                    <name>
                        <xsl:value-of select="@value"/>
                    </name>
                </playingEntity>
            </xsl:for-each>
        </participantRole>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901127_20181102175559">
        <!-- Ondersteuning opvang van Kernset Neonatologie -->
        <section>
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901127"/>
            <templateId root="2.16.840.1.113883.10.12.701"/>
            <code code="109121000146106" displayName="Information about assisted therapy before admission (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <title>Ondersteuning opvang van Kernset Neonatologie</title>
            <text/>
            <!-- verrichtingen -->
            <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                </entry>
            </xsl:for-each>
        </section>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901128_20181103142748" match="opname_gegevens" mode="HandleAdmissionDetailsSection">
        <!-- Ondersteuning opvang van Kernset Neonatologie -->
        <section>
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901128"/>
            <templateId root="2.16.840.1.113883.10.12.701"/>
            <code code="51849-8" displayName="Admission history and physical note" codeSystem="2.16.840.1.113883.1.6" codeSystemName="LOINC"/>
            <title>Gegevens bij opname, Kernset Neonatologie</title>
            <text/>
            <entry typeCode="COMP" contextConductionInd="true">
                <!-- Opname -->
                <procedure classCode="PROC" moodCode="EVN">
                    <templateId root="2.16.840.1.113883.2.4.6.10.90.901129"/>
                    <code code="305056002" displayName="Admission procedure (procedure)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                    <effectiveTime>
                        <xsl:attribute name="xsi:type" select="'IVL_TS'"/>
                        <!-- opname datum 	peri30-dataelement-90500 -->
                        <xsl:for-each select="opname/opname_datum[@value | @nullFlavor]">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="elemName">low</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- ontslag datum  peri30-dataelement-90504-->
                        <xsl:for-each select="opname/ontslag_datum[@value | @nullFlavor]">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="elemName">high</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </effectiveTime>

                    <!-- IC opname -->
                    <xsl:for-each select="opname/(ic_opnameq | ic_opname)[@value | @nullFlavor]">
                        <entryRelationship typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN">
                                <xsl:with-param name="templateId">2.16.840.1.113883.2.4.6.10.90.901131</xsl:with-param>
                                <xsl:with-param name="code">305351004</xsl:with-param>
                                <xsl:with-param name="displayName">opname op intensive care (verrichting)</xsl:with-param>
                            </xsl:call-template>
                        </entryRelationship>
                    </xsl:for-each>
                    <!-- heropname -->
                    <xsl:for-each select="opname/(heropname | heropnameq)[@value | @nullFlavor]">
                        <entryRelationship typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN">
                                <xsl:with-param name="templateId">2.16.840.1.113883.2.4.6.10.90.901132</xsl:with-param>
                                <xsl:with-param name="code">417005</xsl:with-param>
                                <xsl:with-param name="displayName">Hospital re-admission (procedure)</xsl:with-param>
                            </xsl:call-template>
                        </entryRelationship>
                    </xsl:for-each>

                    <!-- herkomst kind -->
                    <xsl:if test="opname/(herkomst_kind | zorgaanbieder)[.//(@code | @value | @nullFlavor)]">
                        <entryRelationship typeCode="COMP">
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="2.16.840.1.113883.2.4.6.10.90.901136"/>
                                <code code="58881000146108" displayName="verblijfplaats van kind voor opname (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                <xsl:for-each select="opname/herkomst_kind[@code]">
                                    <xsl:call-template name="makeCDValue"/>
                                </xsl:for-each>
                                <xsl:for-each select="opname/zorgaanbieder[.//(@code | @value | @nullFlavor)]">
                                    <entryRelationship typeCode="COMP">
                                        <observation classCode="OBS" moodCode="EVN">
                                            <code code="22232009" displayName="ziekenhuis (omgeving)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                            <participant typeCode="LOC">
                                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901125_20181102172304"/>
                                            </participant>
                                        </observation>
                                    </entryRelationship>
                                </xsl:for-each>
                            </observation>
                        </entryRelationship>
                    </xsl:if>
                    <!-- opname indicaties -->
                    <xsl:for-each select="opname/opname_indicatie[@code | @nullFlavor]">
                        <entryRelationship typeCode="RSON">
                            <observation classCode="OBS" moodCode="EVN">
                                <templateId root="2.16.840.1.113883.2.4.6.10.90.901130"/>
                                <templateId root="2.16.840.1.113883.2.4.3.11.60.3.10.3.19"/>
                                <code code="59021000146108" displayName="Reason for admission (observable entity)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                <xsl:call-template name="makeCDValue"/>
                            </observation>
                        </entryRelationship>
                    </xsl:for-each>

                    <!-- Lichamelijk onderzoek -->
                    <xsl:for-each select="onderzoek">
                        <entryRelationship typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901133_20181103154700"/>
                        </entryRelationship>
                    </xsl:for-each>
                </procedure>
            </entry>
        </section>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901113_20181102122311" match="kernset_neonatologie" mode="HandleCDAKernsetNeoPregnancy">
        <!-- Handle Kernset Neonatology pregnancy details, context is ada element for transaction kernset_neonatologie -->
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901113"/>
            <code code="364320009" displayName="Pregnancy observable (observable entity)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <!-- Gravidity -->
            <xsl:for-each select="graviditeit[@value]">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901115_20181102132812"/>
                </entryRelationship>
            </xsl:for-each>

            <!-- Parity -->
            <xsl:for-each select="pariteit_voor_deze_zwangerschap[@value]">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901116_20181102134343"/>
                </entryRelationship>
            </xsl:for-each>

            <!-- Complicaties zwangerschap en/of behandelingen? peri30-dataelement-91089-->
            <xsl:for-each select="complicaties_tijdens_zwangerschap/complicaties_zwangerschapq[@value | @nullFlavor]">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                        <xsl:with-param name="code">609496007</xsl:with-param>
                        <xsl:with-param name="displayName">Complication occurring during pregnancy (disorder)</xsl:with-param>
                    </xsl:call-template>
                </entryRelationship>
            </xsl:for-each>

            <!-- Complicaties tijdens zwangerschap 	peri30-dataelement-90700 -->
            <!-- Probleem - peri30-dataelement-90119 -->
            <xsl:for-each select="complicaties_tijdens_zwangerschap/probleem">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                </entryRelationship>
            </xsl:for-each>

            <!-- Magnesiumsulfaat  -->
            <xsl:for-each select="complicaties_tijdens_zwangerschap/magnesiumsulfaat[@value | @nullFlavor]">
                <entryRelationship typeCode="COMP">
                    <!-- the version of publication 20200429T174815 -->
                    <!--<substanceAdministration classCode="SBADM" moodCode="EVN">
                        <xsl:choose>
                            <xsl:when test="@value = 'false'">
                                <xsl:attribute name="negationInd">true</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="@nullFlavor">
                                <xsl:attribute name="nullFlavor" select="@nullFlavor"/>
                            </xsl:when>
                        </xsl:choose>
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901121"/>
                        <templateId root="2.16.840.1.113883.10.12.808"/>
                        <consumable>
                            <manufacturedProduct>
                                <manufacturedMaterial>
                                    <code code="A12CC02" displayName="MAGNESIUMSULFAAT" codeSystem="2.16.840.1.113883.6.73" codeSystemName="ATC"/>
                                </manufacturedMaterial>
                            </manufacturedProduct>
                        </consumable>
                    </substanceAdministration>-->
                    <!-- new version due to GZ-767 -->
                    <procedure classCode="PROC" moodCode="EVN">
                        <xsl:choose>
                            <xsl:when test="@value = 'false'">
                                <xsl:attribute name="negationInd">true</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="@nullFlavor">
                                <xsl:attribute name="nullFlavor" select="@nullFlavor"/>
                            </xsl:when>
                        </xsl:choose>
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901256"/>
                        <templateId root="2.16.840.1.113883.2.4.3.11.60.7.10.3.23"/>
                        <code displayName="intraveneuze toediening van magnesiumsulfaat ante partum" code="107221000146106" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                    </procedure>
                </entryRelationship>
            </xsl:for-each>

            <!-- antenatale steroïden -->
            <xsl:if test="complicaties_tijdens_zwangerschap/(antenatale_steroiden[@value | @code] | antenatale_steroiden_gegevenq[@value | @nullFlavor])">
                <entryRelationship typeCode="COMP">
                    <procedure classCode="PROC" moodCode="EVN">
                        <xsl:choose>
                            <xsl:when test="complicaties_tijdens_zwangerschap/antenatale_steroiden_gegevenq/@value = 'false'">
                                <!-- Geen antenatale steroïden t.b.v. foetale longrijping -->
                                <xsl:attribute name="negationInd">true</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="complicaties_tijdens_zwangerschap/antenatale_steroiden_gegevenq/@nullFlavor">
                                <!-- Onbekend -->
                                <xsl:attribute name="nullFlavor" select="complicaties_tijdens_zwangerschap/antenatale_steroiden_gegevenq/@nullFlavor"/>
                            </xsl:when>
                        </xsl:choose>
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901120"/>
                        <templateId root="2.16.840.1.113883.2.4.3.11.60.7.10.3.23"/>
                        <code code="434601000124108" displayName="behandelen met corticosteroïden voor foetale longrijping (verrichting)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <xsl:for-each select="complicaties_tijdens_zwangerschap/antenatale_steroiden[@value | @code]">
                            <xsl:call-template name="makeCode">
                                <xsl:with-param name="elemName">methodCode</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </procedure>
                </entryRelationship>
            </xsl:if>

        </observation>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901115_20181102132812" match="graviditeit" mode="HandleGravidity">
        <!-- Make observation for gravidity based on ada graviditeit -->
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901115"/>
            <templateId root="2.16.840.1.113883.10.12.803"/>
            <code code="11996-6" codeSystem="2.16.840.1.113883.6.1" displayName="Graviditeit" codeSystemName="LOINC"/>
            <xsl:call-template name="makeINTValue"/>
        </observation>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901116_20181102134343" match="pariteit_voor_deze_zwangerschap" mode="HandleParity">
        <!-- Make observation for parity based on ada pariteit_voor_deze_zwangerschap -->
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901116"/>
            <templateId root="2.16.840.1.113883.10.12.803"/>
            <code code="11977-6" codeSystem="2.16.840.1.113883.6.1" displayName="Parity" codeSystemName="LOINC"/>
            <xsl:call-template name="makeINTValue"/>
        </observation>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901133_20181103154700" match="onderzoek" mode="HandleOnderzoek">
        <!-- Lichamelijk onderzoek van Kernset Neonatologie -->
        <procedure classCode="ACT" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901133"/>
            <templateId root="2.16.840.1.113883.10.12.806"/>
            <code code="5880005" displayName="lichamelijk onderzoek (verrichting)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <!-- lichaamslengte -->
            <xsl:for-each select="lichaamslengte[.//(@value | @code | @nullFlavor)]">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.30_20171025000000"/>
                </entryRelationship>
            </xsl:for-each>
            <!-- lichaamsgewicht -->
            <xsl:for-each select="lichaamsgewicht[.//(@value | @code | @nullFlavor)]">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.28_20171025000000"/>
                </entryRelationship>
            </xsl:for-each>

            <!-- Lichaamstemperatuur -->
            <xsl:for-each select="lichaamstemperatuur[.//(@value | @code | @nullFlavor)]">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.56_20190916154439"/>
                </entryRelationship>
            </xsl:for-each>

            <!-- Schedelomvang -->
            <xsl:for-each select="schedelomvang[.//(@value | @code | @nullFlavor)]">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.55_20190708135422"/>
                </entryRelationship>
            </xsl:for-each>

            <!-- Apgar na 1 min -->
            <xsl:for-each select="apgar_score_na_1_min[.//(@value | @code | @nullFlavor)]">
                <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.900293"/>
                        <code code="9272-6" displayName="1 minute Apgar Score" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                        <xsl:for-each select="apgar_score_totaal[@value | @nullFlavor]">
                            <xsl:call-template name="makeINTValue"/>
                        </xsl:for-each>
                    </observation>
                </entryRelationship>
            </xsl:for-each>

            <!-- Apgar na 5 min -->
            <xsl:for-each select="apgar_score_na_5_min[.//(@value | @code | @nullFlavor)]">
                <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.900294"/>
                        <code code="9274-2" displayName="5 minute Apgar Score" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
                        <xsl:for-each select="apgar_score_totaal[@value | @nullFlavor]">
                            <xsl:call-template name="makeINTValue"/>
                        </xsl:for-each>
                    </observation>
                </entryRelationship>
            </xsl:for-each>

            <!-- NSpH pH van de navelstreng-->
            <xsl:for-each select="nsp_h_arterieel[@value | @nullFlavor]">
                <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901139"/>
                        <code code="56361000146105" displayName="Umbilical arterial cord pH (observable entity)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <xsl:call-template name="makePQValue"/>
                    </observation>
                </entryRelationship>
            </xsl:for-each>

            <!-- Base Excess -->
            <xsl:for-each select="be[@value | @nullFlavor]">
                <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901140"/>
                        <code code="56351000146107" displayName="Umbilical arterial cord base excess (observable entity)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <xsl:call-template name="makePQValue"/>
                    </observation>
                </entryRelationship>
            </xsl:for-each>
        </procedure>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901141_20181103092845" match="problematiek_kind" mode="HandleProblematiekKind">
        <!-- Problematiek kind van Kernset Neonatologie -->
        <section>
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901141"/>
            <templateId root="2.16.840.1.113883.10.12.701"/>
            <code code="58741000146107" displayName="Medical section (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <title>Gegevens Problematiek kind, Kernset Neonatologie</title>
            <text/>
            <!-- Geboortetrauma -->
            <xsl:for-each select="geboortetrauma[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901142"/>
                        <code code="58751000146105" displayName="Birth trauma (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>
                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">56110009</xsl:with-param>
                                    <xsl:with-param name="displayName">Birth trauma of fetus (disorder)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Probleem -->
                        <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>

            <!-- Ademhalingsondersteuning -->
            <xsl:for-each select="ademhalingsondersteuning[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901219"/>
                        <code code="109041000146101" displayName="Assisted breathing (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>
                        <!-- Ademhalingsondersteuning? 91104 , mapt op negationInd -->
                        <xsl:for-each select="ademhalingsondersteuningq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN">
                                    <xsl:with-param name="code">53950000</xsl:with-param>
                                    <xsl:with-param name="displayName">ademhalingstherapie (verrichting)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <xsl:for-each select="ademhaling[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901239_20190917000000"/>
                            </component>
                        </xsl:for-each>
                        <!-- Ademhalingsondersteuning - Verrichting -->
                        <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                            </component>
                        </xsl:for-each>
                        <!-- O2 op dag 28 -->
                        <xsl:for-each select="(o2_op_dag_28 | o2_op_dag_28q)[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901148_20181106144851"/>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>

            <!-- Respiratoir -->
            <xsl:for-each select="respiratoir[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901144"/>
                        <code code="59041000146102" displayName="Respiratory (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>
                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">50043002</xsl:with-param>
                                    <xsl:with-param name="displayName">respiratoire aandoening (aandoening)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Probleem -->
                        <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>
                        <!-- Verrichting -->
                        <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                            </component>
                        </xsl:for-each>
                        <!-- Medicatie -->
                        <xsl:for-each select="medicatie/*[@code | @nullFlavor]">
                            <component>
                                <substanceAdministration classCode="SBADM" moodCode="EVN">
                                    <templateId root="2.16.840.1.113883.2.4.6.10.90.901156"/>
                                    <consumable>
                                        <manufacturedProduct>
                                            <manufacturedMaterial>
                                                <xsl:call-template name="makeCode"/>
                                            </manufacturedMaterial>
                                        </manufacturedProduct>
                                    </consumable>
                                </substanceAdministration>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>

            <!-- Circulatoir -->
            <xsl:for-each select="circulatoir[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901157"/>
                        <code code="58761000146108" displayName="Circulatory (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>
                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">49601007</xsl:with-param>
                                    <xsl:with-param name="displayName">Disease of cardiovascular system (disorder)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Probleem -->
                        <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>
                        <!-- Verrichting -->
                        <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                            </component>
                        </xsl:for-each>
                        <!-- Hypotensie (indien minimaal inotropie) -->
                        <xsl:for-each select="hypotensie_indien_minimaal_inotropie[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">58871000146106</xsl:with-param>
                                    <xsl:with-param name="displayName">Inotropic therapy for hypotension (finding)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Probleem - PDA + Medicatie / Ligatie-->
                        <xsl:for-each select="medicatie_bij_pda[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN">
                                    <xsl:with-param name="code">58801000146104</xsl:with-param>
                                    <xsl:with-param name="displayName">Drug therapy for patent ductus arteriosus (procedure)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Ligatie bij PDA -->
                        <xsl:for-each select="ligatie_pda[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN">
                                    <xsl:with-param name="code">175212004</xsl:with-param>
                                    <xsl:with-param name="displayName">ligatie van ductus arteriosus Botalli (verrichting)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Ritmestoornissen waarvoor behandeling -->
                        <xsl:for-each select="ritmestoornissen_waarvoor_behandeling[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN">
                                    <xsl:with-param name="code">233154000</xsl:with-param>
                                    <xsl:with-param name="displayName">Procedure for arrhythmia (procedure)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Cor vitium waarvoor Prostin -->
                        <xsl:for-each select="cor_vitium_waarvoor_prostin[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN">
                                    <xsl:with-param name="code">59011000146103</xsl:with-param>
                                    <xsl:with-param name="displayName">Prostin therapy for congenital heart disease (procedure)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>
            <!-- Infectieus -->
            <xsl:for-each select="infectieus[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901164"/>
                        <code code="58861000146100" displayName="Infectious (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>
                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">40733004</xsl:with-param>
                                    <xsl:with-param name="displayName">Infectious disease (disorder)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Probleem -->
                        <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>
                        <!--  Antibiotica eerste 3 dagen peri30-dataelement-91045 -->
                        <xsl:for-each select="antibiotica_eerste_3_dagenq[@value | @nullFlavor]">
                            <component>
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.840.1.113883.2.4.6.10.90.901238"/>
                                    <code code="109051000146103" displayName="Antibiotics given during first three days of life (situation)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                    <xsl:call-template name="makeBLValue"/>
                                </observation>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>
            <!-- Infuus -->
            <xsl:for-each select="infuus[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901226"/>
                        <code code="109111000146101" displayName="Infusion section (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>
                        <!-- Observatie -->
                        <xsl:for-each select="infuuskatheter">
                            <component>
                                <observation classCode="OBS" moodCode="EVN">
                                    <templateId root="2.16.840.1.113883.2.4.6.10.90.901227"/>
                                    <code code="19923001" displayName="katheter (fysiek object)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                    <value code="424226004" displayName="Using device (attribute)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}">
                                        <xsl:attribute name="xsi:type" select="'CD'"/>
                                    </value>
                                    <!-- we know the product type (infuuskatheter) which is why it is not explicit again in the dataset, let's add it to medisch_hulpmiddel -->
                                    <xsl:variable name="medischHulpmiddelInclProduct" as="element()*">
                                        <xsl:for-each select="medisch_hulpmiddel">
                                            <xsl:element name="{./local-name()}">
                                                <xsl:if test="not(product/product_type[@code | @nullFlavor])">
                                                    <product xmlns="">
                                                        <product_type code="19923001" displayName="katheter (fysiek object)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                                                    </product>
                                                </xsl:if>
                                                <xsl:copy-of select="*"/>
                                            </xsl:element>
                                        </xsl:for-each>
                                    </xsl:variable>
                                    <xsl:for-each select="$medischHulpmiddelInclProduct">
                                        <entryRelationship typeCode="COMP">
                                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901224_20190704110142"/>
                                        </entryRelationship>
                                    </xsl:for-each>
                                </observation>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>
            <!-- Gastrointestinaal -->
            <xsl:for-each select="gastrointestinaal[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901167"/>
                        <code code="58821000146107" displayName="Gastrointestinal (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>

                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">53619000</xsl:with-param>
                                    <xsl:with-param name="displayName">aandoening van spijsverteringsstelsel (aandoening)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>

                        <!-- Probleem -->
                        <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>

                        <!-- Verrichting -->
                        <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                            </component>
                        </xsl:for-each>

                    </organizer>
                </entry>
            </xsl:for-each>
            <!-- Hematologisch -->
            <xsl:for-each select="hematologisch[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901175"/>
                        <code code="58851000146103" displayName="Hematology (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>

                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">21401000146106</xsl:with-param>
                                    <xsl:with-param name="displayName">Hematological disorder (disorder)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>

                        <!-- Zie https://bits.nictiz.nl/browse/GZ-749, probleem miste hier onterecht. Hier alvast toegevoegd. -->
                        <!-- Probleem -->
                        <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>

                        <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>
            <!-- Metabool en Endocrien -->
            <xsl:for-each select="metabool_en_endocrien[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901171"/>
                        <code code="58911000146108" displayName="Metabolic and endocrine (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>
                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">206481000</xsl:with-param>
                                    <xsl:with-param name="displayName">Perinatal endocrine and metabolic disorders (disorder)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Probleem -->
                        <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>

                        <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>
            <!-- Neurologisch -->
            <xsl:for-each select="neurologisch[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901183"/>
                        <code code="58941000146109" displayName="Neurological (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>
                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">118940003</xsl:with-param>
                                    <xsl:with-param name="displayName">aandoening van zenuwstelsel (aandoening)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <!-- Probleem -->
                        <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>
                        <!-- verrichting -->
                        <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>
            <!-- Zintuigen -->
            <xsl:for-each select="zintuigen[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901186_20181107000000"/>
                </entry>
            </xsl:for-each>
            <!-- congenitale_aandoeningen  -->
            <xsl:for-each select="congenitale_aandoeningen[.//(@value | @code | @nullFlavor)]">
                <entry>
                    <organizer classCode="CLUSTER" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901194"/>
                        <code code="58771000146102" displayName="Congenital disease (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <statusCode code="completed"/>

                        <!-- problemen aanwezig? -->
                        <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                                    <xsl:with-param name="code">66091009</xsl:with-param>
                                    <xsl:with-param name="displayName">Congenital disease (disorder)</xsl:with-param>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>

                        <!-- Aangeboren anatomische afwijkingen (major)/syndromen  -->
                        <!-- Stofwisselingsziekten  -->
                        <!-- Beiden hebben zib probleem eronder Probleem -->
                        <xsl:for-each select=".//probleem[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                            </component>
                        </xsl:for-each>

                        <!-- Chirurgische ingrepen-->
                        <!-- verrichting -->
                        <xsl:for-each select=".//verrichting[.//(@value | @code | @nullFlavor)]">
                            <component>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                            </component>
                        </xsl:for-each>
                    </organizer>
                </entry>
            </xsl:for-each>
        </section>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901148_20181106144851" match="o2_op_dag_28" mode="HandleO2Day28">
        <!-- Make observation for Requires oxygen on 28th day of life -->
        <observation classCode="OBS" moodCode="EVN">
            <xsl:call-template name="_BooleanAttribute"/>
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901148"/>
            <code code="59031000146105" displayName="Requires oxygen on 28th day of life (finding)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
        </observation>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901181_20181107170819" match="kernset_neonatologie" mode="HandleCDAKernsetNeo">
        <!-- Top level template for CDA for Kernset Neonatology -->

        <ClinicalDocument>
            <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 ../../../../../../../../../SVN/AORTA/trunk/XML/schemas/CDANL_extended.xsd'"/>
            <realmCode code="NL"/>
            <typeId extension="POCD_HD000040" root="2.16.840.1.113883.1.3"/>
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901181"/>
            <xsl:for-each select="documentgegevens/identificatie[@value | @root | @nullFlavor]">
                <xsl:call-template name="makeIIid"/>
            </xsl:for-each>
            <code code="118761000146105" displayName="rapport voor kwaliteitsregistratie over neonaten (gegevensobject)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <title>Kernset Neonatologie</title>
            <xsl:for-each select="documentgegevens/document_datum[@value | @nullFlavor]">
                <xsl:call-template name="makeTSValue">
                    <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" displayName="normal"/>
            <languageCode code="nl-NL"/>
            <xsl:for-each select="documentgegevens/identificatie[@value | @root | @nullFlavor]">
                <xsl:call-template name="makeIIValue">
                    <xsl:with-param name="elemName">setId</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="documentgegevens/versienummer[@value]">
                <versionNumber value="{@value}"/>
            </xsl:for-each>
            <!-- recordTarget - patient - kind -->
            <xsl:for-each select="kind/demografische_gegevens/patient[.//(@value | @code | @nullFlavor)]">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3_20170602000000"/>
            </xsl:for-each>

            <!-- author - zorgaanbieder -->
            <xsl:for-each select="zorgaanbieder[.//(@value | @code | @nullFlavor)]">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.51_20181218141008_za">
                    <!-- no dataset item available for authorTime... https://bits.nictiz.nl/browse/GZ-9 -->
                    <!--                <xsl:with-param name="authorTime"/>-->
                    <xsl:with-param name="softwareName" select="../documentgegevens/software_naam"/>
                </xsl:call-template>
            </xsl:for-each>

            <!-- custodian - zorgaanbieder -->
            <xsl:for-each select="zorgaanbieder[.//(@value | @code | @nullFlavor)]">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.50_20181217000000"/>
            </xsl:for-each>

            <xsl:for-each select="documentgegevens/verificatie_zorgverlener[geverifieerd_door_zorgverlenerq/@value = 'true']">
                <participant typeCode="VRF">
                    <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9174"/>
                    <xsl:for-each select="verificatie_datum[@value | @nullFlavor]">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">time</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Geverifieerd met zorgverlener -->
                    <associatedEntity classCode="ASSIGNED"/>
                </participant>
            </xsl:for-each>

            <!-- structured body -->
            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901109_20181102113603"/>

        </ClinicalDocument>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901186_20181107000000" match="zintuigen" mode="HandleSenses">
        <!-- Creates organizer for Senses -->
        <organizer classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901186"/>
            <code code="59061000146101" displayName="Senses (record artifact)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <statusCode code="completed"/>
            <!-- problemen aanwezig? -->
            <xsl:for-each select="problemen_aanwezigq[@value | @nullFlavor]">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000_YN">
                        <xsl:with-param name="code">60981000146109</xsl:with-param>
                        <xsl:with-param name="displayName">Disorder of sensory function (disorder)</xsl:with-param>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Probleem -->
            <xsl:for-each select="probleem[.//(@value | @code | @nullFlavor)]">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.3.19_20180611000000"/>
                </component>
            </xsl:for-each>
            <!-- verrichting -->
            <xsl:for-each select="verrichting[.//(@value | @code | @nullFlavor)]">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000"/>
                </component>
            </xsl:for-each>
            <!-- ROP Screening verricht: NEE -->
            <xsl:for-each select="rop_screening_verrichtq[@value | @nullFlavor]">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.3.23_20171025000000_YN">
                        <xsl:with-param name="code">698349008</xsl:with-param>
                        <xsl:with-param name="displayName">Screening for retinopathy of prematurity (procedure)</xsl:with-param>
                    </xsl:call-template>
                </component>
            </xsl:for-each>

            <!-- ROP screening afgesloten? -->
            <xsl:for-each select="rop_screening_afgeslotenq[@value | @nullFlavor]">
                <component>
                    <observation classCode="OBS" moodCode="EVN">
                        <templateId root="2.16.840.1.113883.2.4.6.10.90.901189"/>
                        <code code="59051000146104" codeSystem="{$oidSNOMEDCT}" displayName="Screening for retinopathy of prematurity done or not indicated (situation)" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <xsl:call-template name="makeBLValue"/>
                    </observation>
                </component>
            </xsl:for-each>

            <!-- AABR  -->
            <xsl:if test="(aabr_verrichtq | aabr_afwijkendq)[@value | @nullFlavor]">
                <component>
                    <procedure classCode="PROC" moodCode="EVN">
                        <xsl:for-each select="aabr_verrichtq[@value | @nullFlavor]">
                            <xsl:call-template name="_BooleanAttribute"/>
                        </xsl:for-each>
                        <templateId root="2.16.840.1.113883.2.4.3.11.60.7.10.3.23"/>
                        <code code="413083006" displayName="geautomatiseerde auditieve hersenstamrespons (verrichting)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <!-- afwijkend  -->
                        <xsl:for-each select="aabr_afwijkendq[@value | @nullFlavor]">
                            <entryRelationship typeCode="COMP">
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901191_20181108093237"/>
                            </entryRelationship>
                        </xsl:for-each>
                    </procedure>
                </component>
            </xsl:if>

            <!-- BERA -->
            <xsl:if test="(bera_verrichtq | bera)[.//(@value | @code | @nullFlavor)]">
                <component>
                    <procedure classCode="PROC" moodCode="EVN">
                        <xsl:for-each select="bera_verrichtq[@value | @nullFlavor]">
                            <xsl:call-template name="_BooleanAttribute"/>
                        </xsl:for-each>
                        <templateId root="2.16.840.1.113883.2.4.3.11.60.7.10.3.23"/>
                        <!-- VerrichtingType -->
                        <code code="252616000" displayName="hersenstamaudiometrie (verrichting)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <!-- Lateraliteit -->
                        <xsl:for-each select="bera/bera_lateraliteit">
                            <targetSiteCode code="442083009" codeSystem="{$oidSNOMEDCT}" displayName="anatomische of verworven lichaamsstructuur (lichaamsstructuur)">
                                <qualifier>
                                    <name code="272741003" codeSystem="{$oidSNOMEDCT}" displayName="Laterality"/>
                                    <xsl:call-template name="makeCDValue">
                                        <xsl:with-param name="xsiType"/>
                                    </xsl:call-template>
                                    <!--       <value code="7771000" codeSystem="{$oidSNOMEDCT}" displayName="Left"/>-->
                                </qualifier>
                            </targetSiteCode>
                        </xsl:for-each>
                        <!-- afwijkend  -->
                        <xsl:for-each select="bera/bera_afwijkendq[@value | @nullFlavor]">
                            <entryRelationship typeCode="COMP">
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901191_20181108093237"/>
                            </entryRelationship>
                        </xsl:for-each>
                    </procedure>
                </component>
            </xsl:if>
        </organizer>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901191_20181108093237" match="element()" mode="HandleAbnormalFinding">
        <!-- template for Abnormal finding on evaluation procedure. Context is ada boolean element -->
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901191"/>
            <code code="442618008" displayName="Abnormal finding on evaluation procedure (finding)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <xsl:call-template name="makeBLValue"/>
        </observation>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901216_20190531145950" match="zwangerschapsduur" mode="HandleBirthPregDuration">
        <!-- Make observation for length of gestation at birth -->
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901216"/>
            <code code="412726003" displayName="Length of gestation at birth" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <xsl:call-template name="makePQValue"/>
        </observation>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901224_20190704110142" match="medisch_hulpmiddel" mode="HandleMedicalDevice">
        <!-- Make medical device including start AND end date (end date not in zib 2017) -->
        <organizer classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901224"/>
            <statusCode code="completed"/>
            <component typeCode="COMP" contextConductionInd="true">
                <supply classCode="SPLY" moodCode="EVN">
                    <xsl:if test="(begin_datum | begindatum)[@value | @nullFlavor] or (eind_datum | einddatum)[@value | @nullFlavor]">
                        <effectiveTime>
                            <xsl:attribute name="xsi:type" select="'IVL_TS'"/>
                            <xsl:for-each select="(begin_datum | begindatum)[@value | @nullFlavor]">
                                <xsl:call-template name="makeTSValue">
                                    <xsl:with-param name="elemName">low</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <xsl:for-each select="(eind_datum | einddatum)[@value | @nullFlavor]">
                                <xsl:call-template name="makeTSValue">
                                    <xsl:with-param name="elemName">high</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                        </effectiveTime>
                    </xsl:if>
                    <xsl:for-each select="product[.//(@value | @code | @nullFlavor)]">
                        <participant typeCode="PRD">
                            <xsl:for-each select="product_type[@code | @nullFlavor]">
                                <participantRole classCode="MANU">
                                    <playingDevice classCode="DEV">
                                        <xsl:call-template name="makeCode"/>
                                    </playingDevice>
                                </participantRole>
                            </xsl:for-each>
                        </participant>
                    </xsl:for-each>
                </supply>
            </component>
        </organizer>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901239_20190917000000" match="ademhaling" mode="HandleRespiration">
        <!-- Make respiration -->
        <!-- local template in peri because underlying medisch hulpmiddel also needs specific template due to missing enddate in 2017 zib publication -->
        <procedure classCode="PROC" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901239"/>
            <code code="422834003" displayName="Respiratory assessment (procedure)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <!-- medisch hulpmiddel, 90232, zib medisch hulpmiddel -->
            <!-- local template in peri because the zib 2017 publication does not allow for enddate in medisch hulpmiddel -->
            <xsl:for-each select="toegediende_zuurstof/toediening_hulpmiddel/medisch_hulpmiddel[.//(@value | @code | @nullFlavor)]">
                <entryRelationship typeCode="COMP">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.90.901224_20190704110142"/>
                </entryRelationship>
            </xsl:for-each>
        </procedure>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.90.901246_20200312122852">
        <!-- Aantal geboren kinderen  -->
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.90.901246"/>
            <code code="118861000146102" displayName="aantal geboren kinderen uit zwangerschap (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            <!-- Item(s) :: aantal_geboren_kinderen-->
            <xsl:call-template name="makeINTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
</xsl:stylesheet>
