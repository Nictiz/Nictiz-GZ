# <a name="distributions-description"/>Distributions

-----

## Table of contents

* [Overview](#section-anchor-1)
* [Examples](#section-anchor-2)
  * [Distributing XSLT stylesheets with a readme](#section-anchor-2-1)


-----

## <a name="section-anchor-1"/>Overview

The `YATC-internal/distribute` component allows you to merge results and/or scripts into what is called a *distribution*.

A distribution is a collection of directory/file copies to some location. The idea is that a distribution gathers all necessary files for some additional  application/purpose/user/customer. For instance, the stylesheets an external customer needs, or parts of the output documents produced. 

A distribution has the following features:

* A distribution has a *name*, by which it can be identified/started.
* A distribution consists of:
  * Directory copies. You can filter the documents copied by name patterns. The target directory may have a different name than the source.
  * Single file copies. The target file may have a different name than the source.
  * Copies of additional text documents, for instance readme files or license texts. Within these files, simple macro substitutions (see [distribution macros](data-format-reference.md#distribution-macros)) can be done, for instance to insert dates or version numbers. You can also *combine* multiple text files into one.
  * Flattened sets of XSLT stylesheets, XML Schemas or Schematron Schemas. Flattening means that these documents are copied first. Subsequently, all files included/imported (recursively) are copied as well, into a single sub-directory. All include/import elements are adapted to the new, flattened, layout.

* The name definitions of all directories and filenames can contain simple macros (see [distribution macros](data-format-reference.md#distribution-macros)), so you can, for instance, create a distribution directory with the date and/or time in its name.
* If needed, the result of the distribution can be gathered in a zip file.
* When creating a distribution, you have the option to provide a so-called *distribution-version*. This is a string that distinguishes this specific distribution from others, such as `3.1` or `0.4beta`. It is not necessary to do this, as the date and time of creation may be sufficient for identification. However, if you choose to provide a distribution-version, you can utilize it in macro substitutions for target directory/file names and additional text documents.

-----

## <a name="section-anchor-2"/>Examples

### <a name="section-anchor-2-1"/>Distributing XSLT stylesheets with a readme

Let's assume that the following distribution is defined:

```
<distribute-data>
        
    <distribution name="dist1" target-directory="TMP-$DISTRIBUTIONVERSION-$DATECOMPACT"  
            base-dir-in-zip="false" 
            href-zip="../ZIP-$DISTRIBUTIONVERSION-$DATECOMPACT.zip" distribution-version-required="true" 
            allow-overwrite="false" keep-files="false">
        
        <flatten-stylesheets source-directory="ada-2-fhir/env/ketenzorg/3.0.2/beschikbaarstellen/payload/" 
                target-directory="stylesheets"/>
        
        <combine-additional-text-documents href-target="README.txt" 
                separator="$NL$NL*******************************************************$NL$NL">
            <text-document href-source="ada-2-fhir/env/ketenzorg/3.0.2/beschikbaarstellen/README-1.txt"/>
            <text-document href-source="ada-2-fhir/env/ketenzorg/3.0.2/beschikbaarstellen/README-2.txt"/>
        </combine-additional-text-documents>
        
    </distribution>

</distribute-data>
```

Assume we call it on November 14th 2023, using the command: `yatc distribute dist1 -version:1.16.7`.

What it will do is:

* The distribution named `test1` writes its results to a subdirectory of the main distributions directory, using some macros.
  * Writes its results to a subdirectory of the main distributions directory using some macros. In the example this will become `TMP-1.16.7-20231114`.
  * Setting `@distribution-version-required` to `true` means that you *must* specify the `-version:…` flag on the command line when creating this distribution. It cannot run without a specific distribution version set.
  * Since the `@allow-overwrite` is set to `false`, neither the target directory nor the zip file must exist before the distribution's actions takes place.
  * The `@href-zip` attribute defines the name of the zip file that contains the distribution results. The name of this zip file will become `ZIP-1.16.7-20231114.zip` and it will be stored in the main distribution directory.<br/>Setting `@base-dir-in-zip` to `false` defines that we don't want the name of the temporary directory where we write the distribution to (`TMP-1.16.7-20231114`) to be part of the zip's contents. Only the files/sub-directories *in* that directory become part of the zip file.
  * Since `@keep-files` is set to `false`, the temporary distribution directory (`TMP-1.16.7-20231114`) will be deleted after the zip file is created.

* The first part of the distribution is a flattened collection of stylesheets from the code base of `YATC-internal/ada-2-fhir`. These files will be placed in a sub-directory `stylesheets`. There will also be a sub-directory `stylesheets/include`, where all the includes/imports live.
* Finally a `README.txt` file is created, combining two separate (imaginary) readme files. A line with stars is used as separator.

The result of this distribution will be a zip file `ZIP-1.16.7-20231114.zip`. At root level it contains a sub-directory `stylesheets` and a `README.txt` document.

