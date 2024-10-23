# Component documentation `YATC-internal/ada-2-wiki`

The `YATC-internal/ada-2-wiki` creates WIKI text document(s), given an application and version. 

Remark: a `{$parametername}`   in the paths/descriptions below means that the value of the YATC parameter `parametername` is substituted here. See `data/parameters.xml` for more information about YATC parameters in general.

----

## Basics

* Main driver for the operation of this component is the datafile `data/ada-2-wiki-data.xml`. This tells the component what to do to retrieve the right ADA documents. See  its [documentation](data-format-reference.md) for more information.
* This component is meant to be used stand-alone from the command line. See "Command-line usage summary" below or consult [command.md](commands.md).
* It first copies documents retrieved by `get-production-ada-instances` and then produces the WIKI documents(s).
* Everything is stored in `{$ada2wikiBaseStorageDirectory}/{application}/{version}/{usecase}/`.

### Command-line usage summary

If everything is installed correctly, the following commands should work:

* `yatc ada-2-wiki -help`<br/>Gives information on the command line options for `ada-2-wiki`.
* `yatc ada-2-wiki -list`<br/>Lists all the applications and versions availaible for ada-2-wiki.
* `yatc ada-2-wiki -process peri 2.3`<br/>Creates the WIKI text document(s) for application `peri` version `2.3`. 

----

## Algorithm outline

The algorithm followed by the component is outlined below. The main code is in `../xpl/ada-2-wiki.xpl`.

* The datafile is loaded from disk (by `xplmod/ada-2-wiki.mod.xpl`):
  * Any XIncludes are resolved
  * The result is validated against the schema for the datafile in `xsd/ada-2-wiki-data.xsd` and the Schematron schema in `sch/ada-2-wiki-data.sch`. 
  * The resulting document is pruned so only the information for the requested application(s) and version(s) is left.  
  * The data file is post-processed (by `xplmod/xsl-ada-2-wiki.mod/finalize-ada-2-wiki-data.xsl`). This expands all directory and document names, performs the tricks on directory references by identifier, etc. 
* All application/version combinations left in the pruned datafile are processed:
  * The `<setup>` elements are processed. Files produced by `get-production-ada-instances` are copied to the appropriate locations for ada-2-wiki processing.
  * The `<build>` elements are processed. This runs a stylesheet over the retrieved data and produces the required WIKI text document(s).
    
Remark: There is some confusion about the encoding of the WIKI text files. The original Ant code produced UTF-16, but nobody seems to remember why anymore. UTF08 probably makes more sense, but just in case it doesn't the encoding is parametrize (parameter `ada2wikiTextEncoding` in `YATC-internal/ada-2-wiki/data/parameters.xml`). 

UTF-16 in Morgana has two flavors: UTF-16BE (BOM: FE FF) and UTF-16LE (BOM: FF FE). By inspecting the original WIKI text files (produced by the Ant system) it was determined this should be UTF-16BE.

----------

  
## ada-2-wiki stylesheets

All stylesheets that perform ada-2-wiki processing must process things in a specific way. An example can be found in, for instance, `xsl/lab/3.0.0/sturen_laboratoriumresultaten/ADA2test-wiki-table-lab-sl-repo.xsl`. For tips and tricks look [here](howto.md#ada-2-wiki-stylesheets).




