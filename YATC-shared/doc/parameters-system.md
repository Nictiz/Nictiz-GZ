# YATC - Parameters system

YATC has a system for working with parameters. This enables that important settings like directory names, server URLs, etc. are not hard-coded but read from parameter documents. Maintaining these settings is now a lot easier, since they're kept and specified in a central location. 

It also has the important feature that, for a specific installation/computer, parameters can easily be overridden with a different value. This enables developers to easily change, for instance, the name of an output directory or server, simply by locally changing the parameter's value. Parameter values for production usage, as stored in the repositories, do not need to be changed for this.

-----

## Introduction to parameters

* A parameter is a basically just a classic `name=value` construct.
* It can optionally have none or multiple values. This will be rarely used, but can be handy is some cases.
* Parameters come from several sources:
  * Some parameters are added/computed automatically by the software that gathers them (in `YATC-shared/xslmod/yatc-parameters.mod.xsl`). For example: the base directory (the directory where all the repositories are checked out), name and directory of the repository we're calling from, etc. 
  * These are combined with parameters from several parameter files. The algorithm for this is explained below. 
* The `YATC-shared` repository has several modules and scripts for working with parameters in code. See below.

---

## Parameters

### Automatic parameters

The software that handles parameters (most is in `YATC-shared/xslmod/yatc-parameters.mod.xsl`) automatically adds a number of parameters. Some values, like the repository and component name/directory, depend on the location of the code you're calling from. 

| Parameter name | Description | Example | 
| ----- | ----- | ----- |
| `baseUri` | The base location/URI used in computing the parameters. In code this is usually passed with the `static-base-uri()` function. | `file:///C;/some/path/YATC-shared/xsl/get-parameters.xsl` |
| `baseDriveRoot` | The base drive name part of the base URI. This is useful when constructing absolute path names in a parameter. | `file:///C:` (Windows native)<br/>`file:///mnt/c` (Windows WSL)<br/>`file://` (Unix/Linux native) | 
| `yatcBaseDirectory` | The name of the YATC base directory as a URI (the directory in which all YATC repositories are check-out/cloned). | `file:///C:/some/path` |
| `yatcRepositoryName` | The name of the repository, given the location of the code you're calling from.<br/>If you're calling from outside the YATC system this parameter will not exist.| `YATC-internal` |
| `yatcRepositoryDirectory` | The base directory of the repository as a URI, given the location of the code you're calling from.<br/>If you're calling from outside the YATC system, this parameter will not exist. | `file:///C:/some/path/YATC-internal` |
| `yatcComponentName` | The name of the component in the current repository, given the location of the code you're calling from.<br/>If you're calling from outside the YATC system or below the component level, this parameter will not exist. | `ada-2-something` |
| `yatcComponentNameShortened` | The shortened version of `yatcComponentName`, keeps only letters and numbers<br/>Names like this are often used in other YATC parameter names. | `ada2something` |
| `yatcComponentNameTraditional` | The "traditional" version of `yatcComponentName`, all hyphens are replaced with underscores.<br/>Names like this are often used for files/directories in the original `HL7-mappings` and `art_decor` repositories. | `ada_2_something` |
| `yatcComponentDirectory` | The base directory of the current component, given the location of the code you're calling from.<br/>If you're calling from outside the YATC system or below the component level, this parameter will not exist. | `file:///C:/some/path/YATC-internal/ada-2-something` |


Additional remarks:
* Directory names are always formatted as a URI (so with `file://` in front). This is because all XML processing software needs URIs when using paths.
  * A prefix with just a *single* slash also works: `file:/C:/…` 
  * If you need to set a parameter to an *absolute* path, best to start it with `{$baseDriveRoot}`, so it will work both Windows native, Windows WSL (Windows Subsystem for Linux) and Unix/Linux native. 
* Paths always use forward slashes (Windows works fine with these). 
* A directory name does *not* end with a `/`.

### Parameter files

Specific parameters are specified in parameter files. A basic parameter file looks like this:

```xml
<parameters xmlns="https://nictiz.nl/ns/YATC-shared" 
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
            xsi:schemaLocation="https://nictiz.nl/ns/YATC-shared ../xsd/parameters.xsd">
    <parameter name="par1" >
        <value>Value for par1</value>
    </parameter>
    <parameter name="par2" >
        <value>Value for par2</value>
    </parameter>
</parameters>
```

* Parameter files must be in the `YATC-shared` namespace `https://nictiz.nl/ns/YATC-shared`.
* The parameters file format is documented [here](parameters-format-reference.md).
* There is a schema for parameter files in `YATC-shared/xsd/parameters.xsd`. It is strongly advised to use this when setting up a parameter file (like in the example above). 
* The full parameters XML format is defined in [parameters-format-reference.md](parameters-format-reference.md).

### Processing of parameter files

The software that handles parameters (most is in `YATC-shared/xslmod/yatc-parameters.mod.xsl`) processes the parameter files as follows:

* Parameter files are read/processed in a very specific order. 
* A parameter with the name of an already defined one will override a previously defined value. In other words: parameters encountered later in the parameter collection process take precedence over previously encountered parameters. This even allows you to override the automaticly generated parameters, if needed.
* Parameter files do not need to exist. If this isn't the case, they will simply be skipped.

The parameter files are read in the following order:

|  Parameter file | Location | Example URI | 
| ----- | ----- | ----- | 
| The `YATC-tools` parameter file | `{$yatcBaseDirectory}/YATC-tools/data/parameters.xml` | `file:///C:/some/path/YATC-tools/data/parameters.xml` | 
| The `YATC-shared` parameter file | `{$yatcBaseDirectory}/YATC-shared/data/parameters.xml` | `file:///C:/some/path/YATC-shared/data/parameters.xml` | 
| The parameter file of the current repository (if we're calling from a repository location and the parameter file is not already included) | `{$yatcRepositoryDirectory}/data/parameters.xml` | `file:///C:/some/path/YATC-internal/data/parameters.xml` | 
| The parameter file of the current component (if we're calling from a component location and this parameter file is not already included)  | `{$yatcComponentDirectory}/data/parameters.xml` | `file:///C:/some/path/YATC-internal/ada-2-something/data/parameters.xml` | 
| The local parameter file (this parameter file is outside any repository and can be used to locally/temporarily override a parameter value) | `{$yatcBaseDirectory}/data/parameters.xml` | `file:///C:/some/path/data/parameters.xml` | 


### <a name="yatc-parameter-references"/>Parameter references

A parameter value can contain references to another parameters. These will expand using the referenced parameter (first) value.

A parameter reference can be written in two ways:

* As `{$parametername}`
* As `${parametername}`

To stop `${` or `{$` from being seen as the start of a parameter reference, double the curly brace: `${{` or `{{$`.

---

## Checking parameters

The YATC system has the `yatc get-parameters` command to check which parameters are in effect/defined. 

If you provide a command-parameter, you'll only get the parameters whose name contains this string (case-insensitive). So `yatc get-parameters test` will return parameter with the string `test` somewhere in their name.

**Watch out**: The parameters reported by `yatc get-parameters` depend on what your current directory is, since which parameter files are loaded depends on which repository/component you're in!

---

## Using parameters in code

### XSLT 2

* Include the following files:
  * `YATC-shared/xslmod/general.mod.xsl` 
  * `YATC-shared/xslmod/href.mod.xsl` 
  * `YATC-shared/xslmod/yatc-system.mod.xsl` 
  * `YATC-shared/xslmod/yatc-parameters.mod.xsl` 
* Call `yatc:get-combined-parameters(static-base-uri())` to get the parameters (for the location of this specific piece of code).
* This will return a `<parameters>` element (as described in the section "Parameter files" above) with the combined set of parameters.
* Access the parameters by, for instance:
  * By working with the returned value using XPath
  * By calling `yatcs:get-parameter-value()` on the returned value

For example, to get the URI of the component directory in variable `$componentdir`:

```xml
…
<xsl:include href="…/xslmod/general.mod.xsl"/>
<xsl:include href="…/xslmod/href.mod.xsl"/>
<xsl:include href="…/xslmod/yatc-system.mod.xsl"/>
<xsl:include href="…/xslmod/yatc-parameters.mod.xsl"/>
…
<xsl:variable name="parameters" as="element(yatcs:parameters)" select="yatcs:get-combined-parameters(static-base-uri())"/>
<xsl:variable name="componentdir" as="xs:string" select="yatcs:get-parameter-value($parameters, $yatcs:parnameYatcComponentDirectory)"/>
…
```


### XSLT 3

* Use the same method/code as for XSLT 2
* Or turn the parameters into a map for easier (and faster) access using `yatcs:get-combined-parameters-map(static-base-uri())` defined in  `YATC-shared/xslmod/yatc-parameters-map.mod.xsl`

For example:

```xml
…
<xsl:include href="…/xslmod/general.mod.xsl"/>
<xsl:include href="…/xslmod/href.mod.xsl"/>
<xsl:include href="…/xslmod/yatc-system.mod.xsl"/>
<xsl:include href="…/xslmod/yatc-parameters.mod.xsl"/>
<xsl:include href="…/xslmod/yatc-parameters-map.mod.xsl"/>
…
<xsl:variable name="parameters-map" as="map(*)" select="yatcs:get-combined-parameters-map(static-base-uri())"/>
<xsl:variable name="componentdir" as="xs:string" select="$parameters-map($yatcs:parnameYatcComponentDirectory)"/>
…
```

### XProc

* Import the library `YATC-shared/xplmod/yatc-parameters.mod.xpl`
* Call the step `yatcs:get-combined-parameters-map` and store the result in a variable (type `map`) 

For example:

```xml
…
<p:import href="…/yatc-parameters.mod.xpl"/>
…
<yatcs:get-combined-parameters-map>
    <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/> 
</yatcs:get-combined-parameters-map>
<p:variable name="parameters" as="map(*)" select="."/>
…
<p:identity>
    <p:with-input>
         <componentdir>{$parameters($yatcs:parnameYatcComponentDirectory)}</build-directory>
    </p:with-input>
</p:identity>
… 
```
---

## Definition of parameter names for usage in code

To prevent having strings with parameter names all over the place, the parameter names are defined in constants for XSLT and XProc. 

By convention, these files are called:

* For XSLT: `xslmod/component-parameter-names.mod.xsl` (defined as variables)
* For XProc: `xplmod/component-parameter-names.mod.xpl` (defined as static options)

The variables/options are called `parname…`, for instance `yatci:parnameStoreAdaIndexFiles`. They're always in the namespace of the defining repository.

Developer support: Creating these files is a bore. There's a simple stylesheet that creates the XSLT variables and XProc options from an already defined parameter file: `YATC-shared/support/create-parameter-name-definitions.xsl`.
