<xsl:stylesheet exclude-result-prefixes="#all" xmlns="http://hl7.org/fhir" xmlns:f="http://hl7.org/fhir" xmlns:uuid="http://www.uuid.org" xmlns:local="urn:fhir:stu3:functions" xmlns:nf="http://www.nictiz.nl/functions" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <!--    <xsl:import href="../../fhir/2_fhir_fhir_include.xsl"/>-->
    <xd:doc>
        <xd:desc>Template for shared extension http://nictiz.nl/fhir/StructureDefinition/ext-PharmaceuticalTreatment.Identifier</xd:desc>
        <xd:param name="in">Optional. Ada element containing the identifier</xd:param>
    </xd:doc>
    <xsl:template name="ext-PharmaceuticalTreatmentIdentifier" match="*" as="element()?" mode="ext-PharmaceuticalTreatmentIdentifier">
        <xsl:param name="in" as="element()?" select="."/>
        <extension url="{$urlExtPharmaceuticalTreatmentIdentifier}">
            <valueIdentifier>
                <xsl:call-template name="id-to-Identifier">
                    <xsl:with-param name="in" select="."/>
                </xsl:call-template>
            </valueIdentifier>
        </extension>
    </xsl:template>
</xsl:stylesheet>
