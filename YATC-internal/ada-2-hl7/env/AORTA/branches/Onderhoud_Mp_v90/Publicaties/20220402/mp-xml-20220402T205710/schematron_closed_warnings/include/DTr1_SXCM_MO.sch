<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    DTr1 SXCM_MO - Money
    Status: draft
-->
<rule abstract="true"
      id="SXCM_MO"
      xmlns="http://purl.oclc.org/dsdl/schematron">
   <extends rule="MO"/>
   <assert role="error"
           test="not(@nullFlavor and @operator) or @operator = 'I'"
           see="https://art-decor.org/mediawiki/index.php?title=DTr1_SXCM_MO">dtr1-1-SXCM_MO: not operator if null</assert>
</rule>