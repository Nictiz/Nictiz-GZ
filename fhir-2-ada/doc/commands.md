# `YATC-internal/fhir-2-ada` available commands

This is the documentation for the commands of the Nictiz YATC `YATC-internal/fhir-2-ada` component. These commands reside in the `YATC-internal/fhir-2-ada/bin` subdirectory.

* It is recommended that the `YATC-shared/bin` subdirectory is on the system's path. This makes sure the base `yatc` command can be found.
* All commands have a `-help` flag that provides a brief explanation of the command. 
* To specify all applications or versions for a command, you can use either  `#all` or `%all` as argument. The `%all` was added because in some systems (for instance Windows Powershell), the `#` character acts as the start of a comment.
* All processing is governed by the component's `data/fhir-2-ada-data.xml` document. See [here](data-format-reference.md) for documentation.
* See [here](../../../YATC-shared/doc/parameters-system.md) for general information on YATC parameters.

-----

## Table of contents

* [Command: yatc fhir-2-ada](#section-anchor-1)
  * [YATC parameter usage](#section-anchor-1-1)

* [Command: yatc compare-fhir-2-ada](#section-anchor-2)
  * [How to use](#section-anchor-2-1)


-----

## <a name="section-anchor-1"/>Command: `yatc fhir-2-ada`


Creation of ADA from FHIR documents for an application/version.

Command line options:

`-help`

    Displays this help text.

`-list [application] [version]`

    Get a list of available application/version combinations. To list all applications/versions available, use either `#all` or `%all` for the argument(s) or leave the argument(s) empty.

`-actionlist [application] [version]`

    Get a list of available actions (if any) for the given application/version combinations. To get the actions for all applications/versions available, use either `#all` or `%all` for the argument(s) or leave the argument(s) empty.

`[-process] [-nosetup] [-setup] [-action:...] [-testmode] application version`

    Process the available application/version combinations. To process all applications/versions available, use either `#all` or `%all` for the argument(s).

    `-nosetup`: Do not process the setup elements.

    `-setup`: Always process the setup elements, even when an action turns setup off. Takes precedence over -nosetup.

    `-action`: Perform the action(s) specified. Separate multiple actions with a `+` (for instance `-action:ac1+ac2`). If not specified, the action flagged as default is processed (if any).

    `-testmode`: Run in test mode. This will reduce the set of input documents for build and validate steps to only one.


 

Command line examples:

* `yatc fhir-2-ada -list`<br/>Lists the available application/version combinations.
* `yatc fhir-2-ada -process mp 9.0.7`<br/>Performs the FHIR to ADA conversion(s) for application `mp`, version `9.0.7`.
* `yatc fhir-2-ada mp 9.0.7`<br/>Same as above (the `-process` flag is optional).
* `yatc fhir-2-ada -process #all #all`<br/>Performs the FHIR 2 ADA conversion(s) for all applications/versions known.

### <a name="section-anchor-1-1"/>YATC parameter usage

| Parameter | Base definition location | Data type | Usage | 
| ----- | ----- | ----- | ----- | 
| `ada2fhirBaseStorageDirectory` | `YATC-internal/fhir-2-ada/data/parameters.xml` | URI | The base location for storing the results. | 
| `ada2fhirDataDocument` | `YATC-internal/fhir-2-ada/data/parameters.xml` | URI | The document with the application/version action definitions. Usually points to `YATC-internal/fhir-2-ada/data/fhir-2-ada-data.xml`. | 
| `projectsBaseStorageDirectory` | `YATC-shared/data/parameters.xml` | URI | The base location where project information is stored. Used for copying schemas. | 

-----

## <a name="section-anchor-2"/>Command: `yatc compare-fhir-2-ada`


Compares the documents produced by this YATC component with the ones produced by the original scripts.

Command line options:

`-help`

    Displays this help text.

`application version`

    Perform the compare for this application/version. To compare all applications/versions/distributions available, use either `#all` or `%all` for the argument(s).


### <a name="section-anchor-2-1"/>How to use

* The `compare-fhir-2-ada` command is useful only when you have access to the original (usually Ant based) scripts from the [HL7-mappings](https://github.com/Nictiz/HL7-mappings) or [art_decor](https://github.com/Nictiz/art_decor) repository. Somewhere in the transition to the YATC system, these scripts will be removed or disabled, and this command will become superfluous.
* To compare, get a copy of the original [HL7-mappings](https://github.com/Nictiz/HL7-mappings) or [art_decor](https://github.com/Nictiz/art_decor) repository (the repository where the original scripts reside). 
* Use the scripts in these original repository to build the data for the application/version you want to compare.
* Add the location of this repository to your local parameters override file (`{yatc-base-directory}/data/parameters.xml`). The parameter for this is:
  * For [HL7-mappings](https://github.com/Nictiz/HL7-mappings): `HL7MappingsRepoForComparisonsBaseDirectory`
  * For [art_decor](https://github.com/Nictiz/art_decor): `ArtDecorRepoForComparisonsBaseDirectory`

* Build the data using the YATC command for the application/version you want to compare. Take care that the results of this don't go to the same location as the ones produced by the original scripts!
* Run the `compare-fhir-2-ada` command for the application/version you want to compare.
* Examine the output for `differences="true"` attributes (probably wise to redirect the output to a file and use an editor).
* This command does a document-by-document comparison, but, for each document, stops on the *first* difference found. So when the command reports differences, it's probably a good idea to load the files in a *real* XML diff application (there's one in oXygen) and examine what's going on in detail.
* The comparison process can be fine-tuned by adding compare rules. This mechanism is described [here](../../../YATC-shared/doc/compare-rules.md).

