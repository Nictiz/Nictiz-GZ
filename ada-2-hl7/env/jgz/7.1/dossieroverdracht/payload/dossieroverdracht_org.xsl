<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:hl7="urn:hl7-org:v3" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="2.0">
    <xsl:import href="../../../7.0/dossieroverdracht/payload/dossieroverdracht_org.xsl"/>
    <xsl:include href="payload.xsl"/>
    <xsl:include href="DOB_variables.xsl"/>
    <xsl:output method="xml" indent="yes" exclude-result-prefixes="#all"/>

    <xsl:param name="schema-ref" as="xs:boolean" select="true()"/>
    <xsl:param name="schematron-ref" as="xs:boolean" select="true()"/>
    <!--<xsl:param name="schematronBaseDir">file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/</xsl:param>-->
    <xsl:param name="schematronBaseDir">../hl7v3_schematron_closed_warnings_svrl</xsl:param>
    <xsl:param name="schemaBaseDir">../hl7v3_schemas</xsl:param>

    <xsl:param name="dateT" select="current-date()" as="xs:date"/>

</xsl:stylesheet>
