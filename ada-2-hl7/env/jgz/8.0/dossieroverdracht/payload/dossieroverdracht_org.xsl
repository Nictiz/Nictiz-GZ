<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:hl7="urn:hl7-org:v3" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="2.0">
    <xsl:import href="../../../7.1/dossieroverdracht/payload/dossieroverdracht_org.xsl"/>
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
        <REPC_IN902120NL04 xmlns="urn:hl7-org:v3">
            <xsl:if test="$schema-ref">
                <xsl:attribute name="xsi:schemaLocation">
                    <xsl:text>urn:hl7-org:v3 </xsl:text>
                    <xsl:value-of select="$schemaBaseDir"/>
                    <xsl:text>/REPC_IN902120NL04.xsd</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.100_20140715000000">
                <xsl:with-param name="interactionId">REPC_IN902120NL04</xsl:with-param>
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
                    <xsl:for-each select="//versturen_jgzdossieroverdrachtverzoek_v04">
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
        </REPC_IN902120NL04>
    </xsl:template>
</xsl:stylesheet>
