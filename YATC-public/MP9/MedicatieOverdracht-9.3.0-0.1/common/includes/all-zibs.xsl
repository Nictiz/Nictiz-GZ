<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/hl7_2_ada/zibs2020/payload/all-zibs.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:import href="hl7_2_ada_hl7_include.xsl"/>
   <xsl:import href="uni-Contactpersoon.xsl"/>
   <xsl:import href="uni-FarmaceutischProduct.xsl"/>
   <xsl:import href="uni-Gebruiksinstructie.xsl"/>
   <xsl:import href="uni-kopieIndicator.xsl"/>
   <xsl:import href="uni-Lichaamsgewicht.xsl"/>
   <xsl:import href="uni-Lichaamslengte.xsl"/>
   <xsl:import href="uni-MedicamenteuzeBehandeling.xsl"/>
   <xsl:import href="uni-Medicatieafspraak.xsl"/>
   <xsl:import href="uni-Medicatiegebruik.xsl"/>
   <xsl:import href="uni-Medicatietoediening.xsl"/>
   <xsl:import href="uni-Medicatieverstrekking.xsl"/>
   <xsl:import href="uni-Patient.xsl"/>
   <xsl:import href="uni-relatieAndereBouwsteen.xsl"/>
   <xsl:import href="uni-stoptype.xsl"/>
   <xsl:import href="uni-Toedieningsafspraak.xsl"/>
   <xsl:import href="uni-toelichting.xsl"/>
   <xsl:import href="uni-Verstrekkingsverzoek.xsl"/>
   <xsl:import href="uni-volgensAfspraakIndicator.xsl"/>
   <xsl:import href="uni-WisselendDoseerschema.xsl"/>
   <xsl:import href="uni-Zorgaanbieder.xsl"/>
   <xsl:import href="uni-Zorgverlener.xsl"/>
</xsl:stylesheet>