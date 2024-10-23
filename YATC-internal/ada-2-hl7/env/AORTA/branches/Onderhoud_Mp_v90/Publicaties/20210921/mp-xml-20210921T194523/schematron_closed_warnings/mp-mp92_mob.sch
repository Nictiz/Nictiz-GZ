<?xml version="1.0" encoding="UTF-8"?>
<schema queryBinding="xslt2"
        xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Schematron file for transaction Beschikbaarstellen medicatieoverzicht 9.2 (2.16.840.1.113883.2.4.3.11.60.20.77.4.191 2021-04-14T15:39:26)</title>
   <ns uri="urn:hl7-org:v3"
       prefix="hl7"/>
   <ns uri="urn:hl7-org:v3"
       prefix="cda"/>
   <ns uri="http://www.w3.org/2001/XMLSchema-instance"
       prefix="xsi"/>
   <ns uri="http://www.w3.org/2001/XMLSchema"
       prefix="xs"/>
   <!-- Add extra namespaces -->
   <ns uri="urn:hl7-nl:v3"
       prefix="hl7nl"/>
   <ns uri="urn:hl7-org:sdtc"
       prefix="sdtc"/>
   <ns uri="http://hl7.org/fhir"
       prefix="f"/>
   <ns uri="urn:ihe:pharm:medication"
       prefix="pharm"/>
   <ns uri="http://www.w3.org/XML/1998/namespace"
       prefix="xml"/>
   <ns uri="urn:urn:nictiz-nl:v3/nfu"
       prefix="nfu"/>
   <ns uri="urn:oid:1.3.6.1.4.1.19376.1.3.2"
       prefix="lab"/>
   <!-- Include realm specific schematron -->
   <!-- Include datatype abstract schematrons -->
   <pattern>
      <include href="include/DTr1_AD.sch"/>
      <include href="include/DTr1_AD.CA.sch"/>
      <include href="include/DTr1_AD.CA.BASIC.sch"/>
      <include href="include/DTr1_AD.DE.sch"/>
      <include href="include/DTr1_AD.EPSOS.sch"/>
      <include href="include/DTr1_AD.IPS.sch"/>
      <include href="include/DTr1_AD.NL.sch"/>
      <include href="include/DTr1_ADXP.sch"/>
      <include href="include/DTr1_ANY.sch"/>
      <include href="include/DTr1_BIN.sch"/>
      <include href="include/DTr1_BL.sch"/>
      <include href="include/DTr1_BN.sch"/>
      <include href="include/DTr1_BXIT_IVL_PQ.sch"/>
      <include href="include/DTr1_CD.sch"/>
      <include href="include/DTr1_CD.EPSOS.sch"/>
      <include href="include/DTr1_CD.IPS.sch"/>
      <include href="include/DTr1_CD.SDTC.sch"/>
      <include href="include/DTr1_CE.sch"/>
      <include href="include/DTr1_CE.EPSOS.sch"/>
      <include href="include/DTr1_CE.IPS.sch"/>
      <include href="include/DTr1_CO.sch"/>
      <include href="include/DTr1_CO.EPSOS.sch"/>
      <include href="include/DTr1_CR.sch"/>
      <include href="include/DTr1_CS.sch"/>
      <include href="include/DTr1_CS.LANG.sch"/>
      <include href="include/DTr1_CV.sch"/>
      <include href="include/DTr1_CV.EPSOS.sch"/>
      <include href="include/DTr1_CV.IPS.sch"/>
      <include href="include/DTr1_ED.sch"/>
      <include href="include/DTr1_EIVL.event.sch"/>
      <include href="include/DTr1_EIVL_TS.sch"/>
      <include href="include/DTr1_EN.sch"/>
      <include href="include/DTr1_ENXP.sch"/>
      <include href="include/DTr1_GLIST.sch"/>
      <include href="include/DTr1_GLIST_PQ.sch"/>
      <include href="include/DTr1_GLIST_TS.sch"/>
      <include href="include/DTr1_hl7nl-INT.sch"/>
      <include href="include/DTr1_hl7nl-IVL_QTY.sch"/>
      <include href="include/DTr1_hl7nl-IVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PIVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PQ.sch"/>
      <include href="include/DTr1_hl7nl-QSET_QTY.sch"/>
      <include href="include/DTr1_hl7nl-RTO.sch"/>
      <include href="include/DTr1_hl7nl-TS.sch"/>
      <include href="include/DTr1_II.sch"/>
      <include href="include/DTr1_II.AT.ATU.sch"/>
      <include href="include/DTr1_II.AT.BLZ.sch"/>
      <include href="include/DTr1_II.AT.DVR.sch"/>
      <include href="include/DTr1_II.AT.KTONR.sch"/>
      <include href="include/DTr1_II.EPSOS.sch"/>
      <include href="include/DTr1_II.NL.AGB.sch"/>
      <include href="include/DTr1_II.NL.BIG.sch"/>
      <include href="include/DTr1_II.NL.BSN.sch"/>
      <include href="include/DTr1_II.NL.URA.sch"/>
      <include href="include/DTr1_II.NL.UZI.sch"/>
      <include href="include/DTr1_INT.sch"/>
      <include href="include/DTr1_INT.NONNEG.sch"/>
      <include href="include/DTr1_INT.POS.sch"/>
      <include href="include/DTr1_IVL_INT.sch"/>
      <include href="include/DTr1_IVL_MO.sch"/>
      <include href="include/DTr1_IVL_PQ.sch"/>
      <include href="include/DTr1_IVL_REAL.sch"/>
      <include href="include/DTr1_IVL_TS.sch"/>
      <include href="include/DTr1_IVL_TS.CH.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_IVL_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_IVXB_INT.sch"/>
      <include href="include/DTr1_IVXB_MO.sch"/>
      <include href="include/DTr1_IVXB_PQ.sch"/>
      <include href="include/DTr1_IVXB_REAL.sch"/>
      <include href="include/DTr1_IVXB_TS.sch"/>
      <include href="include/DTr1_list_int.sch"/>
      <include href="include/DTr1_MO.sch"/>
      <include href="include/DTr1_ON.sch"/>
      <include href="include/DTr1_PIVL_TS.sch"/>
      <include href="include/DTr1_PN.sch"/>
      <include href="include/DTr1_PN.CA.sch"/>
      <include href="include/DTr1_PN.NL.sch"/>
      <include href="include/DTr1_PQ.sch"/>
      <include href="include/DTr1_PQR.sch"/>
      <include href="include/DTr1_QTY.sch"/>
      <include href="include/DTr1_REAL.sch"/>
      <include href="include/DTr1_REAL.NONNEG.sch"/>
      <include href="include/DTr1_REAL.POS.sch"/>
      <include href="include/DTr1_RTO.sch"/>
      <include href="include/DTr1_RTO_PQ_PQ.sch"/>
      <include href="include/DTr1_RTO_QTY_QTY.sch"/>
      <include href="include/DTr1_SC.sch"/>
      <include href="include/DTr1_SD.TEXT.sch"/>
      <include href="include/DTr1_SLIST.sch"/>
      <include href="include/DTr1_SLIST_PQ.sch"/>
      <include href="include/DTr1_SLIST_TS.sch"/>
      <include href="include/DTr1_ST.sch"/>
      <include href="include/DTr1_SXCM_INT.sch"/>
      <include href="include/DTr1_SXCM_MO.sch"/>
      <include href="include/DTr1_SXCM_PQ.sch"/>
      <include href="include/DTr1_SXCM_REAL.sch"/>
      <include href="include/DTr1_SXCM_TS.sch"/>
      <include href="include/DTr1_SXPR_TS.sch"/>
      <include href="include/DTr1_TEL.sch"/>
      <include href="include/DTr1_TEL.AT.sch"/>
      <include href="include/DTr1_TEL.CA.EMAIL.sch"/>
      <include href="include/DTr1_TEL.CA.PHONE.sch"/>
      <include href="include/DTr1_TEL.EPSOS.sch"/>
      <include href="include/DTr1_TEL.IPS.sch"/>
      <include href="include/DTr1_TEL.NL.EXTENDED.sch"/>
      <include href="include/DTr1_thumbnail.sch"/>
      <include href="include/DTr1_TN.sch"/>
      <include href="include/DTr1_TS.sch"/>
      <include href="include/DTr1_TS.AT.TZ.sch"/>
      <include href="include/DTr1_TS.AT.VAR.sch"/>
      <include href="include/DTr1_TS.CH.TZ.sch"/>
      <include href="include/DTr1_TS.DATE.sch"/>
      <include href="include/DTr1_TS.DATE.FULL.sch"/>
      <include href="include/DTr1_TS.DATE.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIME.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIMETZ.MIN.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_URL.sch"/>
      <include href="include/DTr1_URL.NL.EXTENDED.sch"/>
   </pattern>
   <!-- Include the project schematrons related to scenario mp92_mob -->
   <!-- MPBaseMedicatieoverzicht5 -->
   <pattern>
      <title>MPBaseMedicatieoverzicht5</title>
      <rule fpi="RUL-EXPEL"
            context="/">
         <assert role="warning"
                 test="descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9334']] | descendant-or-self::hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9333']]"
                 see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9344-2020-10-15T144451.html">(MPBaseMedicatieoverzicht5): In de instance werd tenminste één van de volgende elementen verwacht: descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9334']] | descendant-or-self::hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9333']]</assert>
      </rule>
   </pattern>
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9344-2020-10-15T144451.sch"/>
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9344-2020-10-15T144451-closed.sch"/>
   <!-- Create phases for more targeted validation on large instances -->
   <phase id="AllExceptClosed">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9344-2020-10-15T144451"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.121.10.14-2021-07-01T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.121.10.19-2021-07-01T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9084-2016-06-21T103838"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9085-2016-06-21T114818"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9101-2016-06-24T130316"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9175-2017-05-22T171022"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9180-2017-05-23T115753"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9189-2017-10-26T161543"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9316-2020-01-20T135516"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9322-2020-10-15T131242"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9323-2020-10-15T131556"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9324-2020-10-15T132016"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9331-2020-10-15T134756"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9332-2020-10-15T134926"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9363-2021-06-02T155855"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9370-2021-06-16T112017"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9372-2021-06-16T133243"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9384-2021-06-18T152903"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9385-2021-06-28T143123"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9386-2021-06-29T170021"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9388-2021-07-09T160923"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.26-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.8-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.9-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.31-2018-06-11T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.30-2017-10-25T000000"/>
   </phase>
   <phase id="MPBaseMedicatieoverzicht5">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9344-2020-10-15T144451"/>
   </phase>
   <phase id="MPBaseMedicatieoverzicht5-closed">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9344-2020-10-15T144451-closed"/>
   </phase>
   <phase id="kleding">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.121.10.14-2021-07-01T000000"/>
   </phase>
   <phase id="lichaamsgewicht">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.121.10.19-2021-07-01T000000"/>
   </phase>
   <phase id="MPMedBehIdentificatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9084-2016-06-21T103838"/>
   </phase>
   <phase id="MPCDAAanvullendeInstructie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9085-2016-06-21T114818"/>
   </phase>
   <phase id="MPTAIdentificatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9101-2016-06-24T130316"/>
   </phase>
   <phase id="MPVSIdentificatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045"/>
   </phase>
   <phase id="MPCDAverifierpatient">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129"/>
   </phase>
   <phase id="MPCDAverifierzorgverlener">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500"/>
   </phase>
   <phase id="MPCDATAAanvullendeInformatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9175-2017-05-22T171022"/>
   </phase>
   <phase id="MPCDAMAAanvullendeInformatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315"/>
   </phase>
   <phase id="MPOrganizerverifierpatient">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538"/>
   </phase>
   <phase id="MPOrganizerVerifierZorgverlener">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9180-2017-05-23T115753"/>
   </phase>
   <phase id="MPCDAGebruikindicator">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9189-2017-10-26T161543"/>
   </phase>
   <phase id="MPCDAKopieIndicator">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847"/>
   </phase>
   <phase id="RedenToedieningsAfspraak2">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612"/>
   </phase>
   <phase id="RedenVanVoorschrijven2">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9316-2020-01-20T135516"/>
   </phase>
   <phase id="MPCDAVolgensAfspraak2">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110"/>
   </phase>
   <phase id="MPCDAMedicatiegebruikSchemaInhoud4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824"/>
   </phase>
   <phase id="MPCDAMedicatiegebruikSchema6">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9322-2020-10-15T131242"/>
   </phase>
   <phase id="MPCDAMedicatieAfspraakSchemaInhoud4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9323-2020-10-15T131556"/>
   </phase>
   <phase id="MPCDAMedicatieAfspraakSchema5">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9324-2020-10-15T132016"/>
   </phase>
   <phase id="MPCDAMedicatieAfspraakSchemaKopie4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423"/>
   </phase>
   <phase id="MPCDAToedieningsafspraakSchemaInhoud4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826"/>
   </phase>
   <phase id="MPCDAToedieningsafspraakSchemaKopie4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041"/>
   </phase>
   <phase id="MPCDAMedicatiegebruikSchemaKopie4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9331-2020-10-15T134756"/>
   </phase>
   <phase id="MPCDAToedieningsafspraakSchema5">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9332-2020-10-15T134926"/>
   </phase>
   <phase id="MPCDADosering4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255"/>
   </phase>
   <phase id="MPCDAMedicationInformation3">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632"/>
   </phase>
   <phase id="MPCDAMedicationInformationProposal3">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9363-2021-06-02T155855"/>
   </phase>
   <phase id="RedenWijzStaAfspraak4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9370-2021-06-16T112017"/>
   </phase>
   <phase id="Stoptype3">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9372-2021-06-16T133243"/>
   </phase>
   <phase id="MPMAIdentificatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9384-2021-06-18T152903"/>
   </phase>
   <phase id="RedenWijzStopMedicatieGebruik3">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9385-2021-06-28T143123"/>
   </phase>
   <phase id="MPMGIdentificatie2">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9386-2021-06-29T170021"/>
   </phase>
   <phase id="MPMAVoorschrijver">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9388-2021-07-09T160923"/>
   </phase>
   <phase id="RedenMedicatieGebruik2">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229"/>
   </phase>
   <phase id="zorgverlener-assignedEntity">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.26-2018-06-11T000000"/>
   </phase>
   <phase id="informant">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000"/>
   </phase>
   <phase id="toelichting">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2018-06-11T000000"/>
   </phase>
   <phase id="playingEntity">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.8-2018-06-11T000000"/>
   </phase>
   <phase id="scopingEntity">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.9-2018-06-11T000000"/>
   </phase>
   <phase id="positie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.31-2018-06-11T000000"/>
   </phase>
   <phase id="lichaamslengte">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.7.10.30-2017-10-25T000000"/>
   </phase>
   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->
   <!-- kleding -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.121.10.14-2021-07-01T000000.sch"/>
   <!-- lichaamsgewicht -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.121.10.19-2021-07-01T000000.sch"/>
   <!-- MPMedBehIdentificatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9084-2016-06-21T103838.sch"/>
   <!-- MPCDAAanvullendeInstructie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9085-2016-06-21T114818.sch"/>
   <!-- MPTAIdentificatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9101-2016-06-24T130316.sch"/>
   <!-- MPVSIdentificatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.sch"/>
   <!-- MPCDAverifierpatient -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.sch"/>
   <!-- MPCDAverifierzorgverlener -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.sch"/>
   <!-- MPCDATAAanvullendeInformatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9175-2017-05-22T171022.sch"/>
   <!-- MPCDAMAAanvullendeInformatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.sch"/>
   <!-- MPOrganizerverifierpatient -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.sch"/>
   <!-- MPOrganizerVerifierZorgverlener -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9180-2017-05-23T115753.sch"/>
   <!-- MPCDAGebruikindicator -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9189-2017-10-26T161543.sch"/>
   <!-- MPCDAKopieIndicator -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.sch"/>
   <!-- RedenToedieningsAfspraak2 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.sch"/>
   <!-- RedenVanVoorschrijven2 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9316-2020-01-20T135516.sch"/>
   <!-- MPCDAVolgensAfspraak2 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.sch"/>
   <!-- MPCDAMedicatiegebruikSchemaInhoud4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.sch"/>
   <!-- MPCDAMedicatiegebruikSchema6 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9322-2020-10-15T131242.sch"/>
   <!-- MPCDAMedicatieAfspraakSchemaInhoud4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9323-2020-10-15T131556.sch"/>
   <!-- MPCDAMedicatieAfspraakSchema5 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9324-2020-10-15T132016.sch"/>
   <!-- MPCDAMedicatieAfspraakSchemaKopie4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.sch"/>
   <!-- MPCDAToedieningsafspraakSchemaInhoud4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.sch"/>
   <!-- MPCDAToedieningsafspraakSchemaKopie4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.sch"/>
   <!-- MPCDAMedicatiegebruikSchemaKopie4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9331-2020-10-15T134756.sch"/>
   <!-- MPCDAToedieningsafspraakSchema5 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9332-2020-10-15T134926.sch"/>
   <!-- MPCDADosering4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.sch"/>
   <!-- MPCDAMedicationInformation3 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.sch"/>
   <!-- MPCDAMedicationInformationProposal3 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9363-2021-06-02T155855.sch"/>
   <!-- RedenWijzStaAfspraak4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9370-2021-06-16T112017.sch"/>
   <!-- Stoptype3 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9372-2021-06-16T133243.sch"/>
   <!-- MPMAIdentificatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9384-2021-06-18T152903.sch"/>
   <!-- RedenWijzStopMedicatieGebruik3 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9385-2021-06-28T143123.sch"/>
   <!-- MPMGIdentificatie2 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9386-2021-06-29T170021.sch"/>
   <!-- MPMAVoorschrijver -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9388-2021-07-09T160923.sch"/>
   <!-- RedenMedicatieGebruik2 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.sch"/>
   <!-- zorgverlener-assignedEntity -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.26-2018-06-11T000000.sch"/>
   <!-- informant -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.sch"/>
   <!-- toelichting -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2018-06-11T000000.sch"/>
   <!-- playingEntity -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.8-2018-06-11T000000.sch"/>
   <!-- scopingEntity -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.9-2018-06-11T000000.sch"/>
   <!-- positie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.31-2018-06-11T000000.sch"/>
   <!-- lichaamslengte -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.7.10.30-2017-10-25T000000.sch"/>
</schema>