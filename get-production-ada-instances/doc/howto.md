# How to configure YATC-internal/get-production-ada-instances

This document tries to explain how to configure the get-production-ada-instances setup. It starts the journey by adding a new application. If you're altering an existing application, just skip ahead to the right section.

The following documentation might also be of interest for this:

* [Component documentation](component-documentation.md): What does this component do and how does it work, more in general.
* [Command reference](commands.md): What commands are available.
* [Application data format reference](data-format-reference.md): Reference documentation for the base data file `YATC-internal/get-production-ada-instances/data/application-ada-retrieval-data.xml`.
* [The parameters system](../../../YATC-shared/doc/parameters-system.md): Some things are defined using parameters which is documented here.

And of course it is useful and sensible to see how things are done for other applications. Better stolen well than badly made up.

-----

## Adding an application to the base data file

All the magic of get-production-ada-instances is defined in its base data file `YATC-internal/get-production-ada-instances/data/application-ada-retrieval-data.xml`.  Important remarks about this file:

* The name/location of this file is not a given. It is defined using parameter `applicationAdaRetrievalDataDocument` in `YATC-shared/data/parameters.xml`. This can be interesting when you want to replace the normal data file with one of your own in a test/development/debug situation. For this, redefine the parameter in your local parameters override file `YATC-internal/get-production-ada-instances/data/parameters.xml`.
* The file can, if necessary/convenient, be segmented by storing `<application>` elements in separate XML documents and include these in the main file using `<xi:include href="…"/>` elements (the namespace prefix `xi` must be bound to the XInclude namespace `http://www.w3.org/2001/XInclude`).
* There are two schemas involved validating this file. See the [Application data format reference](data-format-reference.md) for more information. Editing this file (in oXygen for instance) works best when these schemas are referenced/used. This also applies to files included using `<xi:include/>`.

To add a new application to the data file, simply add an `/application-ada-retrieval-data/application` element. Add the name
and version of the application in its (required) `@name` and `@version` attributes. All storage will now be done underneath:

* The direct downloads from ART-DECOR (what was previously done by `art_decor/production-ada-instances`) are stored underneath 
`{$productionAdaInstancesBaseStorageDirectory}/{@application}/{@version}`. 
* Any adarefs2ada processing results (what was previously done by `art_decor/adarefs2ada`) are stored underneath `{$adarefs2adaBaseStorageDirectory}/{@application}/{@version}`.

Both directory parameters are defined in `YATC-shared/data/parameters.xml`.  

Originally the data file was set up keeping alphabetical order using the application's name and version. Whether you want to keep it that way is up to you.

### Defining the retrieval from ART-DECOR

To define retrievals from ART-DECOR, use one or more `<retrieval >` elements. Its definition is [here](data-format-reference.md#ada-retrieval). More information about the actual algorithm used (which was taken, unaltered, from the original Ant based code in `art_decor/production-ada-instances`) is [here](component-documentation.md).

If large sets of `<retrieval>` elements are re-used, you can define them once using `<retrieval-sets>` elements and reference them by identifier.

### Defining the adarefs2ada processing

If there is adarefs2ada processing to be done (which is optional), add an `<adarefs2ada>` element. Its definition can be found [here](data-format-reference.md#adarefs2ada)

#### Setting up the environment for a usecase

A `<setup>` element (it can occur multiple times as child of `<adarefs2ada>`) defines what files must copied to the aadarefs2ada result location  and where. The `@usecase` attribute defines the name of the usecase for the setup. This will become the name of the subdirectory underneath the `application/version` main directory. The details are [here](data-format-reference.md#setup-element). Some hints and clues:

* You can copy ADA documents using the `<copy-data>` child element. Add `<include>` and `<exclude>` elements to filter, the string `$USECASE` in `@glob` and `@pattern` attributes is replaced with the name of the usecase.
* You can copy schemas (from the `projects` directory tree) using the `<copy-project-schemas>` child element. Add `<include>` and `<exclude>` elements to filter, the string `$USECASE` in `@glob` and `@pattern` attributes is replaced with the name of the usecase.
* The setup can also create empty result directories using the `<empty-directory>` element. Usually these directories are filled during the build (see below).<br/>Creating these directories up-front is not strictly necessary, because any non-existing directories are automatically created by the build process. However it makes senses to define them here because the `compare-ada-2-wiki` command now knows there's a result directory and takes it into account. 
* Exceptionally, it is necessary to copy fixed data files, usually CSS/JavaScript and the likes. This can be done using the `<copy-directory>` element.<br/>Very often, because they're fixed/constant, the source for these files is in the code directory tree (usually somewhere underneath `ada-2-wiki/data`). To refer to such a directory without resorting to absolute path names, start the `@directory` attribute with a `#`. For instance: `directory="#mp/9.0.7/…/assets"`. Such a path is relative to the location of the file it is used in.
* Even more exceptional is retrieving data files from a REST URL (usually something in ART-DECOR) during setup. This can be done using the `<retrieve>` element.

Although not required, it makes sense to define *directory identifiers* for all directories using `@directory-id` attributes. See [here](data-format-reference.md#resolving-directory-attribute) for more information. this allows referring to these directories during the build without having to repeat there names.


#### Building the adarefs2ada results

Defining how the adarefs2ada results are built is done using the `<build>` element. Details are [here](data-format-reference.md#build-element). It has a non-required `@name` attribute that is only used in reporting progress. Some hints and clues:

* The string `$BUILDNAME` will be substituted with the name of the build in all `@name` and `@value` attributes of child elements.
* Use directory identifiers to refer to directories filled by the setup process. See [here](data-format-reference.md#resolving-directory-attribute) for more information and some examples.
* Define a specific input document using the `<input-document>` element or no input (actually a small dummy document will be used) using the `<no-input>` element.  
* Sometimes a "working set" of ADA files is needed during processing. See the section about the stylesheet below. Such a working set is defined using the `<ada-working-set>` element.
* If your stylesheet needs additional parameters, or you need to override a default value for one, use one or more `<parameter>` elements.
* These stylesheets must output their results using `<xsl:result-document>`. 
* Any direct output is discarded.

For more information about these stylesheets, see [below](#get-production-ada-instances-stylesheets).


#### Other build operations

There are two other build operations besides the `<build>` element, which are rarely used:

* The `<build-overwrite>` element defines a build operation where an already existing document (probably copied by the setup or created using a build) is transformed and written back *under the same name*. See [here](data-format-reference.md#build-overwrite-element).
* The `<build-copy>` element defines additional straight copies of (sets of) files. See [here](data-format-reference.md#build-copy-element). 

-----

## <a name="adarefs2ada-stylesheets"/>The get-production-ada-instances stylesheets

The actual processing for adarefs2ada is done using regular XSLT stylesheets. These stylesheets are run by the `<build>` elements in the data file. Some hints and clues:

* The stylesheets must be XSLT 3.0 (because some underlying code uses maps, a 3.0 feature).
* They usually reside in a subdirectory of `YATC-internal/get-production-ada-instances/xsl`.
* The build system passes these stylesheets a standard set of parameters. You can find these parameters, documented, in `YATC-internal/get-production-ada-instances/xslmod/adarefs2ada-build-standard-parameters.mod.xsl`. Please include (`<xsl:include>`) this module at the top of your stylesheet. This file will also load a set of standard modules and the set of parameters (in a map variable `$parameters`).<br/>There is also a small amount of code in this XSLT module to facilitate processing.
* Most stylesheets need a "working set" of ADA files. This working set is usually the contents of one of the directories filled during the setup. It is defined by the `<ada-working-set>` element.<br/>The name/URI of the working set directory is passed to the stylesheet by the `$adaWorkingSetDirectory` parameter. You can easily load the documents in this directory using the `yatcs:yatcs:get-ada-files()` function. This function will raise an error if the working set is empty.
* The stylesheets must write their result documents using `<xsl:result-document>` instructions. The directory to use for the output is in parameter `$outputDirectory`
* The actual output of the stylesheet is discarded. 
* If the stylesheet needs access to another external document during processing, the best strategy is to pass the URI of the document in by parameter (in a `build/parameter` element). The `<parameter>` element has several tricks in working with the directory system of YATC, including the use of directory identifiers. Avoid putting the filenames in the code.

### Stand-alone testing of adarefs2ada stylesheets

It is preferable to develop and test adarefs2ada stylesheet outside of the context of XProc, for instance from  oXygen. There is some support for this. Here is how to set this up:

* The parameters passed to the adarefs2ada stylesheets are defined in `YATC-internal/get-production-ada-instances/xslmod/adarefs2ada-build-standard-parameters.mod.xsl`. These parameters also get some hopefully appropriate default value. So if you just run the stylesheets without setting any parameters, they will not complain.
* Most (if not all) adarefs2ada stylesheets need a *working-set* of ADA documents:
  * The directory to load them from is passed using the `adaWorkingSetDirectory` parameter. The stylesheet loads all XML files in this directory using the `collection()` function.
  * The default value for this directory is `YATC-internal/get-production-ada-instances/tmp/working-set/`. You can either copy the files for the working-set to that directory or point the parameter to some other directory. Whatever works best for you. 
* In oXygen, setup a transformation scenario that takes an appropriate input file and transforms this using the stylesheet to test/develop.
* The output of this stylesheet is not important and can be discarded. All the interesting stuff is written to a directory pointed to by the parameter `outputDirectory`.The default for this is `YATC-internal/get-production-ada-instances/tmp/output/`.







