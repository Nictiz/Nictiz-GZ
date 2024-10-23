<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:hl7="urn:hl7-org:v3" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:import href="../../../2_hl7_jgz-include.xsl"/>
    <xsl:include href="payload.xsl"/>
    <xsl:include href="DOB_variables.xsl"/>
    <xsl:output method="xml" indent="yes" exclude-result-prefixes="#all"/>

    <xsl:param name="schema-ref" as="xs:boolean" select="true()"/>
    <xsl:param name="schematron-ref" as="xs:boolean" select="true()"/>
    <!--<xsl:param name="schematronBaseDir">file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/</xsl:param>-->
    <xsl:param name="schematronBaseDir">../hl7v3_schematron_closed_warnings_svrl</xsl:param>
    <xsl:param name="schemaBaseDir">../hl7v3_schemas</xsl:param>

    <xsl:param name="dateT" select="current-date()" as="xs:date"/>

    <xsl:template match="/">
        <xsl:call-template name="Message"/>
    </xsl:template>

    <xsl:template name="Message">
        <REPC_IN902120NL03 xmlns="urn:hl7-org:v3">
            <xsl:if test="$schema-ref">
                <xsl:attribute name="xsi:schemaLocation">
                    <xsl:text>urn:hl7-org:v3 </xsl:text>
                    <xsl:value-of select="$schemaBaseDir"/>
                    <xsl:text>/REPC_IN902120NL03.xsd</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.100_20140715000000">
                <xsl:with-param name="interactionId">REPC_IN902120NL03</xsl:with-param>
                <xsl:with-param name="patientId" select=".//r003_persoonsgegevens/bsn/@value"/>
            </xsl:call-template>
            <ControlActProcess classCode="CACT" moodCode="EVN">
                <authorOrPerformer typeCode="AUT">
                    <participant>
                        <AssignedDevice>
                            <id root="2.16.528.1.1007.3.2" extension="091287345"/>
                            <Organization>
                                <id extension="00001111" root="{$oidURAOrganizations}"/>
                                <name>GGD Groningen</name>
                            </Organization>
                        </AssignedDevice>
                    </participant>
                </authorOrPerformer>
                <subject>
                    <xsl:for-each select="//versturen_jgzdossieroverdrachtverzoek_v03">
                        <CareProvisionRequest>
                            <templateId root="2.16.840.1.113883.2.4.6.10.100.10000"/>
                            <!-- Item(s) :: dossiernummer-->
                            <xsl:for-each select="r002_dossierinformatie/dossiernummer">
                                <xsl:call-template name="makeIIValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">id</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <code code="CPHC" codeSystem="2.16.840.1.113883.5.4" displayName="certified public health and general preventive medicine care"/>
                            <statusCode code="active"/>
                            <author>
                                <time value="{$gREQUESTDATE}"/>
                                <assignedEntity classCode="ASSIGNED">
                                    <templateId root="2.16.840.1.113883.2.4.6.10.100.122"/>
                                    <id root="{$oidURAOrganizations}" extension="00001111"/>
                                </assignedEntity>
                            </author>
                            <sequelTo>
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10006">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                </xsl:call-template>
                            </sequelTo>
                        </CareProvisionRequest>
                    </xsl:for-each>
                </subject>
            </ControlActProcess>
        </REPC_IN902120NL03>
    </xsl:template>

    <!-- TransmissionWrapper Initiating -->
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.100_20140715000000">
        <xsl:param name="interactionId" required="yes" as="xs:string"/>
        <xsl:param name="patientId" select=".//r003_persoonsgegevens/bsn/@value" required="no" as="xs:string*"/>

        <xsl:choose>
            <xsl:when test="$ExportWithQualificationPlaceholder">
                <id extension="{{$messageId}}" root="{{$messageIdRoot}}" xmlns="urn:hl7-org:v3"/>
            </xsl:when>
            <xsl:otherwise>
                <id extension="1243567" root="2.16.528.1.1007.3.3.12345678.1" xmlns="urn:hl7-org:v3"/>
            </xsl:otherwise>
        </xsl:choose>

        <creationTime xmlns="urn:hl7-org:v3" value="{format-dateTime(current-dateTime(), '[Y0001][M01][D01][H01][m01][s01]')}">
            <xsl:if test="$developMode">
                <xsl:attribute name="value" select="format-dateTime(xs:dateTime('2000-01-01T00:00:00'), '[Y0001][M01][D01][H01][m01][s01]')"/>
            </xsl:if>
        </creationTime>
        <versionCode xmlns="urn:hl7-org:v3" code="NICTIZEd2005-Okt"/>
        <interactionId xmlns="urn:hl7-org:v3" extension="{$interactionId}" root="{$oidHL7InteractionID}"/>
        <profileId xmlns="urn:hl7-org:v3" extension="810" root="{$oidAORTAProfileID}"/>
        <processingCode xmlns="urn:hl7-org:v3" code="P"/>
        <processingModeCode xmlns="urn:hl7-org:v3" code="T"/>
        <acceptAckCode xmlns="urn:hl7-org:v3" code="AL"/>
        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.120_20140715000000">
            <xsl:with-param name="patientId" select="$patientId"/>
        </xsl:call-template>
        <receiver xmlns="urn:hl7-org:v3">
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.110_20140715000000">
                <xsl:with-param name="appId">{$receiverId}</xsl:with-param>
            </xsl:call-template>
        </receiver>
        <sender xmlns="urn:hl7-org:v3">
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.110_20140715000000">
                <xsl:with-param name="appId">{$applicationId}</xsl:with-param>
            </xsl:call-template>
        </sender>
    </xsl:template>

    <!-- AORTA Application ID -->
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.1008_20140715000000">
        <xsl:param name="appId" required="yes" as="xs:string"/>
        <id xmlns="urn:hl7-org:v3" extension="{$appId}" root="{$oidAORTAApplicatieID}"/>
    </xsl:template>

    <!-- TransmissionWrapper Device -->
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.110_20140715000000">
        <xsl:param name="appId" required="yes" as="xs:string"/>
        <device xmlns="urn:hl7-org:v3">
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.1008_20140715000000">
                <xsl:with-param name="appId" select="$appId"/>
            </xsl:call-template>
        </device>
    </xsl:template>

    <!-- TransmissionWrapper AttentionLine -->
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.120_20140715000000">
        <xsl:param name="patientId" required="no" as="xs:string*"/>
        <xsl:if test="count($patientId) = 1">
            <attentionLine xmlns="urn:hl7-org:v3">
                <keyWordText code="PATID" codeSystem="2.16.840.1.113883.2.4.15.1">Patient.id</keyWordText>
                <value xsi:type="II" extension="{$patientId}" root="{$oidBurgerservicenummer}"/>
            </attentionLine>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>
