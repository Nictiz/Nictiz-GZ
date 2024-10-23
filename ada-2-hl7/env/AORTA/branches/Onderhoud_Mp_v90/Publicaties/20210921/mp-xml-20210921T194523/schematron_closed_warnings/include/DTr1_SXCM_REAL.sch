<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    DTr1 SXCM_REAL - Real
    Status: draft
-->
<rule abstract="true"
      id="SXCM_REAL"
      xmlns="http://purl.oclc.org/dsdl/schematron">
   <extends rule="REAL"/>
   <assert role="error"
           test="not(@nullFlavor and @operator) or @operator = 'I'"
           see="https://art-decor.org/mediawiki/index.php?title=DTr1_SXCM_REAL">dtr1-1-SXCM_REAL: not inclusive if null</assert>
</rule>