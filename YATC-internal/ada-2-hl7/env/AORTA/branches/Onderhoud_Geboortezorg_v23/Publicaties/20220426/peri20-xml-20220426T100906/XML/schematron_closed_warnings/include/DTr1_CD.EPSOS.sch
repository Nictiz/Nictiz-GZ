<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    DTR1 CD.EPSOS - Concept Descriptor
    Status: draft
    TODO: check for codes/codesystems in translations
-->
<rule abstract="true"
      id="CD.EPSOS"
      xmlns="http://purl.oclc.org/dsdl/schematron">
   <extends rule="CD"/>
   <assert role="error"
           test="descendant-or-self::*[not(@code) or @displayName]"
           see="https://art-decor.org/mediawiki/index.php?title=DTr1_CD.EPSOS">dtr1-1-CD.EPSOS: attribute @displayName is required on all codes and translations thereof</assert>
</rule>