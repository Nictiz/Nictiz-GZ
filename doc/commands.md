# `YATC-shared` available commands

This documents the available commands in the `YATC-shared` repository. These commands reside in the `YATC-shared/bin` subdirectory.

It is recommended that this `YATC-shared/bin` subdirectory is on the system's path.

All commands have a `-help` flag that provides a brief explanation of the command.

----------

## Command: `yatc`

**`yatc [subcommand] [subcommand-parameters-flags]`**
 
The `yatc` command tries to locate the provided subcommand, somewhere in the YATC directory tree, and executes it. A subcommand is a `.bat` or `.sh` file with the same name.

For example: `yatc get-production-ada-instances -list`

```
[09:32:06.421] * Getting parameters for base URI "file:///C:/Data/Erik/work/Nictiz/new/YATC-internal/get-production-ada-instances/bin/../xpl/get-production-ada-instances-cw.xpl"
[09:32:07.705] * Loading application data from "file:///C:/Data/Erik/work/Nictiz/new/YATC-internal/get-production-ada-instances/data/application-ada-retrieval-data.xml"
cio 1.0.0
cio 2.0.0
e-overdracht 4.0
ggz 1.0.0
imm 0.1.0
imm 1.0.0
…
```

The `yatc` command prevents having to put all the `…/bin` subdirectories all over the YATC system on the system's command search path. 

----------

## Command: `yatc get-components`

**`yatc get-components`**

Returns a list of all available YATC components.

----------

## Command: `get-parameters`

**`yatc get-parameters [filter-string]`**

The `get-parameters` command provides an overview of the parameters in effect *in the current working directory*. Since the exact set of parameters depends on where you are (which repository/component), the outcomes vary based on location. See also `[parameters-system.md](parameters-system.md).

It accepts a single filter-string parameter. If provided, only parameters with this string in their names (case-insensitive) are shown.

For example: `yatc get-parameters`

```
baseUri="file:///C:/…/Nictiz/new"
yatcBaseDirectory="file:///C:/…/Nictiz/new"
internalBaseStorageDirectory="file:///C:/…/new/art_decor"
…
```

----------

## Command: `get-parameters-xml`

**`yatc get-parameters-xml`**

The `get-parameters-xml` returns an XML document that describes the parameters in effect *in the current working directory*. Since the exact set of parameters depends on where you are (which repository/component), the outcomes vary based on location. See also [parameters-system.md](parameters-system.md).

For example: `yatc get-parameters-xml`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<parameters xmlns="https://nictiz.nl/ns/YATC-shared"
            caller-static-base-uri="file:///C:/Users/erik">
   <sources>
      <source id="s1"
              href="file:///C:/…/new/YATC-shared/data/parameters.xml"/>
      <source id="s2" href="file:///C:/…/new/data/parameters.xml"/>
   </sources>
   <parameter name="baseUri">
      <value>file:///C:/Users/erik</value>
   </parameter>
   <parameter name="yatcBaseDirectory">
      <value>file:///C:/…/new</value>
   </parameter>
   …
</parameters>
```

If you need to do something with this XML, redirect the output of the command to a file, as in `yatc get-parameters-xml >pars.xml`

The resulting XML contains information on where the value of a certain parameter comes from (from which parameter file). This is in the `<sources>` element.


----------

## Command: `get-system-info`

The `get-system-info` command returns YATC system information like the repository and current component name/directory. The outcome depends on the current working directory.

For example: `yatc get-system-info`

```
Base URI passed: "file:///C:/…/new/YATC-internal/get-production-ada-instances"
Base directory: "file:///C:/…/new"
Repository name: "YATC-internal"
Repository directory URI: "file:///C:/…/new/YATC-internal"
Component name: "get-production-ada-instances"
Component directory URI: "file:///C:/…/new/YATC-internal/get-production-ada-instances"
```

-----

## Command: `text-documents-2-markdown`

This is a special command for the *developers* of YATC. Some documentation Markdown files are *generated* from a simple XML source format (to enable easy and maintainable rendering of XML documentation). Most of these files are in the `doc/src` directories of the repositories/components.

The command will inspect all `doc/src` repositories in the YATC repositories, turn the XML documents in there into Markdown and write the result in the underlying `doc` directory.


