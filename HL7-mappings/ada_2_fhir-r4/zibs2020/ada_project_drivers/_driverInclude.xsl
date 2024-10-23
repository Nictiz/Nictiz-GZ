<?xml version="1.0" encoding="UTF-8"?>
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

<xsl:stylesheet exclude-result-prefixes="#all"
    xmlns="http://hl7.org/fhir"
    xmlns:util="urn:hl7:utilities" 
    xmlns:f="http://hl7.org/fhir" 
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:nf="http://www.nictiz.nl/functions"
    xmlns:nm="http://www.nictiz.nl/mappings"
    xmlns:uuid="http://www.uuid.org"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="2.0">
    
    <xsl:import href="../payload/zib_latest_package.xsl"/>

    <xsl:param name="referencingStrategy" select="'logicalId'" as="xs:string"/>

    <xd:doc>
        <xd:desc>If true, write all generated resources to disk in the fhir_instance directory. Otherwise, return all the output in a FHIR Bundle.</xd:desc>
    </xd:doc>
    <xsl:param name="writeOutputToDisk" select="true()" as="xs:boolean"/>
    
    <!-- When the input is specified as a bundle, collect all input into the $bundle parameter -->
    <xsl:param name="bundle" as="element()*">
        <xsl:for-each select="/nm:bundle">
            <xsl:copy>
                <xsl:for-each select="nm:source[@href]">
                    <xsl:copy-of select="document(@href)//*[starts-with(@conceptId, $zib2020Oid) and ends-with(@conceptId, '.1')]"/>
                </xsl:for-each>
            </xsl:copy>
        </xsl:for-each>
    </xsl:param>
    
    <!-- Generate metadata for all ADA instances -->
    <xsl:param name="fhirMetadata" as="element()*">
        <xsl:call-template name="buildFhirMetadata">
            <!-- ADA instances for this project start with $zib2020Oid and end in .1, or in 9.*.* in the case of the medication related zibs -->
            <xsl:with-param name="in" select="collection('../ada_instance/')//*[starts-with(@conceptId, $zib2020Oid) and matches(@conceptId, '(\.1|9\.\d+\.\d+)$')]"/>
        </xsl:call-template>
    </xsl:param>
    
    <xd:doc>
        <xd:desc>Extract the patient either from the special way how it is done within this project (by business identifier), or if that's unavailable from the bundle (when that mechanism is used). If neither are available, nothing is returned.</xd:desc>
        <xd:param name="businessIdentifierRef">The element containing the business identifier reference, may be absent.</xd:param>
    </xd:doc>
    <xsl:template name="_resolveAdaPatient" as="element()?">
        <xsl:param name="businessIdentifierRef" as="element()?" select="onderwerp/patient-id"/>
        
        <xsl:variable name="patient-id" select="$businessIdentifierRef/@value"/>
        <!-- Give preference to patient that is not in 'referenties' -->
        <xsl:variable name="referencedPatient" select="(collection('../ada_instance')//patient[identificatienummer/@value = $patient-id]/(self::*[not(ancestor::referenties)],self::*[ancestor::referenties]))[1]"/>
        <xsl:choose>
            <xsl:when test="$referencedPatient">
                <xsl:copy-of select="$referencedPatient"/>
            </xsl:when>
            <xsl:when test="$bundle[self::patient]">
                <xsl:copy-of select="$bundle[self::patient][1]"/>
            </xsl:when>
            <xsl:when test="$patient-id and not($referencedPatient)">
                <xsl:call-template name="util:logMessage">
                    <xsl:with-param name="level" select="$logWARN"/>
                    <xsl:with-param name="msg">Could not find Patient instance with patient-id '<xsl:value-of select="$patient-id"/>'</xsl:with-param>
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xd:doc>
        <xd:desc>Override the id generation with the file name of the ADA instance</xd:desc>
        <xd:param name="profile">The id of the profile that is targeted. This is needed to specify which profile is targeted when a single ADA instance results is mapped onto multiple FHIR profiles. It may be omitted otherwise.</xd:param>
        <xd:param name="partNumber">The sequence number of the ADA instance being passed in the total collection of ADA instances of this kind. This sequence number is needed for ids in resources that represent just a part of a zib.</xd:param>
    </xd:doc>
    <xsl:template match="*" mode="_generateId" priority="2">
        <xsl:param name="profile" as="xs:string" required="yes"/>
        <xsl:param name="partNumber" as="xs:integer"/>
        
        <xsl:variable name="id" select="replace(tokenize(base-uri(), '/')[last()], '.xml', '')"/>
        <xsl:variable name="baseId" select="replace($id, '-[0-9]{2}$', '')"/>
        <xsl:variable name="localName" select="local-name()"/>

        <xsl:variable name="logicalId">
            <xsl:choose>
                <!-- Edge case where there is a zib contained in 'referenties' block, while this zib is also present as a separate file. We should take the logical id from the separate file, so we should call template again. -->
                <xsl:when test="parent::referenties and current-group()[not(parent::referenties)]">
                    <xsl:apply-templates select="current-group()[not(parent::referenties)][1]" mode="_generateId">
                        <xsl:with-param name="profile" select="$profile"/>
                        <xsl:with-param name="partNumber" select="$partNumber"/>
                    </xsl:apply-templates>
                </xsl:when>
                <xsl:when test="ancestor::*/local-name() = 'referenties'">
                    <!-- This is a contained ada instance, therefore does not have a valid base-uri() -->
                    <!-- Moved position parameter here, because I do not expect it to function outside of 'referenties', but at the moment it does not have to -->
                    <xsl:variable name="position" as="xs:integer" select="count(preceding::*[local-name() = $localName][ancestor::*/local-name() = 'referenties'][starts-with(@conceptId, $zib2020Oid) and matches(@conceptId, '(\.1|9\.\d+\.\d+)$')]) + 1"/>
                    <!-- This leads to a contained zib AdministrationAgreement being referenced as 'nl-core-MedicationAdministration2-02-MedicationDispense-01'. Could be more clear. On the other hand, do we need to put more effort into contained ADA instances? -->
                    <xsl:value-of select="string-join(($id, $ada2resourceType/*[@profile = $profile]/@resource, format-number($position, '00')), '-')"/>
                    <!-- Proposal for better naming, but not activated yet because it has implications for the whole zib2020-r4 repo: -->
                    <!--<xsl:value-of select="string-join(($id, tokenize($profile, '-')[last()], format-number($position, '00')), '-')"/>-->    
                </xsl:when>
                <!-- Zorgverleners that are referenced do not have an ancestor called 'referenties' anymore because of MP-834, so we fix that here, based on base-uri not containing 'HealthcareProfessional', which is kind of hacky but works. -->
                <xsl:when test="$localName = 'zorgverlener' and not(contains(base-uri(), 'HealthProfessional'))">
                    <!-- partNumber does not contain the correct number in this case. Try to use the numerical part of ada @id (like 'zrgv-1') as a backup -->
                    <xsl:variable name="position">
                        <xsl:choose>
                            <xsl:when test="matches(@id, '\d')">
                                <xsl:analyze-string select="@id" regex="\d">
                                    <xsl:matching-substring>
                                        <xsl:value-of select="."/>
                                    </xsl:matching-substring>
                                </xsl:analyze-string>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$partNumber"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:value-of select="string-join(($id, $ada2resourceType/*[@profile = $profile]/@resource, format-number($position, '00')), '-')"/>
                </xsl:when>
                <xsl:when test="$localName = ('soepregel','visueel_resultaat','monster',
                    'sociaal_netwerk','hobby','arbeidssituatie', 
                    'lopen', 'traplopen', 'houding_veranderen','houding_handhaven', 'uitvoeren_transfer',
                    'ziekte_inzicht_van_patient','omgaan_met_ziekteproces_door_patient','omgaan_met_ziekteproces_door_naasten',
                    'toiletgebruik','zorg_bij_menstruatie',
                    'feces_continentie','frequentie','defecatie_consistentie','defecatie_kleur', 'zindelijkheid_urine','zindelijkheid_feces','leeftijd_eerste_menstruatie','ontwikkeling_motoriek','ontwikkeling_sociaal','ontwikkeling_taal','ontwikkeling_verstandelijk',
                    'vocht_totaal_in','vocht_totaal_uit',
                    'hartslag_regelmatigheid','interpretatie_frequentie')">
                    <xsl:value-of select="$baseId"/>
                    <xsl:value-of select="substring-after($profile, $baseId)"/>
                    <xsl:text>-</xsl:text>
                    <xsl:value-of select="format-number($partNumber, '00')"/>
                </xsl:when>
                <xsl:when test="$localName = ('brandwond', 'decubitus_wond', 'wond') and $profile = 'nl-core-wounds.WoundCharacteristics'">
                    <xsl:value-of select="$id"/>
                    <xsl:text>-WoundCharacteristics-</xsl:text>
                    <xsl:value-of select="format-number($partNumber, '00')"/>
                </xsl:when>
                <xsl:when test="$localName = ('wondlengte','wondbreedte','wonddiepte','datum_laatste_verbandwissel', 'wond_rand', 'wond_infectie', 'wond_vochtigheid', 'wond_weefsel')">
                    <xsl:value-of select="$id"/>
                    <xsl:text>-</xsl:text>
                    <xsl:value-of select="tokenize($profile, '\.')[last()]"/>
                    <xsl:text>-</xsl:text>
                    <xsl:value-of select="format-number($partNumber, '00')"/>
                </xsl:when>
                <xsl:when test="$localName = 'laboratorium_test'">
                    <xsl:value-of select="$baseId"/>
                    <xsl:value-of select="substring-after($profile, $baseId)"/>
                    <xsl:text>-LaboratoryTest-</xsl:text>
                    <xsl:value-of select="format-number(count(preceding-sibling::*[local-name() = 'laboratorium_test'])+1, '00')"/>
                </xsl:when>
                <xsl:when test="$localName = 'eet_beperkingen'">
                    <xsl:value-of select="$baseId"/>
                    <xsl:value-of select="substring-after($profile, $baseId)"/>
                    <xsl:text>-</xsl:text>
                    <xsl:value-of select="format-number(count(preceding-sibling::*[local-name() = 'eet_beperkingen'])+1, '00')"/>
                </xsl:when>
                <xsl:when test="$localName = 'drink_beperkingen'">
                    <xsl:value-of select="$baseId"/>
                    <xsl:value-of select="substring-after($profile, $baseId)"/>
                    <xsl:text>-</xsl:text>
                    <xsl:value-of select="format-number(count(preceding-sibling::*[local-name() = 'drink_beperkingen'])+1, '00')"/>
                </xsl:when>
                <xsl:when test="$profile = $baseId or not(starts-with($profile, $baseId))">
                    <xsl:value-of select="$id"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$baseId"/>
                    <xsl:value-of select="substring-after($profile, $baseId)"/>
                    <xsl:value-of select="substring-after($id, $baseId)"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        
        <!-- Failsafe, ids can get quite long -->
        <xsl:value-of select="nf:assure-logicalid-length($logicalId)"/>
        
    </xsl:template>
    
    <xd:doc>
        <xd:desc>Perform the transformation on the ADA input and write out or return the result, depending on the writeOutputToDisk parameter.</xd:desc>
        <xd:param name="fhirEntries">An optional list of FHIR entries to include in the result.</xd:param>
    </xd:doc>
    <xsl:template mode="_doTransform" match="*">
        <xsl:param name="fhirEntries" as="element()*"/>
        
        <xsl:variable name="subject" as="element()?">
            <xsl:call-template name="_resolveAdaPatient"/>
        </xsl:variable>

        <xsl:variable name="simpleFhirEntries" as="element()*">
            <xsl:call-template name="_applyNlCoreTemplate">
                <xsl:with-param name="subject" select="$subject"/>
            </xsl:call-template>
            <xsl:for-each select="referenties/*">
                <xsl:call-template name="_applyNlCoreTemplate">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:call-template>
            </xsl:for-each>
        </xsl:variable>
        
        <xsl:variable name="resources" as="element()*">
            <xsl:copy-of select="$fhirEntries"/>
            <xsl:for-each select="$simpleFhirEntries">
                <xsl:if test="not(./f:id/@value = $fhirEntries/f:id/@value)">
                    <xsl:copy-of select="."/>
                </xsl:if>
            </xsl:for-each>            
        </xsl:variable>
        
        <xsl:choose>
            <xsl:when test="$writeOutputToDisk">
                <xsl:for-each select="$resources">
                    <xsl:choose>
                        <!-- When a bundled version of a resource exists, ignore the current version (because we assume the bundled version contains more details) -->
                        <xsl:when test="not(ends-with(base-uri(), '-bundled.xml')) and doc-available(concat('../ada_instance/', ./f:id/@value, '-bundled.xml'))"/>
                        <xsl:when test="string-length(f:id/@value) gt 0">
                            <xsl:result-document href="../fhir_instance/{./f:id/@value}.xml">
                                <xsl:copy-of select="."/>
                            </xsl:result-document>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- This happens when transforming a non-saved document in Oxygen -->
                            <xsl:call-template name="util:logMessage">
                                <xsl:with-param name="level" select="$logWARN"/>
                                <xsl:with-param name="msg">Could not output to result-document without Resource.id. Outputting to console instead.</xsl:with-param>
                            </xsl:call-template>
                            <xsl:copy-of select="."/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <Bundle>
                    <xsl:for-each select="$resources">
                        <entry>
                            <xsl:call-template name="_insertFullUrlById"/>
                            <resource>
                                <xsl:copy-of select="."/>
                            </resource>
                        </entry>
                    </xsl:for-each>
                </Bundle>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xd:doc>
        <xd:desc>The -- quite verbose -- template to dynamically call the proper nl-core template on the ADA input.</xd:desc>
        <xd:param name="in">The ADA instance to output.</xd:param>
        <xd:param name="subject">The 'subject' parameter to pass to the nl-core template</xd:param>
    </xd:doc>
    <xsl:template name="_applyNlCoreTemplate">
        <xsl:param name="in" select="nf:ada-resolve-reference(.)"/>
        <xsl:param name="subject"/>

        <!-- Quite verbose, but the only way to 'dynamically' apply a mode -->
        <xsl:variable name="localName" select="$in/local-name()"/>
        <xsl:choose>
            <xsl:when test="$localName = 'adaextension'">
                <!-- Do nothing -->
            </xsl:when>
            <xsl:when test="$localName = 'alcohol_gebruik'">
                <xsl:apply-templates select="$in" mode="nl-core-AlcoholUse">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'alert'">
                <xsl:apply-templates select="$in" mode="nl-core-Alert">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'allergie_intolerantie'">
                <xsl:apply-templates select="$in" mode="nl-core-AllergyIntolerance">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'apgar_score'">
                <xsl:apply-templates select="$in" mode="nl-core-ApgarScore">
                    <xsl:with-param name="subject" select="$subject"/>
                    <xsl:with-param name="profile" select="$profileNameApgarScore1Minute"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="$in" mode="nl-core-ApgarScore">
                    <xsl:with-param name="subject" select="$subject"/>
                    <xsl:with-param name="profile" select="$profileNameApgarScore5Minute"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="$in" mode="nl-core-ApgarScore">
                    <xsl:with-param name="subject" select="$subject"/>
                    <xsl:with-param name="profile" select="$profileNameApgarScore10Minute"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'barthel_index'">
                <xsl:apply-templates select="$in" mode="nl-core-BarthelADLIndex">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'behandel_aanwijzing'">
                <xsl:apply-templates select="$in" mode="nl-core-TreatmentDirective2">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'betaler'">
                <xsl:if test="betaler_persoon">
                    <xsl:apply-templates select="$in" mode="nl-core-Payer.PayerPerson">
                        <xsl:with-param name="beneficiary" select="$subject"/>
                    </xsl:apply-templates>
                    <!-- Because the zib officially does not support references to Patient or ContactPerson, it is difficult to model these in ada. Therefore, we always assume a 'betaler_persoon' that is modelled inline is of the profile nl-core-Payer-Organization, which is probably wrong -->
                    <xsl:apply-templates select="$in" mode="nl-core-Payer-Organization">
                        <xsl:with-param name="beneficiary" select="$subject"/>
                    </xsl:apply-templates>
                </xsl:if>
                <xsl:if test="verzekeraar">
                    <xsl:apply-templates select="$in" mode="nl-core-Payer.InsuranceCompany">
                        <xsl:with-param name="beneficiary" select="$subject"/>
                    </xsl:apply-templates>
                    <!-- Name, address and contact details are available in the Payer-Organization profile. -->
                    <xsl:apply-templates select="$in" mode="nl-core-Payer-Organization">
                        <xsl:with-param name="beneficiary" select="$subject"/>
                    </xsl:apply-templates>
                </xsl:if>
                <xsl:for-each select="betaler_persoon/betaler_naam">
                    <xsl:apply-templates select="$in" mode="nl-core-Patient-Payer"/>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'bloeddruk'">
                <xsl:apply-templates select="$in" mode="nl-core-BloodPressure">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'brandwond'">
                <xsl:apply-templates select="$in" mode="nl-core-Burnwound">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="uitgebreidheid">
                    <xsl:call-template name="nl-core-Burnwound.Extent">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wond_foto">
                    <xsl:call-template name="nl-core-wounds.WoundImage">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'checklist_pijn_gedrag'">
                <xsl:apply-templates select="$in" mode="nl-core-ChecklistPainBehavior">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'comfort_score'">
                <xsl:apply-templates select="$in" mode="nl-core-ComfortScale">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'contact'">
                <xsl:apply-templates select="$in" mode="nl-core-Encounter"/>
            </xsl:when>
            <xsl:when test="$localName = 'contactpersoon'">
                <xsl:apply-templates select="$in" mode="nl-core-ContactPerson">
                    <xsl:with-param name="patient" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'darmfunctie'">
                <xsl:apply-templates select="$in" mode="nl-core-BowelFunction">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="feces_continentie">
                    <xsl:call-template name="nl-core-BowelFunction.FecalContinence">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="frequentie">
                    <xsl:call-template name="nl-core-BowelFunction.Frequency">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="defecatie_consistentie">
                    <xsl:call-template name="nl-core-BowelFunction.DefecationConsistency">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="defecatie_kleur">
                    <xsl:call-template name="nl-core-BowelFunction.DefecationColor">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'decubitus_wond'">
                <xsl:apply-templates select="$in" mode="nl-core-PressureUlcer">
                    <xsl:with-param name="subject" select="$subject" as="element()"/>
                </xsl:apply-templates>
                <xsl:for-each select="wondlengte">
                    <xsl:call-template name="nl-core-wounds.WoundLength">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wondbreedte">
                    <xsl:call-template name="nl-core-wounds.WoundWidth">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wonddiepte">
                    <xsl:call-template name="nl-core-wounds.WoundDepth">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="datum_laatste_verbandwissel">
                    <xsl:call-template name="nl-core-wounds.DateOfLastDressingChange">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wond_foto">
                    <xsl:call-template name="nl-core-wounds.WoundImage">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
            </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'dosscore'">
                <xsl:apply-templates select="$in" mode="nl-core-DOSScore">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'drugs_gebruik'">
                <xsl:apply-templates select="$in" mode="nl-core-DrugUse">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'farmaceutisch_product'">
                <xsl:apply-templates select="$in" mode="nl-core-PharmaceuticalProduct"/>
            </xsl:when>
            <xsl:when test="$localName = 'flaccpijn_score'">
                <xsl:apply-templates select="$in" mode="nl-core-FLACCpainScale">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'functie_horen'">
                <xsl:apply-templates select="$in" mode="nl-core-HearingFunction">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="nf:resolveAdaInstance(horen_hulpmiddel/medisch_hulpmiddel,$in)">
                    <xsl:call-template name="nl-core-HearingFunction.HearingAid">
                        <xsl:with-param name="subject" select="$subject"/>
                        <xsl:with-param name="reasonReference" select="$in"/>
                    </xsl:call-template>
                    <xsl:apply-templates select="$in" mode="nl-core-HearingFunction.HearingAid.Product">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:apply-templates>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'functie_zien'">
                <xsl:apply-templates select="$in" mode="nl-core-VisualFunction">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="nf:resolveAdaInstance(zien_hulpmiddel/medisch_hulpmiddel,$in)">
                    <xsl:call-template name="nl-core-VisualFunction.VisualAid">
                        <xsl:with-param name="subject" select="$subject"/>
                        <xsl:with-param name="reasonReference" select="$in"/>
                    </xsl:call-template>
                    <xsl:apply-templates select="$in" mode="nl-core-VisualFunction.VisualAid.Product">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:apply-templates>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'functionele_of_mentale_status'">
                <xsl:apply-templates select="$in" mode="nl-core-FunctionalOrMentalStatus">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'hartfrequentie'">
                <xsl:apply-templates select="$in" mode="nl-core-HeartRate">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="hartslag_regelmatigheid">
                    <xsl:call-template name="nl-core-HeartRate.HeartbeatRegularity">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="interpretatie_frequentie">
                    <xsl:call-template name="nl-core-HeartRate.InterpretationHeartRate">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'glasgow_coma_scale'">
                <xsl:apply-templates select="$in" mode="nl-core-GlasgowComaScale">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'hulp_van_anderen'">
                <xsl:apply-templates select="$in" mode="nl-core-HelpFromOthers">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'huidaandoening'">
                <xsl:apply-templates select="$in" mode="nl-core-SkinDisorder">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'juridische_situatie'">
                <xsl:choose>
                    <xsl:when test="juridische_status">
                        <xsl:apply-templates select="$in" mode="nl-core-LegalSituation-LegalStatus">
                            <xsl:with-param name="subject" select="$subject"/>
                        </xsl:apply-templates>
                    </xsl:when>
                    <xsl:when test="vertegenwoordiging">
                        <xsl:apply-templates select="$in" mode="nl-core-LegalSituation-Representation">
                            <xsl:with-param name="subject" select="$subject"/>
                        </xsl:apply-templates>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="util:logMessage">
                            <xsl:with-param name="msg">The zib requires either a LegalStatus or a Representation to be present.</xsl:with-param>
                            <xsl:with-param name="level">WARN</xsl:with-param>
                            <xsl:with-param name="terminate">false</xsl:with-param>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$localName = 'laboratorium_uitslag'">
                <xsl:apply-templates select="$in" mode="nl-core-LaboratoryTestResult">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="monster">
                    <xsl:choose>
                        <xsl:when test="not(monstermateriaal) and not(microorganisme)">
                            <xsl:call-template name="nl-core-LaboratoryTestResult.Specimen">
                                <xsl:with-param name="subject" select="$subject" as="element()"/>
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:for-each select="(monstermateriaal | microorganisme)">
                                <xsl:call-template name="nl-core-LaboratoryTestResult.Specimen">
                                    <xsl:with-param name="in" select="./parent::monster"/>
                                    <xsl:with-param name="subject" select="$subject" as="element()"/>
                                    <xsl:with-param name="type" select="."/>
                                </xsl:call-template>
                            </xsl:for-each>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'levensovertuiging_rc'">
                <xsl:apply-templates select="$in" mode="nl-core-LifeStance">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'lichaamslengte'">
                <xsl:apply-templates select="$in" mode="nl-core-BodyHeight">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'lichaamstemperatuur'">
                <xsl:apply-templates select="$in" mode="nl-core-BodyTemperature">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'lichaamsgewicht'">
                <xsl:apply-templates select="$in" mode="nl-core-BodyWeight">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'medicatie_contra_indicatie'">
                <xsl:apply-templates select="$in" mode="nl-core-MedicationContraIndication">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'medisch_hulpmiddel'">
                <xsl:apply-templates select="$in" mode="nl-core-MedicalDevice">
                    <xsl:with-param name="subject" select="$subject"/>
                    <!-- ADA instances for this project start with $zib2020Oid and end in .1, or in 9.*.* in the case of the medication related zibs -->
                    <xsl:with-param name="derivedFrom" select="if (ancestor::verrichting) then ancestor::*[starts-with(@conceptId, $zib2020Oid) and matches(@conceptId, '(\.1|9\.\d+\.\d+)$')] else ()"/>
                    <xsl:with-param name="derivedFromProfile" select="if (ancestor::verrichting) then if (nf:isFuture(ancestor::verrichting/verrichting_start_datum/@value) or ancestor::verrichting/aanvrager) then $profileNameProcedureRequest else $profileNameProcedureEvent else ()"/>
                    <xsl:with-param name="reasonReference" select="if (ancestor::functionele_of_mentale_status or ancestor::mobiliteit or ancestor::stoma or ancestor::darmfunctie) then ancestor::*[starts-with(@conceptId, $zib2020Oid) and matches(@conceptId, '(\.1|9\.\d+\.\d+)$')] else ()"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="$in" mode="nl-core-MedicalDevice.Product">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'mobiliteit'">
                <xsl:apply-templates select="$in" mode="nl-core-Mobility">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="lopen">
                    <xsl:call-template name="nl-core-Mobility.Walking">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="traplopen">
                    <xsl:call-template name="nl-core-Mobility.ClimbingStairs">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="houding_veranderen">
                    <xsl:call-template name="nl-core-Mobility.ChangingPosition">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="houding_handhaven">
                    <xsl:call-template name="nl-core-Mobility.MaintainingPosition">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="uitvoeren_transfer">
                    <xsl:call-template name="nl-core-Mobility.Transfer">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'mustscore'">
                <xsl:apply-templates select="$in" mode="nl-core-MUSTScore">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'o2saturatie'">
                <xsl:apply-templates select="$in" mode="nl-core-O2Saturation">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'ontwikkeling_kind'">
                <xsl:apply-templates select="$in" mode="nl-core-DevelopmentChild">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="zindelijkheid_urine">
                    <xsl:call-template name="nl-core-DevelopmentChild.ToiletTrainednessUrine">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="zindelijkheid_feces">
                    <xsl:call-template name="nl-core-DevelopmentChild.ToiletTrainednessFeces">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="leeftijd_eerste_menstruatie">
                    <xsl:call-template name="nl-core-DevelopmentChild.AgeFirstMenstruation">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="ontwikkeling_motoriek">
                    <xsl:call-template name="nl-core-DevelopmentChild.DevelopmentLocomotion">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="ontwikkeling_sociaal">
                    <xsl:call-template name="nl-core-DevelopmentChild.DevelopmentSocial">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="ontwikkeling_taal">
                    <xsl:call-template name="nl-core-DevelopmentChild.DevelopmentLinguistics">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="ontwikkeling_verstandelijk">
                    <xsl:call-template name="nl-core-DevelopmentChild.DevelopmentCognition">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'opleiding'">
                <xsl:apply-templates select="$in" mode="nl-core-Education">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'participatie_in_maatschappij'">
                <xsl:apply-templates select="$in" mode="nl-core-ParticipationInSociety">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="sociaal_netwerk">
                    <xsl:call-template name="nl-core-ParticipationInSociety.SocialNetwork">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="vrijetijdsbesteding">
                    <xsl:call-template name="nl-core-ParticipationInSociety.Hobby">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="arbeidssituatie">
                    <xsl:call-template name="nl-core-ParticipationInSociety.WorkSituation">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'patient'">
                <xsl:apply-templates select="$in" mode="nl-core-Patient"/>
            </xsl:when>
            <xsl:when test="$localName = 'pijn_score'">
                <xsl:apply-templates select="$in" mode="nl-core-PainScore">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'polsfrequentie'">
                <xsl:apply-templates select="$in" mode="nl-core-PulseRate">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="pols_regelmatigheid">
                    <xsl:call-template name="nl-core-PulseRate.PulseRegularity">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'probleem'">
                <xsl:apply-templates select="$in" mode="nl-core-Problem">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'refractie'">
                <xsl:apply-templates select="$in" mode="nl-core-Refraction"/>
            </xsl:when>
            <xsl:when test="$localName = 'schedelomvang'">
                <xsl:apply-templates select="$in" mode="nl-core-HeadCircumference">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'snaq65score'">
                <xsl:apply-templates select="$in" mode="nl-core-SNAQ65plusScore">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'snaqrc_score'">
                <xsl:apply-templates select="$in" mode="nl-core-SNAQrcScore">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'snaqscore'">
                <xsl:apply-templates select="$in" mode="nl-core-SNAQScore">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'soepverslag'">
                <xsl:apply-templates select="$in" mode="nl-core-SOAPReport"/>
                <xsl:for-each select="soepregel">
                    <xsl:call-template name="nl-core-SOAPReport.SOAPLine"/>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'stoma'">
                <xsl:apply-templates select="$in" mode="nl-core-Stoma">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'strong_kids_score'">
                <xsl:apply-templates select="$in" mode="nl-core-StrongKidsScore">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'tabak_gebruik'">
                <xsl:apply-templates select="$in" mode="nl-core-TobaccoUse">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'tekst_uitslag'">
                <xsl:apply-templates select="$in" mode="nl-core-TextResult">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="visueel_resultaat">
                    <xsl:call-template name="nl-core-TextResult.VisualResult">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:call-template>
                </xsl:for-each>
                <!--<xsl:for-each select="verrichting">
                    <xsl:apply-templates select="nf:ada-resolve-reference(verrichting)" mode="nl-core-Procedure">
                        <xsl:with-param name="subject" select="$subject"/>
                        <xsl:with-param name="report" select="ancestor::tekst_uitslag"/>
                    </xsl:apply-templates>
                </xsl:for-each>-->
            </xsl:when>
            <xsl:when test="$localName = 'vaccinatie'">
                <xsl:choose>
                    <xsl:when test="vaccinatie_datum/@value and nf:isPast(vaccinatie_datum/@value)">
                        <xsl:apply-templates select="$in" mode="nl-core-Vaccination-event">
                            <xsl:with-param name="patient" select="$subject"/>
                        </xsl:apply-templates>
                    </xsl:when>
                    <xsl:when test="vaccinatie_datum/@value and nf:isFuture(vaccinatie_datum/@value)">
                        <xsl:apply-templates select="$in" mode="nl-core-Vaccination-request">
                            <xsl:with-param name="patient" select="$subject"/>
                        </xsl:apply-templates>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="$in" mode="nl-core-Vaccination-event">
                            <xsl:with-param name="patient" select="$subject"/>
                        </xsl:apply-templates>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$localName = 'vermogen_tot_drinken'">
                <xsl:apply-templates select="$in" mode="nl-core-AbilityToDrink">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="drink_beperkingen">
                    <xsl:call-template name="nl-core-AbilityToDrink.DrinkingLimitations">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'vermogen_tot_eten'">
                <xsl:apply-templates select="$in" mode="nl-core-AbilityToEat">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="eet_beperkingen">
                    <xsl:call-template name="nl-core-AbilityToEat.EatingLimitations">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'vermogen_tot_zich_kleden'">
                <xsl:apply-templates select="$in" mode="nl-core-AbilityToDressOneself">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'vermogen_tot_toiletgang'">
                <xsl:apply-templates select="$in" mode="nl-core-AbilityToUseToilet">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>        
                <xsl:for-each select="toiletgebruik">
                    <xsl:call-template name="nl-core-AbilityToUseToilet.ToiletUse">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="zorg_bij_menstruatie">
                    <xsl:call-template name="nl-core-AbilityToUseToilet.MenstrualCare">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'vermogen_tot_zich_wassen'">
                <xsl:apply-templates select="$in" mode="nl-core-AbilityToWashOneself">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'vermogen_tot_uiterlijke_verzorging'">
                <xsl:apply-templates select="$in" mode="nl-core-AbilityToGroom">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'verrichting'">
                <xsl:choose>
                    <xsl:when test="verrichting_start_datum/@value">
                        <xsl:if test="nf:isPast(verrichting_start_datum/@value)">
                            <xsl:apply-templates select="$in" mode="nl-core-Procedure-event">
                                <xsl:with-param name="subject" select="$subject"/>
                                <xsl:with-param name="report" select="if (ancestor::tekst_uitslag) then ancestor::tekst_uitslag else ()"/>
                            </xsl:apply-templates>
                        </xsl:if>
                        <xsl:if test="nf:isFuture(verrichting_start_datum/@value) or aanvrager">
                            <xsl:apply-templates select="$in" mode="nl-core-Procedure-request">
                                <xsl:with-param name="subject" select="$subject"/>
                            </xsl:apply-templates>
                        </xsl:if>
                    </xsl:when>
                    <xsl:when test="not(verrichting_start_datum/@value) and verrichting_eind_datum/@value">
                        <xsl:message terminate="yes">Not implemented</xsl:message>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- Fallback. 'event' instead of 'request' because there is a possibility that zib TextResult refers to zib Procedure, which by definition is a FHIR Procedure -->
                        <xsl:apply-templates select="$in" mode="nl-core-Procedure-event">
                    <xsl:with-param name="subject" select="$subject"/>
                    <xsl:with-param name="report" select="if (ancestor::tekst_uitslag) then ancestor::tekst_uitslag else ()"/>
                </xsl:apply-templates>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$localName = 'visus'">
                <xsl:apply-templates select="$in" mode="nl-core-VisualAcuity"/>
            </xsl:when>
            <xsl:when test="$localName = 'vochtbalans'">
                <xsl:apply-templates select="$in" mode="nl-core-FluidBalance">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="vocht_totaal_in">
                    <xsl:call-template name="nl-core-FluidBalance.FluidTotalIn">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="vocht_totaal_uit">
                    <xsl:call-template name="nl-core-FluidBalance.FluidTotalOut">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'voedingsadvies'">
                <xsl:apply-templates select="$in" mode="nl-core-NutritionAdvice">
                    <xsl:with-param name="patient" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'voedingspatroon_zuigeling'">
                <xsl:apply-templates select="$in" mode="nl-core-FeedingPatternInfant">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'vrijheidsbeperkende_interventie'">
                <xsl:apply-templates select="$in" mode="nl-core-FreedomRestrictingIntervention">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'wilsverklaring'">
                <xsl:apply-templates select="$in" mode="nl-core-AdvanceDirective">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'wond'">
                <xsl:apply-templates select="$in" mode="nl-core-Wound">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="wond_weefsel">
                    <xsl:call-template name="nl-core-Wound.WoundTissue">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wond_infectie">
                    <xsl:call-template name="nl-core-Wound.WoundInfection">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wond_vochtigheid">
                    <xsl:call-template name="nl-core-Wound.WoundMoisture">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wond_rand">
                    <xsl:call-template name="nl-core-Wound.WoundEdge">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wondlengte">
                    <xsl:call-template name="nl-core-wounds.WoundLength">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wondbreedte">
                    <xsl:call-template name="nl-core-wounds.WoundWidth">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wonddiepte">
                    <xsl:call-template name="nl-core-wounds.WoundDepth">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="datum_laatste_verbandwissel">
                    <xsl:call-template name="nl-core-wounds.DateOfLastDressingChange">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="wond_foto">
                    <xsl:call-template name="nl-core-wounds.WoundImage">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="nf:resolveAdaInstance(drain/medisch_hulpmiddel,$in)">
                    <xsl:call-template name="nl-core-Wound.Drain">
                        <xsl:with-param name="subject" select="$subject"/>
                        <xsl:with-param name="reasonReference" select="$in"/>
                    </xsl:call-template>
                    <xsl:apply-templates select="$in" mode="nl-core-Wound.Drain.Product">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:apply-templates>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'ziektebeleving'">
                <xsl:apply-templates select="$in" mode="nl-core-IllnessPerception">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="ziekte_inzicht_van_patient">
                    <xsl:call-template name="nl-core-IllnessPerception.PatientIllnessInsight">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="omgaan_met_ziekteproces_door_patient">
                    <xsl:call-template name="nl-core-IllnessPerception.CopingWithIllnessByPatient">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="omgaan_met_ziekteproces_door_naasten">
                    <xsl:call-template name="nl-core-IllnessPerception.CopingWithIllnessByFamily">
                        <xsl:with-param name="subject" select="$subject" as="element()"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$localName = 'zorgaanbieder'">
                <!-- Ideally, we would only create HealthcareProviders based on the following logic, but because there is no way to know if the Location or Organization is being referenced, we always output both: -->
                <!--<xsl:if test="organisatie_locatie/locatie_naam[@value] | contactgegevens | adresgegevens">-->
                    <xsl:apply-templates select="$in" mode="nl-core-HealthcareProvider"/>
                <!--</xsl:if>-->
                <!--<xsl:if test="zorgaanbieder_identificatienummer | afdeling_specialisme | organisatie_type | organisatie_naam">-->
                    <xsl:apply-templates select="$in" mode="nl-core-HealthcareProvider-Organization"/>
                <!--</xsl:if>-->
            </xsl:when>
            <xsl:when test="$localName = 'zorg_episode'">
                <xsl:apply-templates select="$in" mode="nl-core-EpisodeOfCare">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'zorg_team'">
                <xsl:apply-templates select="$in" mode="nl-core-CareTeam">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$localName = 'zorgverlener'">
                <xsl:apply-templates select="$in" mode="nl-core-HealthProfessional-PractitionerRole"/>
                <xsl:if test="zorgverlener_identificatienummer | naamgegevens | geslacht | adresgegevens | contactgegevens">
                    <xsl:apply-templates select="$in" mode="nl-core-HealthProfessional-Practitioner"/>
                </xsl:if>
            </xsl:when>
            <xsl:when test="$localName = 'zwangerschap'">
                <xsl:apply-templates select="$in" mode="nl-core-Pregnancy">
                    <xsl:with-param name="subject" select="$subject"/>
                </xsl:apply-templates>
                <xsl:for-each select="zwangerschapsduur">
                    <xsl:call-template name="nl-core-Pregnancy.PregnancyDuration">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:call-template>    
                </xsl:for-each>
                <xsl:for-each select="pariteit">
                    <xsl:call-template name="nl-core-Pregnancy.Parity">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:call-template>    
                </xsl:for-each>
                <xsl:for-each select="graviditeit">
                    <xsl:call-template name="nl-core-Pregnancy.Gravidity">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:call-template>    
                </xsl:for-each>
                <xsl:for-each select="aterme_datum_items[aterme_datum | bepalings_methode | datum_bepaling]">
                    <xsl:call-template name="nl-core-Pregnancy.EstimatedDateOfDelivery">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:call-template>    
                </xsl:for-each>
                <xsl:for-each select="aterme_datum_items/datum_laatste_menstruatie">
                    <xsl:call-template name="nl-core-Pregnancy.DateLastMenstruation">
                        <xsl:with-param name="subject" select="$subject"/>
                    </xsl:call-template>    
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="util:logMessage">
                    <xsl:with-param name="level" select="$logWARN"/>
                    <xsl:with-param name="msg">Unknown ada localName: '<xsl:value-of select="$localName"/>'</xsl:with-param>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="_insertFullUrlById">
        <xsl:param name="in" select="."/>   
        <xsl:param name="fhirId" select="$in/f:id/@value"/>
       
        <xsl:if test="count($fhirMetadata[nm:logical-id = $fhirId]) = 0 ">
            <xsl:call-template name="util:logMessage">
                <xsl:with-param name="level" select="$logFATAL"/>
                <xsl:with-param name="msg">_insertFullUrlById: Nothing found.</xsl:with-param>
                <xsl:with-param name="terminate" select="true()"/>
            </xsl:call-template>
        </xsl:if>
        
        <xsl:variable name="fullUrl">
            <xsl:value-of select="$fhirMetadata[nm:logical-id = $fhirId]/nm:full-url"/>
        </xsl:variable>
        
        <xsl:if test="string-length($fullUrl) gt 0">
            <fullUrl value="{$fullUrl}"/>
        </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>