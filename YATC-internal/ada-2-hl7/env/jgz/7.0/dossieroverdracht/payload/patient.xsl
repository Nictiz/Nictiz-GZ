<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <!-- R_PatientNL_JGZ [universal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.131">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <patient xmlns="urn:hl7-org:v3" classCode="PAT">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.131"/>
            <!-- Item(s) :: bsn-->
            <xsl:for-each select="bsn">
                <xsl:call-template name="makeII.NL.BSNValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">id</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Adres -->
            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10222_20120801000000"/>
            <!-- Item(s) :: groep_g002_telefoonnummer_client soort_telefoonnummer telefoonnummer email-->
            <xsl:for-each select="groep_g002_telefoonnummer_client/telefoonnummer">
                <telecom>
                    <xsl:if test="../soort_telefoonnummer">
                        <xsl:attribute name="use" select="../soort_telefoonnummer/(@code, @value)[1]"/>
                    </xsl:if>
                    <xsl:attribute name="value">
                        <xsl:choose>
                            <xsl:when test="starts-with(@value, 'tel:')">
                                <xsl:value-of select="replace(@value, '\s', '')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="concat('tel:', replace(@value, '\s', ''))"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                </telecom>
            </xsl:for-each>
            <xsl:for-each select="email_client">
                <telecom>
                    <xsl:attribute name="value">
                        <xsl:choose>
                            <xsl:when test="starts-with(@value, 'mailto:')">
                                <xsl:value-of select="replace(@value, '\s', '')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="concat('mailto:', replace(@value, '\s', ''))"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                </telecom>
            </xsl:for-each>
            <statusCode code="active"/>
            <patientPerson>
                <!-- NaamKindOfficieel -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10232_20120801000000"/>
                <!-- NaamKindZoalsBekendBijInstelling -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10233_20120801000000"/>
                <!-- Item(s) :: geslacht-->
                <xsl:for-each select="geslacht">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="elemName">administrativeGenderCode</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: geboortedatum-->
                <xsl:for-each select="geboortedatum">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">birthTime</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: datum_overlijden-->
                <xsl:for-each select="datum_overlijden">
                    <deceasedInd value="true"/>
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">deceasedTime</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: meerling-->
                <!-- Item(s) :: volgnummer_bij_meerling-->
                <!-- R005(R008?)/Element 714 voor- of buitenschoolse voorzieningen -->
                <!-- R005(R008?)/Groep 006 voor- of buitenschoolse voorzieningen -->
                <!-- Item(s) :: asielzoekerkind nationaliteit-->
                <!-- Item(s) :: nationaliteit-->
                <xsl:for-each select="nationaliteit">
                    <asCitizen classCode="CIT">
                        <politicalNation classCode="NAT" determinerCode="INSTANCE">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </politicalNation>
                    </asCitizen>
                </xsl:for-each>
                <xsl:if test="geboorteplaats | geboorteland">
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
                </xsl:if>
            </patientPerson>
            <!-- Item(s) :: land_vanwaar_ingeschreven-->
            <xsl:for-each select="land_vanwaar_ingeschreven">
                <subjectOf1 typeCode="SBJ">
                    <administrativeObservation classCode="OBS" moodCode="EVN">
                        <code code="26" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '26'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="'CV'"/>
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </administrativeObservation>
                </subjectOf1>
            </xsl:for-each>
            <!-- Item(s) :: datum_vestiging_in_nederland-->
            <xsl:for-each select="datum_vestiging_in_nederland">
                <subjectOf1 typeCode="SBJ">
                    <administrativeObservation classCode="OBS" moodCode="EVN">
                        <code code="27" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '27'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="xsiType" select="'TS'"/>
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </administrativeObservation>
                </subjectOf1>
            </xsl:for-each>
            <!-- Item(s) :: datum_vertrek_uit_nederland-->
            <xsl:for-each select="datum_vertrek_uit_nederland">
                <subjectOf1 typeCode="SBJ">
                    <administrativeObservation classCode="OBS" moodCode="EVN">
                        <code code="29" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '29'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="xsiType" select="'TS'"/>
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </administrativeObservation>
                </subjectOf1>
            </xsl:for-each>
        </patient>
    </xsl:template>

    <!-- Adres client -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10222_20120801000000">
        <xsl:for-each select="groep_g001_adres_client">
            <addr xmlns="urn:hl7-org:v3">
                <xsl:attribute name="use" select="
                        if (adres_is_geheim/@value = 'true') then
                            'CONF'
                        else
                            soort_adres/(@code, @value)[1]"/>
                <!-- Item(s) :: straatnaam-->
                <xsl:for-each select="straatnaam">
                    <xsl:call-template name="makeADXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">streetName</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: huisnummer-->
                <xsl:for-each select="huisnummer">
                    <xsl:call-template name="makeADXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">houseNumber</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: huisletter huisnummertoevoeging-->
                <xsl:if test="huisletter | huisnummertoevoeging">
                    <buildingNumberSuffix>
                        <xsl:value-of select="huisletter/@value"/>
                        <!-- Er moet een spatie vooraf gaan aan een huisnummertoevoeging. Ook als er geen huisletter is. -->
                        <xsl:if test="string-length(huisnummertoevoeging/@value) > 0">
                            <xsl:value-of select="concat(' ', huisnummertoevoeging/@value)"/>
                        </xsl:if>
                    </buildingNumberSuffix>
                </xsl:if>
                <!-- Item(s) :: aanduiding_bij_huisnummer-->
                <!-- <aanduiding_bij_huisnummer conceptId="2.16.840.1.113883.2.4.3.11.60.100.2.3.15" value="2" code="2" codeSystem="2.16.840.1.113883.2.4.3.11.60.100.12.11" displayName="Tegenover"/> -->
                <xsl:for-each select="aanduiding_bij_huisnummer">
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
                        <xsl:when test="matches(@value, '^\d{4}\s*[A-Za-z]{2}$')">
                            <postalCode>
                                <xsl:value-of select="replace(@value, '^(\d{4})(\s*)([A-Za-z]{2})$', '$1 $3')"/>
                            </postalCode>
                        </xsl:when>
                        <xsl:when test="matches(@displayName, '^\d{4}\s*[A-Za-z]{2}$')">
                            <postalCode>
                                <xsl:value-of select="replace(@displayName, '^(\d{4})(\s*)([A-Za-z]{2})$', '$1 $3')"/>
                            </postalCode>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="makeSCValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">postalCode</xsl:with-param>
                            </xsl:call-template>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <!-- Item(s) :: gemeente-->
                <xsl:for-each select="gemeente">
                    <xsl:call-template name="makeSCValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">county</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: woonplaats-->
                <xsl:for-each select="woonplaats">
                    <xsl:call-template name="makeSCValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">city</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: land-->
                <xsl:for-each select="land">
                    <xsl:call-template name="makeSCValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">country</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: locatiebeschrijving-->
                <xsl:for-each select="locatiebeschrijving">
                    <xsl:call-template name="makeADXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">desc</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="groep_g096_periode_geldigheid_adres_client">
                    <useablePeriod>
                        <xsl:if test="startdatum_geldigheid_adres_client">
                            <!-- Item(s) :: startdatum_geldigheid_adres_client-->
                            <xsl:for-each select="startdatum_geldigheid_adres_client">
                                <xsl:call-template name="makeTSValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">low</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                        </xsl:if>
                        <xsl:if test="einddatum_geldigheid_adres_client">
                            <!-- Item(s) :: einddatum_geldigheid_adres_client-->
                            <xsl:for-each select="einddatum_geldigheid_adres_client">
                                <xsl:call-template name="makeTSValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">high</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                        </xsl:if>
                    </useablePeriod>
                </xsl:for-each>
            </addr>
        </xsl:for-each>
    </xsl:template>

    <!-- Adres ouder/verzorger -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10223_20120801000000">
        <xsl:for-each select="groep_g016_ouderverzorger_adres">
            <addr xmlns="urn:hl7-org:v3" use="{soort_adres_ouderverzorger/(@code, @value)[1]}">
                <!-- Item(s) :: straatnaam_ouderverzorger-->
                <xsl:for-each select="straatnaam_ouderverzorger">
                    <xsl:call-template name="makeADXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">streetName</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: huisnummer_ouderverzorger-->
                <xsl:for-each select="huisnummer_ouderverzorger">
                    <xsl:call-template name="makeADXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">houseNumber</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: huisletter_ouderverzorger huisnummertoevoeging_ouderverzorger-->
                <xsl:if test="huisletter_ouderverzorger | huisnummertoevoeging_ouderverzorger">
                    <buildingNumberSuffix>
                        <xsl:value-of select="string-join((huisletter_ouderverzorger/@value, huisnummertoevoeging_ouderverzorger/@value), ' ')"/>
                    </buildingNumberSuffix>
                </xsl:if>
                <!-- Item(s) :: aanduiding_bij_huisnummer_ouderverzorger-->
                <xsl:for-each select="aanduiding_bij_huisnummer_ouderverzorger">
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
                <!-- Item(s) :: postcode_ouderverzorger-->
                <xsl:for-each select="postcode_ouderverzorger">
                    <xsl:choose>
                        <xsl:when test="matches(@value, '^\d{4}[A-Za-z]{2}$')">
                            <postalCode>
                                <xsl:value-of select="replace(@value, '^(\d{4})([A-Za-z]{2})$', '$1 $2')"/>
                            </postalCode>
                        </xsl:when>
                        <xsl:when test="matches(@displayName, '^\d{4}[A-Za-z]{2}$')">
                            <postalCode>
                                <xsl:value-of select="replace(@displayName, '^(\d{4})([A-Za-z]{2})$', '$1 $2')"/>
                            </postalCode>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="makeSCValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">postalCode</xsl:with-param>
                            </xsl:call-template>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <!-- Item(s) :: gemeente_ouderverzorger-->
                <xsl:for-each select="gemeente_ouderverzorger">
                    <xsl:call-template name="makeSCValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">county</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: woonplaats_ouderverzorger-->
                <xsl:for-each select="woonplaats_ouderverzorger">
                    <xsl:call-template name="makeSCValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">city</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: land_ouderverzorger-->
                <xsl:for-each select="land_ouderverzorger">
                    <xsl:call-template name="makeSCValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">country</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: locatiebeschrijving_ouderverzorger-->
                <xsl:for-each select="locatiebeschrijving_ouderverzorger">
                    <xsl:call-template name="makeADXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">desc</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
            </addr>
        </xsl:for-each>
    </xsl:template>

    <!-- NaamKindOfficieel -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10232_20120801000000">
        <xsl:if test="voornaam | voorvoegsel_geslachtsnaam | geslachtsnaam">
            <name xmlns="urn:hl7-org:v3" use="OR">
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
                        <xsl:with-param name="qualifier">VV BR</xsl:with-param>
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
            </name>
        </xsl:if>
    </xsl:template>

    <!-- NaamKindZoalsBekendBijInstelling -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10233_20120801000000">
        <xsl:if test="roepnaam | voorvoegsel_achternaam | achternaam">
            <name xmlns="urn:hl7-org:v3" use="L">
                <!-- Item(s) :: roepnaam-->
                <xsl:for-each select="roepnaam">
                    <xsl:call-template name="makeENXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="qualifier">CL</xsl:with-param>
                        <xsl:with-param name="elemName">given</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: voorvoegsel_achternaam-->
                <xsl:for-each select="voorvoegsel_achternaam">
                    <xsl:call-template name="makeENXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="qualifier">VV BR</xsl:with-param>
                        <xsl:with-param name="elemName">prefix</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: achternaam-->
                <xsl:for-each select="achternaam">
                    <xsl:call-template name="makeENXPValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="qualifier">BR</xsl:with-param>
                        <xsl:with-param name="elemName">family</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
            </name>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
