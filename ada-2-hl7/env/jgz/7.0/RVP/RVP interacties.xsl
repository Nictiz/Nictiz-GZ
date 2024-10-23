<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0">


    <!-- ================================================ PAYLOAD ================================================ -->

    <!-- Bericht 1 Opvragen vaccinatiestatus (payload) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.181_20120901000000">
        <queryByParameter xmlns="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.181"/>
            <queryId/>
            <statusCode code="executing"/>
            <responseModalityCode code="R"/>
            <responsePriorityCode code="I"/>
            <executionAndDeliveryTime/>
            <patientId>
                <!-- Item(s) :: bsn-->
                <xsl:for-each select="bsn">
                    <xsl:call-template name="makeII.NL.BSNValue">
                        <xsl:with-param name="elemName">value</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
            </patientId>
            <person.addr>
                <value use="">
                    <!-- Item(s) :: huisnummer-->
                    <xsl:for-each select="huisnummer">
                        <xsl:call-template name="makeADXPValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">houseNumber</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: huisletter-->
                    <xsl:if test="huisletter | huisnummertoevoeging">
                        <buildingNumberSuffix>
                            <xsl:value-of select="string-join((huisletter/@value, huisnummertoevoeging/@value), ' ')"/>
                        </buildingNumberSuffix>
                    </xsl:if>
                    <!-- Item(s) :: huisnummertoevoeging-->
                    <xsl:for-each select="huisnummertoevoeging">
                        <xsl:choose>
                            <xsl:when test=".[@code = '1'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.100.12.11']">
                                <additionalLocator>by</additionalLocator>
                            </xsl:when>
                            <xsl:when test=".[@code = '2'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.100.12.11']">
                                <additionalLocator>to</additionalLocator>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="makeADXPValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">additionalLocator</xsl:with-param>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                    <!-- Item(s) :: postcode-->
                    <xsl:for-each select="postcode">
                        <xsl:choose>
                            <xsl:when test="matches(@value, '^\d{4}[A-Za-z]{2}$')">
                                <postalCode>
                                    <xsl:value-of select="replace(@value, '^(\d{4})([A-Za-z]{2})$', '$1 $2')"/>
                                </postalCode>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="makeADXPValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">postalCode</xsl:with-param>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </value>
            </person.addr>
            <person.administrativeGender>
                <!-- Item(s) :: geslacht-->
                <xsl:for-each select="geslacht">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="elemName">value</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
            </person.administrativeGender>
            <person.birthTime>
                <!-- Item(s) :: geboortedatum-->
                <xsl:for-each select="geboortedatum">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">value</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
            </person.birthTime>
            <person.name>
                <value use="OR">
                    <!-- Item(s) :: voornaam-->
                    <xsl:for-each select="voornaam">
                        <xsl:call-template name="makeENXPValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">given</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: voorvoegsel_geslachtsnaam-->
                    <xsl:for-each select="voorvoegsel_geslachtsnaam">
                        <xsl:call-template name="makeENXPValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="qualifier">BR VV</xsl:with-param>
                            <xsl:with-param name="elemName">prefix</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: geslachtsnaam-->
                    <xsl:for-each select="geslachtsnaam">
                        <xsl:call-template name="makeENXPValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="qualifier">BR</xsl:with-param>
                            <xsl:with-param name="elemName">family</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </value>
            </person.name>
        </queryByParameter>
    </xsl:template>

    <!-- Bericht 2 Opleveren vaccinatiestatus (payload) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.182_20120901000000">
        <xsl:for-each select="groep_g094_vaccinatieschema">
            <VaccinationAdministrationList xmlns="urn:hl7-org:v3" classCode="LIST" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.6.10.100.182"/>
                <xsl:for-each select="r003_persoonsgegevens">
                    <subject typeCode="SBJ">
                        <!-- Template :: R_PatientNL GBA [identified/confirmable] -->
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.102_20120801000000"/>
                    </subject>
                </xsl:for-each>
                <xsl:for-each select="r041_rijksvaccinatieprogramma_en_andere_vaccinaties | groep_g076_vaccinatie | groep_g095_geplande_vaccinatie">
                    <component typeCode="COMP">
                        <!-- Template :: A_Rijksvaccinatie [informational/all] -->
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.123_20121001000000"/>
                    </component>
                </xsl:for-each>
            </VaccinationAdministrationList>
        </xsl:for-each>
    </xsl:template>

    <!-- Bericht 3 Geldige partijnummers (payload) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.140_20120801000000">
        <ProductList xmlns="urn:hl7-org:v3" classCode="LIST" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.140"/>
            <code code="373873005" codeSystem="2.16.840.1.113883.6.96" displayName="Pharmaceutical / biologic product"/>
            <effectiveTime>
                <low/>
                <high/>
                <!-- Template ::  -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10244_20120801000000"/>
            </effectiveTime>
            <product typeCode="PRD">
                <instanceOfKind classCode="INST">
                    <productInstanceInstance classCode="MMAT" determinerCode="INSTANCE">
                        <!-- Item(s) :: partijnummer-->
                        <xsl:for-each select="partijnummer">
                            <xsl:call-template name="makeIIValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">id</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <expirationTime>
                            <high/>
                        </expirationTime>
                        <asInstanceOfKind classCode="INST">
                            <kindOfMaterialKind classCode="MAT" determinerCode="KIND">
                                <!-- Item(s) :: soort_vaccinatie-->
                                <xsl:for-each select="soort_vaccinatie">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">code</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </kindOfMaterialKind>
                        </asInstanceOfKind>
                    </productInstanceInstance>
                    <kindOfProduct classCode="MAT" determinerCode="KIND">
                        <code/>
                    </kindOfProduct>
                </instanceOfKind>
            </product>
        </ProductList>
    </xsl:template>

    <!-- Bericht 4 Versturen vaccinaties (payload) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.180_20120801000000">
        <CareProvisionEvent xmlns="urn:hl7-org:v3" classCode="PCPR" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.180"/>
            <!-- Item(s) :: dossiernummer-->
            <xsl:for-each select="dossiernummer">
                <xsl:call-template name="makeIIValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">id</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <code code="CPHC" codeSystem="2.16.840.1.113883.5.4"/>
            <!-- Item(s) :: dossier_status-->
            <xsl:for-each select="dossier_status">
                <xsl:call-template name="makeCSValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">statusCode</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="groep_g103_periode_zorg">
                <effectiveTime xsi:type="IVL_TS">
                    <xsl:if test="startdatum_zorg">
                        <!-- Item(s) :: startdatum_zorg-->
                        <xsl:for-each select="startdatum_zorg">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">low</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="einddatum_zorg">
                        <!-- Item(s) :: einddatum_zorg-->
                        <xsl:for-each select="einddatum_zorg">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">high</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </xsl:if>
                </effectiveTime>
            </xsl:for-each>
            <xsl:for-each select="r003_persoonsgegevens">
                <subject typeCode="SBJ">
                    <!-- Template :: R_PatientNL GBA [identified/confirmable] -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.102_20120801000000"/>
                </subject>
            </xsl:for-each>
            <xsl:for-each select="groep_g091_verantwoordelijke_jgzorganisatie_obv_de_brp | groep_g085_uitvoerende_jgzorganisatie | r005_betrokken_jgzorganisaties">
                <performer typeCode="PRF">
                    <!-- Template :: R_AssignedEntityNL [identified] -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.122_20120801000000"/>
                </performer>
            </xsl:for-each>
            <xsl:for-each select="groep_g091_verantwoordelijke_jgzorganisatie_obv_de_brp | groep_g085_uitvoerende_jgzorganisatie | r005_betrokken_jgzorganisaties">
                <author typeCode="AUT">
                    <!-- Template :: R_AssignedEntityNL [identified] -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.122_20120801000000"/>
                </author>
            </xsl:for-each>
            <component typeCode="COMP">
                <xsl:for-each select="r018_activiteit">
                    <encounterEvent moodCode="EVN" classCode="ENC">
                        <!-- Item(s) :: activiteit_id-->
                        <xsl:for-each select="activiteit_id">
                            <xsl:call-template name="makeIIValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">id</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: soort_activiteit-->
                        <xsl:for-each select="soort_activiteit">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: datum_activiteit-->
                        <xsl:for-each select="datum_activiteit">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <xsl:for-each select="r041_rijksvaccinatieprogramma_en_andere_vaccinaties | groep_g076_vaccinatie">
                            <component typeCode="COMP">
                                <!-- Template :: A_Rijksvaccinatie [informational/administered] -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.117_20120801000000"/>
                            </component>
                        </xsl:for-each>
                    </encounterEvent>
                </xsl:for-each>
            </component>
        </CareProvisionEvent>
    </xsl:template>

    <!-- Bericht 5 Hielprikverzoek (payload) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.130_20120801000000">
        <procedureRequest xmlns="urn:hl7-org:v3" classCode="SPECCOLLECT" moodCode="RQO">
            <realmCode code="NL"/>
            <templateId root="2.16.840.1.113883.2.4.6.10.100.130"/>
            <id/>
            <!-- Item(s) :: type_hielprik-->
            <xsl:for-each select="type_hielprik">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">code</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <statusCode code="active"/>
            <xsl:for-each select="r003_persoonsgegevens">
                <recordTarget typeCode="RCT">
                    <!-- Template :: R_SubjectNL_JGZ Informal [identified/confirmable] -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.172_20120801000000"/>
                </recordTarget>
            </xsl:for-each>
            <!-- Item(s) :: reden_herhalingtweede_hielprik-->
            <xsl:for-each select="reden_herhalingtweede_hielprik">
                <reason typeCode="RSON" contextConductionInd="false">
                    <act classCode="ALRT" moodCode="EVN">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                    </act>
                </reason>
            </xsl:for-each>
            <!-- Item(s) :: setnummer_vorige_hielprik-->
            <xsl:for-each select="setnummer_vorige_hielprik">
                <pertinentInformation typeCode="REFR" contextConductionInd="false">
                    <act classCode="DOC" moodCode="EVN">
                        <xsl:call-template name="makeIIValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">id</xsl:with-param>
                        </xsl:call-template>
                        <code code="1432" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1432'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                    </act>
                </pertinentInformation>
            </xsl:for-each>
            <!-- Item(s) :: bijzonderheden_hielprikafname-->
            <xsl:for-each select="bijzonderheden_hielprikafname">
                <subjectOf6 typeCode="SUBJ" contextConductionInd="false">
                    <seperatableInd value="false"/>
                    <annotation classCode="ACT" moodCode="EVN">
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">text</xsl:with-param>
                        </xsl:call-template>
                        <statusCode code="completed"/>
                        <author typeCode="AUT">
                            <assignedEntity classCode="ASSIGNED">
                                <id/>
                            </assignedEntity>
                        </author>
                    </annotation>
                </subjectOf6>
            </xsl:for-each>
        </procedureRequest>
    </xsl:template>

    <!-- Bericht 7 Vaccinatieoproeplijst (payload) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.160_20150629000000">
        <immunizationRequestList xmlns="urn:hl7-org:v3" classCode="LIST" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.160"/>
            <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" displayName="Immunization"/>
            <component typeCode="COMP">
                <organizer classCode="ACT" moodCode="EVN">
                    <xsl:for-each select="r003_persoonsgegevens">
                        <subject typeCode="SBJ">
                            <!-- Template :: R_PatientNL_JGZ Informal [optional BSN] -->
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.135_20150713000000"/>
                        </subject>
                    </xsl:for-each>
                    <component typeCode="COMP">
                        <substanceAdministration classCode="SBADM" moodCode="INT" negationInd="false">
                            <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" displayName="Immunization"/>
                            <effectiveTime/>
                            <consumable typeCode="CSM">
                                <medication classCode="ADMM">
                                    <administrableMedicine classCode="MMAT" determinerCode="KIND">
                                        <code/>
                                        <lotNumberText/>
                                    </administrableMedicine>
                                </medication>
                            </consumable>
                        </substanceAdministration>
                    </component>
                </organizer>
            </component>
        </immunizationRequestList>
    </xsl:template>

    <!-- ================================================ INTERACTIES ================================================ -->

    <!-- Versturen vaccinaties (interactie) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.14_20120801000000">
        <ControlActProcess xmlns="urn:hl7-org:v3">
            <xsl:attribute name="moodCode">EVN</xsl:attribute>
            <authorOrPerformer typeCode="AUT">
                <participant>
                    <AssignedDevice>
                        <id extension="091287345" root="{$oidUZISystems}"/>
                        <Organization>
                            <id extension="00001111" root="{$oidURAOrganizations}"/>
                            <name>GGD Groningen</name>
                        </Organization>
                    </AssignedDevice>
                </participant>
            </authorOrPerformer>
            <subject typeCode="SUBJ">
                <!-- Template :: Bericht 4 Versturen vaccinaties (payload) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.180_20120801000000"/>
            </subject>
        </ControlActProcess>
    </xsl:template>

    <!-- Versturen hielprikverzoek (interactie) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.15_20120801000000">
        <ControlActProcess xmlns="urn:hl7-org:v3">
            <xsl:attribute name="moodCode">EVN</xsl:attribute>
            <authorOrPerformer typeCode="AUT">
                <participant>
                    <AssignedDevice>
                        <id extension="091287345" root="{$oidUZISystems}"/>
                        <Organization>
                            <id extension="00001111" root="{$oidURAOrganizations}"/>
                            <name>GGD Groningen</name>
                        </Organization>
                    </AssignedDevice>
                </participant>
            </authorOrPerformer>
            <subject typeCode="SUBJ">
                <!-- Template :: Bericht 5 Hielprikverzoek (payload) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.130_20120801000000"/>
            </subject>
        </ControlActProcess>
    </xsl:template>

    <!-- Opvragen vaccinatiestatus (interactie) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.16_20121001000000">
        <ControlActProcess xmlns="urn:hl7-org:v3">
            <xsl:attribute name="moodCode">EVN</xsl:attribute>
            <authorOrPerformer typeCode="AUT">
                <participant>
                    <AssignedDevice>
                        <id extension="091287345" root="{$oidUZISystems}"/>
                        <Organization>
                            <id extension="00001111" root="{$oidURAOrganizations}"/>
                            <name>GGD Groningen</name>
                        </Organization>
                    </AssignedDevice>
                </participant>
            </authorOrPerformer>
            <!-- Template :: Bericht 1 Opvragen vaccinatiestatus (payload) -->
            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.181_20120901000000"/>
        </ControlActProcess>
    </xsl:template>

    <!-- Opleveren vaccinatiestatus (interactie) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.17_20121001000000">
        <ControlActProcess xmlns="urn:hl7-org:v3">
            <xsl:attribute name="moodCode">EVN</xsl:attribute>
            <authorOrPerformer typeCode="AUT">
                <participant>
                    <AssignedDevice>
                        <id extension="091287345" root="{$oidUZISystems}"/>
                        <Organization>
                            <id extension="00001111" root="{$oidURAOrganizations}"/>
                            <name>GGD Groningen</name>
                        </Organization>
                    </AssignedDevice>
                </participant>
            </authorOrPerformer>
            <xsl:for-each select="groep_g094_vaccinatieschema">
                <subject typeCode="SUBJ">
                    <!-- Template :: Bericht 2 Opleveren vaccinatiestatus (payload) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.182_20120901000000"/>
                </subject>
            </xsl:for-each>
            <queryAck>
                <queryId/>
                <statusCode/>
                <queryResponseCode/>
                <resultTotalQuantity/>
                <resultCurrentQuantity/>
                <resultRemainingQuantity/>
            </queryAck>
        </ControlActProcess>
    </xsl:template>

    <!-- Versturen geldige partijnummers (interactie) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.13_20120801000000">
        <ControlActProcess xmlns="urn:hl7-org:v3">
            <xsl:attribute name="moodCode">EVN</xsl:attribute>
            <authorOrPerformer typeCode="AUT">
                <participant>
                    <AssignedDevice>
                        <id extension="091287345" root="{$oidUZISystems}"/>
                        <Organization>
                            <id extension="00001111" root="{$oidURAOrganizations}"/>
                            <name>GGD Groningen</name>
                        </Organization>
                    </AssignedDevice>
                </participant>
            </authorOrPerformer>
            <subject typeCode="SUBJ">
                <!-- Template :: Bericht 3 Geldige partijnummers (payload) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.140_20120801000000"/>
            </subject>
        </ControlActProcess>
    </xsl:template>

    <!-- Versturen vaccinatiesoproeplijst (interactie) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.18_20150629000000">
        <REPC_IN002160NL xmlns="urn:hl7-org:v3">
            <id/>
            <creationTime/>
            <versionCode code="NICTIZEd2005-Okt"/>
            <interactionId root="2.16.840.1.113883.1.6"/>
            <profileId extension="810" root="2.16.840.1.113883.2.4.3.11.1"/>
            <processingCode code="P"/>
            <processingModeCode code="T"/>
            <acceptAckCode/>
            <attentionLine>
                <keyWordText/>
                <value xsi:type="ANY"/>
            </attentionLine>
            <receiver typeCode="RCV">
                <device>
                    <id root="{$oidAORTAApplicatieID}" extension=""/>
                </device>
            </receiver>
            <sender typeCode="SND">
                <device>
                    <id root="{$oidAORTAApplicatieID}" extension=""/>
                </device>
            </sender>
            <ControlActProcess moodCode="EVN">
                <authorOrPerformer typeCode="AUT">
                    <participant>
                        <AssignedDevice>
                            <!-- Template :: Assigned Device [universal] -->
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.513_20120901000000"/>
                        </AssignedDevice>
                    </participant>
                </authorOrPerformer>
                <subject>
                    <!-- Template :: Bericht 7 Vaccinatieoproeplijst (payload) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.160_20150629000000"/>
                </subject>
            </ControlActProcess>
        </REPC_IN002160NL>
    </xsl:template>

    <!-- ================================================ OVERIG ================================================ -->

    <!-- ControlAct Vaccinatiesoproeplijst -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.203_20150629000000">
        <ControlActProcess xmlns="urn:hl7-org:v3" moodCode="EVN">
            <authorOrPerformer typeCode="AUT">
                <participant>
                    <AssignedDevice>
                        <!-- Template :: Assigned Device [universal] -->
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.513_20120901000000"/>
                    </AssignedDevice>
                </participant>
            </authorOrPerformer>
            <subject>
                <!-- Template :: Bericht 7 Vaccinatieoproeplijst (payload) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.160_20150629000000"/>
            </subject>
        </ControlActProcess>
    </xsl:template>

    <!-- R_PatientNL GBA [identified/confirmable] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.102_20120801000000">
        <xsl:for-each select="r003_persoonsgegevens">
            <patient xmlns="urn:hl7-org:v3" classCode="PAT">
                <templateId root="2.16.840.1.113883.2.4.6.10.100.102"/>
                <!-- Item(s) :: bsn-->
                <xsl:for-each select="bsn">
                    <xsl:call-template name="makeII.NL.BSNValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">id</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Adres -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10222_20120801000000"/>
                <patientPerson classCode="PSN" determinerCode="INSTANCE">
                    <!-- NaamKindOfficieel -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10232_20120801000000"/>
                    <!-- Item(s) :: geslacht-->
                    <xsl:for-each select="geslacht">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">administrativeGenderCode</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: geboortedatum-->
                    <xsl:for-each select="geboortedatum">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">birthTime</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </patientPerson>
            </patient>
        </xsl:for-each>
    </xsl:template>

    <!-- R_PatientNL_JGZ Informal [optional BSN] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.135_20150713000000">
        <xsl:for-each select="r003_persoonsgegevens">
            <patient xmlns="urn:hl7-org:v3" classCode="PAT">
                <templateId root="2.16.840.1.113883.2.4.6.10.100.135"/>
                <xsl:if test="bsn">
                    <!-- Item(s) :: bsn-->
                    <xsl:for-each select="bsn">
                        <xsl:call-template name="makeII.NL.BSNValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">id</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="vreemdelingennummer">
                    <!-- Item(s) :: vreemdelingennummer-->
                    <xsl:for-each select="vreemdelingennummer">
                        <xsl:call-template name="makeIIValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">id</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:if>
                <!-- Adres -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10222_20120801000000"/>
                <statusCode code="active"/>
                <!-- PatientPerson [universal] -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.163_20120801000000"/>
            </patient>
        </xsl:for-each>
    </xsl:template>

    <!-- R_PatientNL_JGZ Informal [identified/confirmable] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.103_20120801000000">
        <xsl:for-each select="r003_persoonsgegevens">
            <patient xmlns="urn:hl7-org:v3" classCode="PAT">
                <templateId root="2.16.840.1.113883.2.4.6.10.100.103"/>
                <!-- Item(s) :: bsn-->
                <xsl:for-each select="bsn">
                    <xsl:call-template name="makeII.NL.BSNValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">id</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Adres -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10222_20120801000000"/>
                <statusCode code="active"/>
                <patientPerson classCode="PSN" determinerCode="INSTANCE">
                    <templateId root="2.16.840.1.113883.2.4.6.10.100.163"/>
                    <!-- NaamKindOfficieel -->
                    <xsl:variable name="naamOfficieel" as="element()?">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10232_20120801000000"/>
                    </xsl:variable>
                    <xsl:choose>
                        <xsl:when test="$naamOfficieel">
                            <xsl:copy-of select="$naamOfficieel"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- NaamKindZoalsBekendBijInstelling -->
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10233_20120801000000"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <!-- Item(s) :: geslacht-->
                    <xsl:for-each select="geslacht">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">administrativeGenderCode</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: geboortedatum-->
                    <xsl:for-each select="geboortedatum">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">birthTime</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: meerling-->
                    <xsl:for-each select="meerling">
                        <xsl:call-template name="makeBLValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">multipleBirthInd</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: volgnummer_bij_meerling-->
                    <xsl:for-each select="volgnummer_bij_meerling">
                        <xsl:call-template name="makeINT.POSValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">multipleBirthOrderNumber</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:for-each select="groep_g004_contactpersoon_client">
                        <contactParty>
                            <!-- Item(s) :: telefoonnummer_contactpersoon-->
                            <xsl:for-each select="telefoonnummer_contactpersoon">
                                <xsl:call-template name="makeTELValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">telecom</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <xsl:for-each select="groep_g097_periode_geldigheid_contactpersoon">
                                <effectiveTime xsi:type="IVL_TS">
                                    <!-- Item(s) :: startdatum_geldigheid_contactpersoon-->
                                    <xsl:for-each select="startdatum_geldigheid_contactpersoon">
                                        <xsl:call-template name="makeTSValue">
                                            <xsl:with-param name="xsiType" select="''"/>
                                            <xsl:with-param name="elemName">low</xsl:with-param>
                                        </xsl:call-template>
                                    </xsl:for-each>
                                    <!-- Item(s) :: einddatum_geldigheid_contactpersoon-->
                                    <xsl:for-each select="einddatum_geldigheid_contactpersoon">
                                        <xsl:call-template name="makeTSValue">
                                            <xsl:with-param name="xsiType" select="''"/>
                                            <xsl:with-param name="elemName">high</xsl:with-param>
                                        </xsl:call-template>
                                    </xsl:for-each>
                                </effectiveTime>
                            </xsl:for-each>
                            <contactPerson classCode="PSN" determinerCode="INSTANCE">
                                <!-- Item(s) :: naam_contactpersoon-->
                                <xsl:for-each select="naam_contactpersoon">
                                    <xsl:call-template name="makePNValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">name</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </contactPerson>
                        </contactParty>
                    </xsl:for-each>
                    <birthPlace>
                        <addr>
                            <!-- Item(s) :: geboorteplaats-->
                            <xsl:for-each select="geboorteplaats">
                                <xsl:call-template name="makeSCValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">county</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <!-- Item(s) :: geboorteland-->
                            <xsl:for-each select="geboorteland">
                                <xsl:call-template name="makeSCValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">country</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                        </addr>
                    </birthPlace>
                </patientPerson>
            </patient>
        </xsl:for-each>
    </xsl:template>

    <!-- PatientPerson [minimal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.136_20150713000000">
        <patientPerson xmlns="urn:hl7-org:v3" classCode="PSN" determinerCode="INSTANCE">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.136"/>
            <!-- NaamKindOfficieel -->
            <xsl:variable name="naamOfficieel" as="element()?">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10232_20120801000000"/>
            </xsl:variable>
            <xsl:choose>
                <xsl:when test="$naamOfficieel">
                    <xsl:copy-of select="$naamOfficieel"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- NaamKindZoalsBekendBijInstelling -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10233_20120801000000"/>
                </xsl:otherwise>
            </xsl:choose>
            <!-- Item(s) :: geslacht-->
            <xsl:for-each select="geslacht">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">administrativeGenderCode</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: geboortedatum-->
            <xsl:for-each select="geboortedatum">
                <xsl:call-template name="makeTSValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">birthTime</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: meerling-->
            <xsl:for-each select="meerling">
                <xsl:call-template name="makeBLValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">multipleBirthInd</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: volgnummer_bij_meerling-->
            <xsl:for-each select="volgnummer_bij_meerling">
                <xsl:call-template name="makeINT.POSValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">multipleBirthOrderNumber</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="groep_g004_contactpersoon_client">
                <contactParty>
                    <!-- Item(s) :: telefoonnummer_contactpersoon-->
                    <xsl:for-each select="telefoonnummer_contactpersoon">
                        <xsl:call-template name="makeTELValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">telecom</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:for-each select="groep_g097_periode_geldigheid_contactpersoon">
                        <effectiveTime xsi:type="IVL_TS">
                            <!-- Item(s) :: startdatum_geldigheid_contactpersoon-->
                            <xsl:for-each select="startdatum_geldigheid_contactpersoon">
                                <xsl:call-template name="makeTSValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">low</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <!-- Item(s) :: einddatum_geldigheid_contactpersoon-->
                            <xsl:for-each select="einddatum_geldigheid_contactpersoon">
                                <xsl:call-template name="makeTSValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">high</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                        </effectiveTime>
                    </xsl:for-each>
                    <contactPerson classCode="PSN" determinerCode="INSTANCE">
                        <!-- Item(s) :: naam_contactpersoon-->
                        <xsl:for-each select="naam_contactpersoon">
                            <xsl:call-template name="makePNValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">name</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </contactPerson>
                </contactParty>
            </xsl:for-each>
            <birthPlace>
                <addr>
                    <!-- Item(s) :: geboorteplaats-->
                    <xsl:for-each select="geboorteplaats">
                        <xsl:call-template name="makeSCValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">county</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: geboorteland-->
                    <xsl:for-each select="geboorteland">
                        <xsl:call-template name="makeSCValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">country</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </addr>
            </birthPlace>
        </patientPerson>
    </xsl:template>

    <!-- Periode-M-Start-M-Eind-M -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10244_20120801000000">
        <low xmlns="urn:hl7-org:v3"/>
        <high xmlns="urn:hl7-org:v3"/>
    </xsl:template>

    <!-- A_Rijksvaccinatie [informational/administered] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.117_20120801000000">
        <substanceAdministrationEvent xmlns="urn:hl7-org:v3" classCode="SBADM" moodCode="EVN" negationInd="{exists(bezwaar)}">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.117"/>
            <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" displayName="Immunization"/>
            <!-- Item(s) :: datum_vaccinatie-->
            <xsl:for-each select="datum_vaccinatie">
                <xsl:call-template name="makeTSValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <consumable typeCode="CSM">
                <medication classCode="ADMM">
                    <administrableMedicine classCode="MMAT" determinerCode="KIND">
                        <!-- Item(s) :: soort_vaccinatie-->
                        <xsl:for-each select="soort_vaccinatie">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: partijnummer-->
                        <xsl:for-each select="partijnummer">
                            <xsl:call-template name="makeSTValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">lotNumberText</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </administrableMedicine>
                </medication>
            </consumable>
            <performer typeCode="PRF">
                <!-- Template :: R_AssignedEntityNL [confirmable/location] -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.124_20120801000000"/>
            </performer>
            <!-- Item(s) :: bezwaar-->
            <xsl:for-each select="bezwaar">
                <authorization typeCode="AUTH">
                    <consentEvent classCode="CONS" moodCode="EVN" negationInd="true">
                        <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" displayName="Immunization"/>
                        <reasonOf typeCode="RSON">
                            <observationEvent classCode="OBS" moodCode="EVN">
                                <code code="683" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                    <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '683'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                </code>
                                <xsl:call-template name="makeCVValue">
                                    <xsl:with-param name="elemName">value</xsl:with-param>
                                </xsl:call-template>
                            </observationEvent>
                        </reasonOf>
                    </consentEvent>
                </authorization>
            </xsl:for-each>
        </substanceAdministrationEvent>
    </xsl:template>

    <!-- A_Rijksvaccinatie [informational/all] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.123_20121001000000">
        <xsl:for-each select="r041_rijksvaccinatieprogramma_en_andere_vaccinaties | groep_g076_vaccinatie | groep_g095_geplande_vaccinatie">
            <substanceAdministration xmlns="urn:hl7-org:v3" classCode="SBADM" moodCode="" negationInd="">
                <templateId root="2.16.840.1.113883.2.4.6.10.100.123"/>
                <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" displayName="Immunization"/>
                <!-- Item(s) :: datum_vaccinatie-->
                <xsl:for-each select="datum_vaccinatie">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <consumable typeCode="CSM">
                    <medication classCode="ADMM">
                        <administrableMedicine classCode="MMAT" determinerCode="KIND">
                            <!-- Item(s) :: soort_vaccinatie soort_geplande_vaccinatie-->
                            <xsl:for-each select="soort_vaccinatie | soort_geplande_vaccinatie">
                                <xsl:call-template name="makeCVValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">code</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <!-- Item(s) :: partijnummer-->
                            <xsl:for-each select="partijnummer">
                                <xsl:call-template name="makeSTValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">lotNumberText</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                        </administrableMedicine>
                    </medication>
                </consumable>
                <performer typeCode="PRF">
                    <!-- Template :: R_AssignedEntityNL [confirmable] -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.125_20120801000000"/>
                </performer>
                <authorization typeCode="AUTH">
                    <consentEvent classCode="CONS" moodCode="EVN" negationInd="true">
                        <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" displayName="Immunization"/>
                        <reasonOf typeCode="RSON">
                            <observationEvent classCode="OBS" moodCode="EVN">
                                <code code="683" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                    <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '683'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                </code>
                                <!-- Item(s) :: bezwaar-->
                                <xsl:for-each select="bezwaar">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </observationEvent>
                        </reasonOf>
                    </consentEvent>
                </authorization>
                <limitation>
                    <dateCriterion>
                        <code code="30981-5" codeSystem="2.16.840.1.113883.6.1"/>
                        <!-- Item(s) :: minimale_uitvoerdatum_vaccinatie-->
                        <xsl:for-each select="minimale_uitvoerdatum_vaccinatie">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </dateCriterion>
                </limitation>
                <limitation>
                    <dateCriterion>
                        <code code="30980-7" codeSystem="2.16.840.1.113883.6.1"/>
                        <!-- Item(s) :: streefdatum_vaccinatie-->
                        <xsl:for-each select="streefdatum_vaccinatie">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </dateCriterion>
                </limitation>
            </substanceAdministration>
        </xsl:for-each>
    </xsl:template>

    <!-- R_AssignedEntityNL [confirmable] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.125_20120801000000">
        <assignedEntity xmlns="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.125"/>
            <!--<id/>-->
            <assignedOrganization>
                <!-- Item(s) :: uitvoerende_instantie_vaccinatie-->
                <xsl:for-each select="uitvoerende_instantie_vaccinatie">
                    <xsl:call-template name="makeONValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">name</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
            </assignedOrganization>
        </assignedEntity>
    </xsl:template>

    <!-- R_SubjectNL_JGZ Informal [identified/confirmable] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.172_20120801000000">
        <xsl:for-each select="r003_persoonsgegevens">
            <patient xmlns="urn:hl7-org:v3" classCode="PAT">
                <templateId root="2.16.840.1.113883.2.4.6.10.100.172"/>
                <templateId root="2.16.840.1.113883.2.4.6.10.100.103"/>
                <!-- Item(s) :: bsn-->
                <xsl:for-each select="bsn">
                    <xsl:call-template name="makeII.NL.BSNValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">id</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Adres -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10222_20120801000000"/>
                <statusCode code="active"/>
                <!-- PatientPerson [universal] -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.163_20120801000000"/>
            </patient>
        </xsl:for-each>
    </xsl:template>

    <!-- PatientPerson [universal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.163_20120801000000">
        <patientPerson xmlns="urn:hl7-org:v3" classCode="PSN" determinerCode="INSTANCE">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.163"/>
            <!-- NaamKindOfficieel -->
            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10232_20120801000000"/>
            <!-- NaamKindZoalsBekendBijInstelling -->
            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10233_20120801000000"/>
            <!-- Item(s) :: geslacht-->
            <xsl:for-each select="geslacht">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">administrativeGenderCode</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: geboortedatum-->
            <xsl:for-each select="geboortedatum">
                <xsl:call-template name="makeTSValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">birthTime</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: meerling-->
            <xsl:for-each select="meerling">
                <xsl:call-template name="makeBLValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">multipleBirthInd</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: volgnummer_bij_meerling-->
            <xsl:for-each select="volgnummer_bij_meerling">
                <xsl:call-template name="makeINT.POSValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">multipleBirthOrderNumber</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="groep_g004_contactpersoon_client">
                <contactParty>
                    <!-- Item(s) :: telefoonnummer_contactpersoon-->
                    <xsl:for-each select="telefoonnummer_contactpersoon">
                        <xsl:call-template name="makeTELValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">telecom</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:for-each select="groep_g097_periode_geldigheid_contactpersoon">
                        <effectiveTime xsi:type="IVL_TS">
                            <!-- Item(s) :: startdatum_geldigheid_contactpersoon-->
                            <xsl:for-each select="startdatum_geldigheid_contactpersoon">
                                <xsl:call-template name="makeTSValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">low</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <!-- Item(s) :: einddatum_geldigheid_contactpersoon-->
                            <xsl:for-each select="einddatum_geldigheid_contactpersoon">
                                <xsl:call-template name="makeTSValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">high</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                        </effectiveTime>
                    </xsl:for-each>
                    <contactPerson classCode="PSN" determinerCode="INSTANCE">
                        <!-- Item(s) :: naam_contactpersoon-->
                        <xsl:for-each select="naam_contactpersoon">
                            <xsl:call-template name="makePNValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">name</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </contactPerson>
                </contactParty>
            </xsl:for-each>
            <birthPlace>
                <addr>
                    <!-- Item(s) :: geboorteplaats-->
                    <xsl:for-each select="geboorteplaats">
                        <xsl:call-template name="makeSCValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">county</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: geboorteland-->
                    <xsl:for-each select="geboorteland">
                        <xsl:call-template name="makeSCValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">country</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </addr>
            </birthPlace>
        </patientPerson>
    </xsl:template>
    
</xsl:stylesheet>
