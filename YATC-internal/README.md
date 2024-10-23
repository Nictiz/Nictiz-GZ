# Nictiz repository: `YATC-internal`

[https://github.com/Nictiz/YATC-internal](https://github.com/Nictiz/YATC-internal) (`git@github.com:Nictiz/YATC-internal.git`)

-------

The Nictiz `YATC-internal` repository contains the YATC components for internal use (internal meaning: inside Nictiz). 

Depends on:
* [YATC-tools](https://github.com/Nictiz/YATC-tools)
* [YATC-shared](https://github.com/Nictiz/YATC-shared)

For more information about the YATC system in general, please refer to the documentation files in the `YATC-shared/doc/` subdirectory.

For more information about this particular repository and its components, please refer to the documentation files in the `YATC-internal/{componentname}/doc/` subdirectories.

------

## Contents/Components

The repository contains the following components (in alphabetical order):

| Component | Description |
| ----- | ----- | 
| `ada-2-fhir` | Processes ADA into FHIR |
| `ada-2-hl7` | Processes ADA into HL7 |
| `ada-2-wiki` | Creates WIKI text document(s) |
| `distribute` | Creation of distributions of data and/or scripts. |
| `fhir-2-ada` | Converts FHIR into ADA documents. |
| `get-production-ada-instances` | Retrieves ADA data documents from ART-DECOR, given an application name and version.<br/>It combines the original components `production-ada-instances` and `adarefs2ada` from the `art_decor` repository. |
| `hl7-2-fhir` | Converts HL7 (v3) to FHIR. | 
