<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="urn:fhir:stu3:functions">
    <!-- ================================================================== -->
    <!--
          This XSL was created to facilitate mapping from ADA transaction to HL7 FHIR STU3 profiles.
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

    <xsl:import href="../../2_fhir_cio_1.0.0-2020.01-include.xsl"/>
    <xsl:import href="../../../../fhir/2_fhir_fixtures_Touchstone.xsl"/>

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>

    <xsl:strip-space elements="*"/>

    <xsl:include href="../../../../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../../../../YATC-shared/xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <xsl:param name="outputDirectory" as="xs:string" required="yes"/>

    <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
    <!-- 02-00-00-00-00-00 may not be used in a production situation -->
    <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>

    <!-- parameter to determine whether to refer by resource/id -->
    <!-- should be false when there is no FHIR server available to retrieve the resources -->
    <xsl:param name="referById" as="xs:boolean" select="true()"/>

    <xsl:param name="mask-ids" as="xs:string?" select="$oidBurgerservicenummer"/>

    <!-- use case acronym to be added in resource.id -->
    <xsl:param name="usecase" as="xs:string?">cio</xsl:param>

    <xsl:variable name="commonEntries" as="element(f:entry)*">
        <xsl:copy-of select="$patients/f:entry, $practitioners/f:entry, $organizations/f:entry, $practitionerRoles/f:entry, $relatedPersons/f:entry"/>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Start conversion. Handle interaction specific stuff for "beschikbaarstellen allergie intolerantie gegevens". -->
        <xsl:apply-templates select="adaxml/data/beschikbaarstellen_allergie_intolerantie"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="AllIntConversion_10" match="beschikbaarstellen_allergie_intolerantie">
        <!-- Build the individual FHIR resources. -->

        <xsl:variable name="entries" as="element(f:entry)*">
            <xsl:for-each select="$bouwstenen-all-int-gegevens">
                <xsl:choose>
                    <xsl:when test="f:resource/f:*/f:identifier">
                        <xsl:copy-of select="."/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="." mode="addIdentifier"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
            
            <!-- common entries (patient, practitioners, organizations, practitionerroles, relatedpersons -->
            <xsl:for-each select="$commonEntries">
                <xsl:choose>
                    <xsl:when test="f:resource/f:*/f:identifier">
                        <xsl:copy-of select="."/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="." mode="addIdentifier"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </xsl:variable>
        
        <xsl:apply-templates select="$entries/f:resource/*" mode="doResourceInResultdoc"/>
    </xsl:template>
    
    <!-- Adding identifiers this way is kind of hacky. Ideally, identification should be done following the data set, ADA, ada2fhir, etc. -->
    <xsl:template match="node()|@*" mode="addIdentifier">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" mode="#current"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="f:resource/f:*" mode="addIdentifier">
        <xsl:copy>
            <xsl:copy-of select="f:id | f:meta | f:implicitRules | f:language | f:text | f:contained | f:extension | f:modifierExtension"/>
            <identifier xmlns="http://hl7.org/fhir">
                <system value="urn:oid:2.16.840.1.113883.2.4.3.11.999.7.6"/>
                <value value="{nf:get-uuid(.)}"/>
            </identifier>
            <xsl:copy-of select="*[not(self::f:id or self::f:meta or self::f:implicitRules or self::f:language or self::f:text or self::f:contained or self::f:extension or self::f:modifierExtension)]"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
