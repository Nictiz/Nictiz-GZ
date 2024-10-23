<?xml version="1.0" encoding="UTF-8"?>
<schema queryBinding="xslt2"
        xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Schematron file for transaction Sturen afhandeling medicatievoorschrift MP9 2.0.0 (2.16.840.1.113883.2.4.3.11.60.20.77.4.334 2022-02-07T00:00:00)</title>
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
   <!-- Include the project schematrons related to scenario mp92_av -->
   <!-- MPBaseAfhVoorschrift4 -->
   <pattern>
      <title>MPBaseAfhVoorschrift4</title>
      <rule fpi="RUL-EXPEL"
            context="/">
         <assert role="warning"
                 test="descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']] | descendant-or-self::hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]"
                 see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9345-2020-10-15T145147.html">(MPBaseAfhVoorschrift4): In de instance werd tenminste één van de volgende elementen verwacht: descendant-or-self::hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']] | descendant-or-self::hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]</assert>
      </rule>
   </pattern>
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9345-2020-10-15T145147.sch"/>
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9345-2020-10-15T145147-closed.sch"/>
   <!-- Create phases for more targeted validation on large instances -->
   <phase id="AllExceptClosed">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9345-2020-10-15T145147"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9084-2016-06-21T103838"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9085-2016-06-21T114818"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9095-2016-06-23T195047"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9097-2016-06-23T203415"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9178-2017-05-23T091005"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9312-2019-12-23T150301"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9332-2020-10-15T134926"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9364-2021-06-02T161935"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9372-2021-06-16T133243"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9384-2021-06-18T152903"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9394-2022-03-15T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000"/>
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2021-07-01T000000"/>
   </phase>
   <phase id="MPBaseAfhVoorschrift4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9345-2020-10-15T145147"/>
   </phase>
   <phase id="MPBaseAfhVoorschrift4-closed">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9345-2020-10-15T145147-closed"/>
   </phase>
   <phase id="MPMedBehIdentificatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9084-2016-06-21T103838"/>
   </phase>
   <phase id="MPCDAAanvullendeInstructie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9085-2016-06-21T114818"/>
   </phase>
   <phase id="Aanschrijfdatum">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9095-2016-06-23T195047"/>
   </phase>
   <phase id="Distributievorm">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9097-2016-06-23T203415"/>
   </phase>
   <phase id="MPCDAVSAanvullendeInformatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9178-2017-05-23T091005"/>
   </phase>
   <phase id="MPCDAKopieIndicator">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847"/>
   </phase>
   <phase id="MPVVdentificatie2">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9312-2019-12-23T150301"/>
   </phase>
   <phase id="MPCDAToedieningsafspraakSchemaInhoud4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826"/>
   </phase>
   <phase id="MPCDAToedieningsafspraakSchemaKopie4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041"/>
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
   <phase id="MPCDAVerstrekking4">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9364-2021-06-02T161935"/>
   </phase>
   <phase id="Stoptype3">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9372-2021-06-16T133243"/>
   </phase>
   <phase id="MPMAIdentificatie">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9384-2021-06-18T152903"/>
   </phase>
   <phase id="RedenWijzStaTAcode">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9394-2022-03-15T000000"/>
   </phase>
   <phase id="MPCDATAAanvullendeInformatie2">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000"/>
   </phase>
   <phase id="toelichting">
      <active pattern="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2021-07-01T000000"/>
   </phase>
   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->
   <!-- MPMedBehIdentificatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9084-2016-06-21T103838.sch"/>
   <!-- MPCDAAanvullendeInstructie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9085-2016-06-21T114818.sch"/>
   <!-- Aanschrijfdatum -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9095-2016-06-23T195047.sch"/>
   <!-- Distributievorm -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9097-2016-06-23T203415.sch"/>
   <!-- MPCDAVSAanvullendeInformatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9178-2017-05-23T091005.sch"/>
   <!-- MPCDAKopieIndicator -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.sch"/>
   <!-- MPVVdentificatie2 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9312-2019-12-23T150301.sch"/>
   <!-- MPCDAToedieningsafspraakSchemaInhoud4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.sch"/>
   <!-- MPCDAToedieningsafspraakSchemaKopie4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.sch"/>
   <!-- MPCDAToedieningsafspraakSchema5 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9332-2020-10-15T134926.sch"/>
   <!-- MPCDADosering4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.sch"/>
   <!-- MPCDAMedicationInformation3 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.sch"/>
   <!-- MPCDAVerstrekking4 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9364-2021-06-02T161935.sch"/>
   <!-- Stoptype3 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9372-2021-06-16T133243.sch"/>
   <!-- MPMAIdentificatie -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9384-2021-06-18T152903.sch"/>
   <!-- RedenWijzStaTAcode -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9394-2022-03-15T000000.sch"/>
   <!-- MPCDATAAanvullendeInformatie2 -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.sch"/>
   <!-- toelichting -->
   <include href="include/2.16.840.1.113883.2.4.3.11.60.3.10.0.32-2021-07-01T000000.sch"/>
</schema>