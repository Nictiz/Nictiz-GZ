<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:local="urn:fhir:stu3:functions">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA transaction, to HL7 FHIR STU3 profiles.
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
    
    <!-- import because we want to be able to override the param for macAddress for UUID generation
         and the param for referById -->
    <xsl:import href="../../../2_fhir_vl_include.xsl"/>
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <!-- ======================================================================= -->

    <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
    <!-- 02-00-00-00-00-00 and may not be used in a production situation -->
    <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>

    <!-- parameter to determine whether to refer by resource/id -->
    <!-- should be false when there is no FHIR server available to retrieve the resources -->
    <xsl:param name="referById" as="xs:boolean" select="true()"/>

    <xsl:param name="adaQuestionnaires" select="collection('../../beschikbaarstellen_vragenlijst/ada_instance/?select=*.xml')"/>

    <xsl:variable name="commonEntries" as="element(f:entry)*">
        <xsl:copy-of select="$patients/f:entry | $practitioners/f:entry | $organizations/f:entry | $practitionerRoles/f:entry"/>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Start conversion. Handle interaction specific stuff for "beschikbaarstellen vragenlijst". -->
        <xsl:call-template name="vragenlijstAntwoordenTransaction10"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="vragenlijst_antwoorden_101">
        <!-- Build a FHIR Bundle of type searchset. -->
        <xsl:processing-instruction name="xml-model">href="http://hl7.org/fhir/STU3/bundle.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
        <Bundle xsl:exclude-result-prefixes="#all" xsi:schemaLocation="http://hl7.org/fhir http://hl7.org/fhir/STU3/bundle.xsd" xmlns="http://hl7.org/fhir">
            <id value="{nf:get-uuid(*[1])}"/>
            <type value="searchset"/>
            <total value="{count($vragenlijst-antwoord)}"/>
            <xsl:copy-of select="$vragenlijst-antwoord/f:entry"/>
            <xsl:copy-of select="$vragenlijst-verwijzing"/>
            <!-- common entries (patient, practitioners, organizations, practitionerroles, locations -->
            <xsl:copy-of select="$commonEntries"/>
        </Bundle>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="vragenlijstAntwoordenTransaction10">
        <!-- Build a FHIR Bundle of type transaction. -->
        <xsl:processing-instruction name="xml-model">href="http://hl7.org/fhir/STU3/bundle.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
        <Bundle xsl:exclude-result-prefixes="#all" xsi:schemaLocation="http://hl7.org/fhir http://hl7.org/fhir/STU3/bundle.xsd" xmlns="http://hl7.org/fhir">
            <type value="transaction"/>
            <xsl:for-each select="$vragenlijst-verwijzing">
                <entry>
                    <xsl:apply-templates select="*" mode="copyForTouchstoneTransaction"/>
                    <request>
                        <method value="PUT"/>
                        <url value="{'Task/${task-id}'}"/>
                    </request>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$vragenlijst-antwoord/f:entry">
                <entry>
                    <xsl:apply-templates select="*" mode="copyForTouchstoneTransaction"/>
                    <request>
                        <method value="POST"/>
                        <url value="QuestionnaireResponse"/>
                    </request>
                </entry>
            </xsl:for-each>
        </Bundle>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:Task/f:id" mode="copyForTouchstoneTransaction">
        <!-- Task id may be inputted in Touchstone parameter -->
        <id value="{'${task-id}'}" xmlns="http://hl7.org/fhir"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:QuestionnaireResponse/f:id" mode="copyForTouchstoneTransaction"><!-- QuestionnaireResponse id may not be inputted in the Bundle Transaction for Touchstone --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:entry[f:resource/f:Task]/f:fullUrl" mode="copyForTouchstoneTransaction">
        <!-- Task fullUrl may be inputted in Touchstone -->
        <fullUrl value="{'${task-fullurl}'}" xmlns="http://hl7.org/fhir"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:Task/f:output[f:type/f:text/@value = 'QuestionnaireResponse']/f:valueReference/f:reference" mode="copyForTouchstoneTransaction">
        <!-- Task fullUrl may be inputted in Touchstone -->
        <xsl:copy>
            <xsl:attribute name="value" select="replace(@value, '.*/', 'urn:uuid:')"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:QuestionnaireResponse/f:subject/f:reference | f:QuestionnaireResponse/f:author/f:reference" mode="copyForTouchstoneTransaction">
        <!-- QuestionnaireResponse stuff for which references must remain at a configurable server base -->
        <xsl:copy>
            <xsl:attribute name="value" select="concat('${server-base}', @value)"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="copyForTouchstoneTransaction">
        <!-- Default copy template for transaction Bundle, some special stuff needs to be amended -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="copyForTouchstoneTransaction"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
