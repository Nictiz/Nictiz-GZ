# HL7 mappings

This repository contains executable mappings to convert between different HL7 formats (like HL7v3 and FHIR) for various Dutch standards for electronic exchange of healthcare information.

These mappings are usually based on XSLT transformations on XML messages. Most of these mappings use a neutral intermediate format called ADA ([ART-DECOR Applications](https://docs.art-decor.org/release2/specials/#installing-ada)), which is an extension of the [ART-DECOR tooling](https://docs.art-decor.org/) for specifying electronic healthcare standards. 

Within Nictiz ADA is used for additional purposes, like generating documentation. These mappings are not part of this public repository.

These mappings are mainly used for demonstration purposes. Nictiz provides no guarantees regarding the accuracy of the transformations.

The XSLT's have been tested with Saxon-HE-9.8.0-15.jar.

## Publications
2024-03-12 Publications have thusfar been done in this project. For the past year or so we have been working on major restructuring to better separate code from data. We have also replaced most of the ant powered toolchain with a brand new tool we dubbed yatc (Yet Another ToolChain). This repository no longer holds the code it used to. At publication time the yatc tool assembles all required parts for a given use case. Publications then take place in the sibling repository [YATC-public](https://github.com/Nictiz/YATC-public). The publications in this repository will not be moved or copied there. Over time they will just loose relevance as they are superseded by newer releases.

## Folder structure

The repo is organized along the following folders:

* `ada_2_ada`: mappings to translate from ADA to ADA formats.
* `ada_2_fhir`: mappings to translate from ADA to FHIR formats.
* `ada_2_hl7`: mappings to translate from ADA to HL7v3 formats.
* `fhir_2_ada`: mappings to translate from FHIR to ADA formats.
* `hl7_2_ada`: mappings to translate from HL7v3 to ADA formats.
* `hl7_2_fhir`: mappings to directly translate from HL7v3 to FHIR formats, without the intermediate ADA format.
* `util`: general building blocks used across all mappings
* `_ant-buildfiles`: [ANT](http://ant.apache.org/) based build files to create distributable zip files for various mappings.

Subfolders for specific standards and versions can be found within these main folders, along folders with general functionality. These standard specific folders may contain the following elements:

* XSLT files to execute the mappings (folder `payload`)
* XML schema's for the ADA formats (folder `ada_schemas` or similar)
* Example instances of input messages (folders `ada_instance`, `hl7v3_instance` and similar, depending on context)
* Generated output of these example instances (folders `fhir_instance`, `ada_instance` and similar, depending on context)

## Issues

If you discover issues in the mappings, please refer to our issue tracking tool [BITS](https://bits.nictiz.nl/projects/MM/issues)
