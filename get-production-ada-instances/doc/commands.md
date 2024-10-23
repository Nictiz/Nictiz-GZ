# `YATC-internal/get-production-ada-instances` available commands

This is the documentation for the commands of the Nictiz YATC `YATC-internal/get-production-ada-instances` component. These commands reside in the `YATC-internal/get-production-ada-instances/bin` subdirectory.

* It is recommended that the `YATC-shared/bin` subdirectory is on the system's path. This makes sure the base `yatc` command can be found.
* All commands have a `-help` flag that provides a brief explanation of the command. 
* To specify all applications or versions for a command, you can use either  `#all` or `%all` as argument. The `%all` was added because in some systems (for instance Windows Powershell), the `#` character acts as the start of a comment.
* All processing is governed by the component's `data/application-ada-retrieval-data.xml` document. See [here](data-format-reference.md) for documentation.
* See [here](../../../YATC-shared/doc/parameters-system.md) for general information on YATC parameters.

-----

## Table of contents

* [Command: yatc get-production-ada-instances](#section-anchor-1)
  * [YATC parameter usage](#section-anchor-1-1)

* [Command: yatc compare-production-ada-instances](#section-anchor-2)
  * [How to use](#section-anchor-2-1)


-----

## <a name="section-anchor-1"/>Command: `yatc get-production-ada-instances`


Get production ADA instances from ART-DECOR for an application/version. When specified, it also performs adarefs2ada processing.

Command line options:

`-help`

    Displays this help text.

`-list [application] [version]`

    Get a list of available application/version combinations. To list all applications/versions available, use either `#all` or `%all` for the argument(s) or leave the argument(s) empty.

`[-process] [-reporturls] [-noretrieval] [-noadarefs2ada] application version`

    Retrieve the ADA production documents for an application/version from ART-DECOR. Perform the adarefs2ada post-processing (if specified). To get all versions/applications, use either #all or %all.

    `-reporturls`: Report all used TEST URLs.

    `-noretrieval`: Do not retrieve data from ART-DECOR, perform the adarefs2ada processing only.

    `-noadarefs2ada`: Do not execute the adarefs2ada processing (if any).


 

Command line examples:

* `yatc get-production-ada-instances -list`<br/>Lists the available application/version combinations.
* `yatc get-production-ada-instances -get lab 3.0.0`<br/>Gets the ADA production data for the given application/version.
* `yatc get-production-ada-instances lab 3.0.0`<br/>Same as above (the `-process` flag is optional).
* `yatc get-production-ada-instances -get #all #all`<br/>Gets all ADA production data.

### <a name="section-anchor-1-1"/>YATC parameter usage

| Parameter | Base definition location | Data type | Usage | 
| ----- | ----- | ----- | ----- | 
| `adarefs2adaBaseStorageDirectory` | `YATC-shared/data/parameters.xml` | URI | The base location for storing the results of any `adarefs2ada` processing. | 
| `applicationAdaRetrievalDataDocument` | `YATC-internal/get-production-ada-instances/data/parameters.xml` | URI | The document with the information what needs to be done for a certain application/version. Usually points to `YATC-internal/get-production-ada-instances/data/application-ada-retrieval-data.xml`. | 
| `getDataRestCallUri` | `YATC-internal/get-production-ada-instances/data/parameters.xml` | URL | The REST call for retrieving ADA documents from ART-DECOR. | 
| `productionAdaInstancesBaseStorageDirectory` | `YATC-shared/data/parameters.xml` | URI | The base location for storing the ADA instances retrieved from ART-DECOR. | 
| `projectsBaseStorageDirectory` | `YATC-shared/data/parameters.xml` | URI | The base location where project information is stored. Used for copying schemas. | 
| `storeAdaIndexFiles` | `YATC-internal/get-production-ada-instances/data/parameters.xml` | Boolean | Whether or not to store/keep the ART-DECOR ADA index file or not. | 

-----

## <a name="section-anchor-2"/>Command: `yatc compare-production-ada-instances`


Compares the documents produced by this YATC component with the ones produced by the original scripts.

Command line options:

`-help`

    Displays this help text.

`application version`

    Perform the compare for this application/version. To compare all applications/versions/distributions available, use either `#all` or `%all` for the argument(s).


### <a name="section-anchor-2-1"/>How to use

* The `compare-production-ada-instances` command is useful only when you have access to the original (usually Ant based) scripts from the [HL7-mappings](https://github.com/Nictiz/HL7-mappings) or [art_decor](https://github.com/Nictiz/art_decor) repository. Somewhere in the transition to the YATC system, these scripts will be removed or disabled, and this command will become superfluous.
* To compare, get a copy of the original [HL7-mappings](https://github.com/Nictiz/HL7-mappings) or [art_decor](https://github.com/Nictiz/art_decor) repository (the repository where the original scripts reside). 
* Use the scripts in these original repository to build the data for the application/version you want to compare.
* Add the location of this repository to your local parameters override file (`{yatc-base-directory}/data/parameters.xml`). The parameter for this is:
  * For [HL7-mappings](https://github.com/Nictiz/HL7-mappings): `HL7MappingsRepoForComparisonsBaseDirectory`
  * For [art_decor](https://github.com/Nictiz/art_decor): `ArtDecorRepoForComparisonsBaseDirectory`

* Build the data using the YATC command for the application/version you want to compare. Take care that the results of this don't go to the same location as the ones produced by the original scripts!
* Run the `compare-production-ada-instances` command for the application/version you want to compare.
* Examine the output for `differences="true"` attributes (probably wise to redirect the output to a file and use an editor).
* This command does a document-by-document comparison, but, for each document, stops on the *first* difference found. So when the command reports differences, it's probably a good idea to load the files in a *real* XML diff application (there's one in oXygen) and examine what's going on in detail.
* The comparison process can be fine-tuned by adding compare rules. This mechanism is described [here](../../../YATC-shared/doc/compare-rules.md).

