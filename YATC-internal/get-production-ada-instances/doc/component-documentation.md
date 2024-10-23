# Component documentation `YATC-internal/get-production-ada-instances`

The `YATC-internal/get-production-ada-instances` component retrieves ADA documents from ART-DECOR, given an application and version. After that, it performs all necessary postprocessing, so everything is ready for use in other components. 

Remark: a `{$parametername}`   in the paths/descriptions below means that the value of the YATC parameter `parametername` is substituted here. See `data/parameters.xml` for more information about YATC parameters in general.

----

## Basics

* Main driver for the operation of this component is the datafile `data/application-ada-retrieval-data.xml`. This tells the component what to do to retrieve the right ADA documents. See its schema in `xsd/application-ada-retrieval-data.xsd` for documentation.
* There are two main ways to use this component:
  * Stand-alone from the command line, see "Command-line usage summary" below or consult the [commands documentation](commands.md).
  * As step in a bigger XProc pipeline. This step is defined in `xpl/get-production-ada-instances.xpl`. 
* The ADA documents retrieved directly from ART-DECOR  are stored in `{$productionAdaInstancesBaseStorageDirectory}/{application}/{version}/{$productionAdaInstancesDataSubdir}/`.
* The documents produced by the additional adarefs2ada processing are stored in `{$adarefs2adaBaseStorageDirectory}/{application}/{version}/{usecase}`.

### Command-line usage summary

If everything is installed correctly, the following commands should work:

* `yatc get-production-ada-instances -help`<br/>Gives information on the command line options for `get-production-ada-instances`.
* `yatc get-production-ada-instances -list`<br/>Lists all the applications and versions you can get ADA data documents for.
* `yatc get-production-ada-instances -get peri 2.3`<br/>Gets the ADA data documents for application `peri` version `2.3`. 

----

## Algorithm outline

The algorithm followed by the component is outlined below. The main code is in `../xpl/get-production-ada-instances.xpl`.

* The datafile is loaded from disk (by `xplmod/get-production-ada-instances.mod.xpl`):
  * Any XIncludes are resolved
  * The result is validated against the schema for the datafile in `xsd/application-ada-retrieval-data.xsd` and the Schematron schema in `sch/application-ada-retrieval-data.sch`. 
  * The resulting document is pruned so only the information for the requested application(s) and version(s) is left.  
  * The data file is post-processed (by `xplmod/xsl-get-production-ada-instances.mod/finalize-appication-ada-retrieval-data.xsl`). This expands all directory and document names, performs the tricks on directory references by identifier, etc. 
* All application/version combinations left in the pruned datafile are processed:
  * The index file for the application is requested from the ART-DECOR server. When the `storeAdaIndexFiles` is set to true, it will be stored beside the ADA documents. This document does not contain  useful information for further processing, but keeping it might handy for debug/test/development purposes.
  * The `<retrieval>` elements are used to select the relevant entries in the index file:
    * The (element) name must be equal to the value of the `retrieval/@transaction` attribute.
    * If a `retrieval/@contains` is specified and non-empty, the `@id` attribute in the index entry must contain this string.  
  * Using these entries, the ADA documents are requested from the ART-DECOR server
  * If specified (with a `<postprocessing-stylesheet>` element), the documents are post-processed using the specified XSLT stylesheet
  * The adarefs2ada processing (if specified) takes place:
    * The `<setup>` elements copy subsets of data from the previously retrieved data documents to usecase-specific subdirectories. It can also copy specific schemas from  `projects` (parameter `projectsBaseStorageDirectory`).
    * The `<build>` elements run a stylesheet over a set of specified input documents and performs the actual adarefs2ada processing. See also below.
    

----------

  
## Adarefs2ada stylesheets

A stylesheet that perform adarefs2ada processing must process things in a specific way. An example can be found in, for instance, `xsl/lab/3.0.0/laboratoriumresultaten_met_references/lab300-labresults-adarefs2ada.xsl`. For tips and tricks look [here](howto.md#adarefs2ada-stylesheets).

