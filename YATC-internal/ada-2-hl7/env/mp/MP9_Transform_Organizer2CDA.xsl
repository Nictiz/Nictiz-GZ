<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:hl7-org:v3" xmlns:hl7="urn:hl7-org:v3" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:uuid="http://www.uuid.org" xmlns:local="#local.2024011509165818279840100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
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

    <xsl:import href="../../../../YATC-shared/xsl/util/uuid.xsl"/>
    <xsl:import href="../../../../YATC-shared/xsl/util/utilities.xsl"/>

    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <!-- ======================================================================= -->

    <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
    <!-- 02-00-00-00-00-00 may not be used in a production situation -->
    <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>
    <!-- param to influence whether to output schema references, typically only needed for test instances -->
    <xsl:param name="schematronRef" as="xs:boolean" select="false()"/>

    <xsl:variable name="maCode" as="xs:string*" select="'16076005', '33633005'"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Start template when called from outside -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="organizer2CDA"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="hl7:organizer[not(ancestor::hl7:organizer)]" mode="organizer2CDA">
        <!--  Transforms HL7 organizer example message into CDA version of the same thing. From publication 9.0.6  -->
        <ClinicalDocument>
            <xsl:if test="$schematronRef">
                <xsl:attribute name="xsi:schemaLocation">urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/CDANL_extended.xsd</xsl:attribute>
            </xsl:if>
            <realmCode code="NL"/>
            <typeId extension="POCD_HD000040" root="2.16.840.1.113883.1.3"/>
            <!-- select the correct templateId -->
            <templateId>
                <xsl:attribute name="root">
                    <xsl:choose>
                        <!-- Medicatiegegevens -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9104'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9133'"/>
                        </xsl:when>
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9192'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9197'"/>
                        </xsl:when>
                        <!-- 9.0.6 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9221'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9222'"/>
                        </xsl:when>
                        <!-- 9.0.7 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9239'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9236'"/>
                        </xsl:when>
                        <!-- 9.1.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9284'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9283</xsl:when>
                        <!-- 9.2.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9341'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9338</xsl:when>
                        <!-- 9.3.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9411'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9410</xsl:when>

                        <!-- Afhandeling Voorschrift -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9124'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9136'"/>
                        </xsl:when>
                        <!-- 9.0.6 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9228'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9229'"/>
                        </xsl:when>
                        <!-- 9.0.7 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9260'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9261'"/>
                        </xsl:when>
                        <!-- 9.1.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9295'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9296</xsl:when>
                        <!-- 9.2.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9347</xsl:when>
                        <!-- 9.3.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9419</xsl:when>

                        <!-- Medicatiegebruik -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9125'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9138'"/>
                        </xsl:when>
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9191'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9198'"/>
                        </xsl:when>
                        <!-- 9.0.6 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9225'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9227'"/>
                        </xsl:when>
                        <!-- 9.0.7 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9252'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9249'"/>
                        </xsl:when>
                        <!-- 9.1.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9290'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9291</xsl:when>
                        <!-- 9.2.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9339'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9340</xsl:when>

                        <!-- Medicatieoverzicht -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9132'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9146'"/>
                        </xsl:when>
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9193'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9199'"/>
                        </xsl:when>
                        <!-- 9.0.6 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9204'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9207'"/>
                        </xsl:when>
                        <!-- 9.0.7 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9245'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9243'"/>
                        </xsl:when>
                        <!-- 9.1.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9286'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9288</xsl:when>
                        <!-- 9.2.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9333'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9334</xsl:when>
                        <!-- 9.3.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9422'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9423</xsl:when>

                        <!-- Voorschrift -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9126'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9140'"/>
                        </xsl:when>
                        <!-- 9.0.6 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9217'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9219'"/>
                        </xsl:when>
                        <!-- 9.0.7 -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9240'">
                            <xsl:value-of select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9237'"/>
                        </xsl:when>
                        <!-- 9.1.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9272'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9273</xsl:when>
                        <!-- 9.2.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9328'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9329</xsl:when>
                        <!-- 9.3.0 -->
                        <xsl:when test="hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9433'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9426</xsl:when>

                        <!-- Voorstel MA -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9127'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9142</xsl:when>
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9436'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9435</xsl:when>

                        <!-- Antwoord VMA -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9399'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9395</xsl:when>

                        <!-- Voorstel VV -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9144</xsl:when>
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9452'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9453</xsl:when>

                        <!-- Antwoord VVV -->
                        <xsl:when test="./hl7:templateId[last()]/@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9211'">2.16.840.1.113883.2.4.3.11.60.20.77.10.9215</xsl:when>
                    </xsl:choose>
                </xsl:attribute>
            </templateId>
            <!-- Use the template id to make a unique root for document id -->
            <id extension="{uuid:get-uuid(.)}" root="{concat(hl7:templateId[1]/@root, '.1.2.3.999')}"/>
            <xsl:choose>
                <!-- 9.2.0 voorschrift, CDA, more specific code -->
                <xsl:when test="hl7:templateId[last()]/@root = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9328', '2.16.840.1.113883.2.4.3.11.60.20.77.10.9433') or hl7:code[@code = ('95')]">
                    <code code="440545006" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="voorschrift (gegevensobject)"/>
                </xsl:when>
                <xsl:otherwise>
                    <code code="52981000146104" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="gedeelte betreffende medicatie in status (gegevensobject)"/>
                </xsl:otherwise>
            </xsl:choose>
            <!-- parameterize the title based on input, this is not perfect -->
            <xsl:variable name="hl7Docdate" as="xs:string?">
                <xsl:choose>
                    <!-- for medicatieoverzicht there will be an organizer/effectiveTime, but not for medicatievoorschrift -->
                    <xsl:when test="hl7:effectiveTime[@value]">
                        <xsl:value-of select="hl7:effectiveTime/@value"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- use the max (most recent) author time we find -->
                        <xsl:variable name="maxTime" select="xs:string(xs:integer(max(hl7:component/*/hl7:author/hl7:time[@value castable as xs:integer]/@value)))"/>
                        <xsl:choose>
                            <xsl:when test="string-length($maxTime) gt 0">
                                <xsl:value-of select="$maxTime"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- the first one, this may be a current-date string for (ART-DECOR) testing -->
                                <xsl:value-of select="(hl7:component/*/hl7:author/hl7:time/@value)[1]"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <!-- append if needed -->
            <xsl:variable name="hl7DocdateApptime">
                <xsl:choose>
                    <xsl:when test="not($hl7Docdate castable as xs:integer)">
                        <!-- not a HL7-date, simply output the input -->
                        <xsl:value-of select="$hl7Docdate"/>
                    </xsl:when>
                    <xsl:when test="string-length($hl7Docdate) = 0">
                        <xsl:value-of select="$hl7Docdate"/>
                    </xsl:when>
                    <xsl:when test="string-length($hl7Docdate) lt 14">
                        <xsl:value-of select="concat($hl7Docdate, substring('000000', string-length($hl7Docdate) - 7))"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$hl7Docdate"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>

            <xsl:variable name="docdatum">
                <xsl:choose>
                    <xsl:when test="not($hl7DocdateApptime castable as xs:integer)">
                        <!-- not a HL7-date, simply output the input -->
                        <xsl:value-of select="$hl7DocdateApptime"/>
                    </xsl:when>
                    <xsl:when test="string-length($hl7DocdateApptime) gt 0">
                        <xsl:variable name="docdate" select="nf:formatHL72XMLDate($hl7DocdateApptime, 'second')"/>
                        <xsl:value-of select="nf:formatDate($docdate)"/>
                    </xsl:when>
                    <xsl:otherwise>onbekende datum</xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <title>
                <xsl:variable name="naamPatient">
                    <xsl:value-of select="./hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[1]/hl7:given[1]"/>
                    <xsl:value-of select="concat(' ', ./hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[1]/hl7:prefix[1])"/>
                    <xsl:value-of select="concat(' ', ./hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[1]/hl7:family[1])"/>
                </xsl:variable>
                <xsl:variable name="transactienaam" select="./hl7:code/@displayName"/>
                <xsl:variable name="docDate" select="replace(replace($docdatum, '\[Y0001\]\[M01\]\[D01\]', '[D01] [Mn,*-3] [Y0001]'), '(.*\}).*', '$1')"/>
                <xsl:value-of select="concat($transactienaam, ' ', normalize-space($naamPatient), ' op ', $docDate)"/>
            </title>
            <!-- time is mandatory in CDA, so we take the time appended variable here -->
            <effectiveTime value="{$hl7DocdateApptime}"/>
            <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" displayName="normal"/>
            <languageCode code="nl-NL"/>
            <xsl:copy-of select="./hl7:recordTarget" copy-namespaces="no"/>

            <!-- author -->
            <xsl:variable name="cdaAuthor" as="element()?">
                <xsl:choose>
                    <!-- organizer author, should be present in transaction medicatieoverzicht -->
                    <xsl:when test="hl7:author">
                        <xsl:copy-of select="hl7:author" copy-namespaces="no"/>
                    </xsl:when>
                    <!-- use the author of verstrekkingsverzoek (if present) for transaction voorschrift -->
                    <xsl:when test=".[hl7:code[@code = '95' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4']]/hl7:component/hl7:supply">
                        <xsl:variable name="vvAuthor" select="hl7:component/hl7:supply[hl7:code[@code = '52711000146108'][@codeSystem = '2.16.840.1.113883.6.96']]/hl7:author"/>
                        <xsl:variable name="vvAuthorMaxTime" select="($vvAuthor[hl7:time[@value castable as xs:integer][@value = $vvAuthor/hl7:time[@value castable as xs:integer]/xs:integer(max(@value))]])[1]" as="element()?"/>
                        <xsl:choose>
                            <xsl:when test="$vvAuthorMaxTime">
                                <xsl:copy-of select="$vvAuthorMaxTime" copy-namespaces="no"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:copy-of select="$vvAuthor[1]" copy-namespaces="no"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <!-- otherwise use the author of most recent medicatieafspraak for transaction voorschrift -->
                    <xsl:when test=".[hl7:code[@code = '95' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4']]">
                        <xsl:variable name="maAuthor" select="hl7:component/hl7:substanceAdministration[hl7:code[@code = $maCode][@codeSystem = '2.16.840.1.113883.6.96']]/hl7:author"/>
                        <xsl:variable name="maAuthorMaxTime" select="($maAuthor[hl7:time[@value castable as xs:integer][@value = $maAuthor/hl7:time[@value castable as xs:integer]/xs:integer(max(@value))]])[1]" as="element()?"/>
                        <xsl:choose>
                            <xsl:when test="$maAuthorMaxTime">
                                <xsl:copy-of select="$maAuthorMaxTime" copy-namespaces="no"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:copy-of select="$maAuthor[1]" copy-namespaces="no"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- don't know which author to use, CDA still requires one, let's use the first author we encounter -->
                        <xsl:copy-of select="(hl7:component/*/hl7:author)[1]" copy-namespaces="no"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:copy-of select="$cdaAuthor" copy-namespaces="no"/>
            <!-- custodian, the organization of the author -->
            <custodian>
                <assignedCustodian>
                    <representedCustodianOrganization>
                        <!-- id is required for representedCustodianOrganization, let's check if we have one -->
                        <xsl:choose>
                            <xsl:when test="$cdaAuthor/hl7:assignedAuthor/hl7:representedOrganization/hl7:id">
                                <!-- ok, no worries, it is copied in the next step -->
                            </xsl:when>
                            <xsl:when test="$cdaAuthor/hl7:assignedAuthor/hl7:code/@code = 'ONESELF'">
                                <!-- copy the patient id, strange, but at least the schematron won't complain, and what other organizaiton to use? -->
                                <xsl:copy-of select="$cdaAuthor/hl7:assignedAuthor/hl7:id"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- ouch, lets add an id element with a nullFlavor, even though the schematron does not like that either... -->
                                <id nullFlavor="NI"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <!-- copy everything except the extra telecom elements, the cda schema only allows one telecom element -->
                        <xsl:copy-of select="$cdaAuthor/hl7:assignedAuthor/hl7:representedOrganization/*[not(self::hl7:telecom and preceding-sibling::hl7:telecom)]" copy-namespaces="no"/>
                    </representedCustodianOrganization>
                </assignedCustodian>
            </custodian>
            <xsl:for-each select="hl7:participant">
                <xsl:copy copy-namespaces="no">
                    <xsl:apply-templates select="@* | node()" mode="organizer2CDA"/>
                </xsl:copy>
            </xsl:for-each>
            <component>
                <structuredBody>
                    <component>
                        <section>
                            <text>Medicatiegegevens.</text>
                            <xsl:apply-templates select="comment() | hl7:component" mode="organizer2CDA"/>
                        </section>
                    </component>
                </structuredBody>
            </component>
        </ClinicalDocument>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="hl7:organizer[not(ancestor::hl7:organizer)]/hl7:templateId | hl7:organizer[not(ancestor::hl7:organizer)]/hl7:code | hl7:organizer[not(ancestor::hl7:organizer)]/hl7:statusCode | hl7:organizer[not(ancestor::hl7:organizer)]/hl7:recordTarget | hl7:organizer[not(ancestor::hl7:organizer)]/hl7:author" mode="organizer2CDA"><!--  Niet kopiëren  --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="hl7:organizer/hl7:participant/hl7:participantRole" mode="organizer2CDA">
        <!--  participantRole element hernomen naar associatedEntity in CDA participant  -->
        <xsl:element name="associatedEntity">
            <xsl:apply-templates select="@* | node()" mode="organizer2CDA"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="hl7:templateId/@root[. = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']" mode="organizer2CDA">
        <!--  template id conversies (voor participant)  -->
        <xsl:attribute name="root" select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9173'"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="hl7:templateId/@root[. = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9180']" mode="organizer2CDA">
        <xsl:attribute name="root" select="'2.16.840.1.113883.2.4.3.11.60.20.77.10.9174'"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="hl7:organizer/hl7:component" mode="organizer2CDA">
        <entry>
            <xsl:apply-templates select="* | node()" mode="organizer2CDA"/>
        </entry>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:formatHL72XMLDate">
        <!-- format HL7 2 XMLDate -->
        <xsl:param name="dateTime" as="xs:string?">
            <!-- input hl7 date as string -->
        </xsl:param>
        <!-- precision determines the picture of the date format, currently only use case for day or second. -->
        <xsl:param name="precision" as="xs:string?">
            <!-- precision for output -->
        </xsl:param>
        <xsl:variable name="xml-date" select="                 xs:date(concat(                 substring($dateTime, 1, 4), '-',                 substring($dateTime, 5, 2), '-',                 substring($dateTime, 7, 2)))"/>
        <xsl:choose>
            <xsl:when test="upper-case($precision) = ('DAY', 'DAG', 'DAYS', 'DAGEN', 'D')">
                <xsl:value-of select="$xml-date"/>
            </xsl:when>
            <xsl:when test="upper-case($precision) = ('SECOND', 'SECONDE', 'SECONDS', 'SECONDEN', 'SEC', 'S') and string-length($dateTime) &gt;= 14">
                <xsl:value-of select="                         xs:dateTime(concat(                         substring($dateTime, 1, 4), '-',                         substring($dateTime, 5, 2), '-',                         substring($dateTime, 7, 2), 'T',                         substring($dateTime, 9, 2), ':',                         substring($dateTime, 11, 2), ':',                         substring($dateTime, 13, 2)))"/>
            </xsl:when>
            <xsl:when test="upper-case($precision) = ('SECOND', 'SECONDE', 'SECONDS', 'SECONDEN', 'SEC', 'S') and string-length($dateTime) &lt; 14">
                <!-- asked for seconds, but input is smaller than seconds, just return date -->
                <xsl:value-of select="$xml-date"/>
            </xsl:when>
            <xsl:otherwise>Could not determine xml date from input: '<xsl:value-of select="$dateTime"/>' with precision: '<xsl:value-of select="$precision"/>'.</xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:formatDate" as="xs:string?">
        <!-- Takes an xml inputdate(time) as a string in inputDate and outputs the date in format '3 jun 2018' -->
        <xsl:param name="inputDate" as="xs:string?"/>
        <xsl:variable name="date" select="                 if ($inputDate) then                     substring($inputDate, 1, 10)                 else                     ()"/>
        <xsl:if test="$date castable as xs:date">
            <xsl:value-of select="replace(format-date(xs:date($date), '[D] [Mn,*-3] [Y]'), 'maa', 'mrt')"/>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="organizer2CDA">
        <!-- Default copy template -->
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="@* | node()" mode="organizer2CDA"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
