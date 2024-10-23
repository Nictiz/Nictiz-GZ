# `YATC-internal/ada-2-fhir` available commands

This is the documentation for the commands of the Nictiz YATC `YATC-internal/ada-2-fhir` component. These commands reside in the `YATC-internal/ada-2-fhir/bin` subdirectory.

* It is recommended that the `YATC-shared/bin` subdirectory is on the system's path. This makes sure the base `yatc` command can be found.
* All commands have a `-help` flag that provides a brief explanation of the command. 
* To specify all applications or versions for a command, you can use either  `#all` or `%all` as argument. The `%all` was added because in some systems (for instance Windows Powershell), the `#` character acts as the start of a comment.
* All processing is governed by the component's `data/ada-2-fhir-data.xml` document. See [here](data-format-reference.md) for documentation.
* See [here](../../../YATC-shared/doc/parameters-system.md) for general information on YATC parameters.

-----

## Table of contents

* [Command: yatc ada-2-fhir](#section-anchor-1)
  * [YATC parameter usage](#section-anchor-1-1)

* [Command: yatc compare-ada-2-fhir](#section-anchor-2)
  * [How to use](#section-anchor-2-1)


-----

## <a name="section-anchor-1"/>Command: `yatc ada-2-fhir`

Help text not found (expected in "file:///C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/xpl/help/ada-2-fhir-cw.help.txt|xml"

 

Command line examples:

* `yatc ada-2-fhir -list`<br/>Lists the available application/version combinations.
* `yatc ada-2-fhir -process bgz_mm 1.2`<br/>Performs the ADA to FHIR conversion(s) for application `bgz_mm`, version `1.2`.
* `yatc ada-2-fhir bgz_mm 1.2`<br/>Same as above (the `-process` flag is optional).
* `yatc ada-2-fhir -process #all #all`<br/>Performs the ADA to FHIR conversion(s) for all applications/versions known.

### <a name="section-anchor-1-1"/>YATC parameter usage

| Parameter | Base definition location | Data type | Usage | 
| ----- | ----- | ----- | ----- | 
| `ada2fhirBaseStorageDirectory` | `YATC-internal/ada-2-fhir/data/parameters.xml` | URI | The base location for storing the results. | 
| `ada2fhirDataDocument` | `YATC-internal/ada-2-fhir/data/parameters.xml` | URI | The document with the application/version action definitions. Usually points to `YATC-internal/ada-2-fhir/data/ada-2-fhir-data.xml`. | 
| `projectsBaseStorageDirectory` | `YATC-shared/data/parameters.xml` | URI | The base location where project information is stored. Used for copying schemas. | 

-----

## <a name="section-anchor-2"/>Command: `yatc compare-ada-2-fhir`

Help text not found (expected in "file:///C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/xpl/help/compare-ada-2-fhir.help.txt|xml"

### <a name="section-anchor-2-1"/>How to use

* The `compare-ada-2-fhir` command is useful only when you have access to the original (usually Ant based) scripts from the [HL7-mappings](https://github.com/Nictiz/HL7-mappings) or [art_decor](https://github.com/Nictiz/art_decor) repository. Somewhere in the transition to the YATC system, these scripts will be removed or disabled, and this command will become superfluous.
* To compare, get a copy of the original [HL7-mappings](https://github.com/Nictiz/HL7-mappings) or [art_decor](https://github.com/Nictiz/art_decor) repository (the repository where the original scripts reside). 
* Use the scripts in these original repository to build the data for the application/version you want to compare.
* Add the location of this repository to your local parameters override file (`{yatc-base-directory}/data/parameters.xml`). The parameter for this is:
  * For [HL7-mappings](https://github.com/Nictiz/HL7-mappings): `HL7MappingsRepoForComparisonsBaseDirectory`
  * For [art_decor](https://github.com/Nictiz/art_decor): `ArtDecorRepoForComparisonsBaseDirectory`

* Build the data using the YATC command for the application/version you want to compare. Take care that the results of this don't go to the same location as the ones produced by the original scripts!
* Run the `compare-ada-2-fhir` command for the application/version you want to compare.
* Examine the output for `differences="true"` attributes (probably wise to redirect the output to a file and use an editor).
* This command does a document-by-document comparison, but, for each document, stops on the *first* difference found. So when the command reports differences, it's probably a good idea to load the files in a *real* XML diff application (there's one in oXygen) and examine what's going on in detail.
* The comparison process can be fine-tuned by adding compare rules. This mechanism is described [here](../../../YATC-shared/doc/compare-rules.md).

