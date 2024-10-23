# Command help texts in YATC

The aim is to provide every YATC command with the option of a help text. To make this easier, a specific markup format for this is used.

-----

## Table of contents

* [Introduction](#section-anchor-1)
* [Creating help texts](#section-anchor-2)
* [Providing help texts](#section-anchor-3)
* [The help text format](#section-anchor-4)
  * [Root element: command-help-text](#section-anchor-4-1)
  * [Specifying command line options: command-line-options](#section-anchor-4-2)
    * [Flags: flag](#section-anchor-4-2-1)
    * [Arguments: argument](#section-anchor-4-2-2)



-----

## <a name="section-anchor-1"/>Introduction

Initially, command help texts were written in plain text files. However, this soon ran into limitations:

* Pieces of text (for instance the description of often used flags and options) were re-used and there was no import/include mechanism.
* Maintaining a consistent layout (indentation, notation conventions, etc.) was difficult, boring and error-prone.
* Because of the usually limited number of characters on a line in a command line window, text lines needed to wrap to the next lines frequently. It proved rather hard to do this in a correct and consistent way manually.

To overcome these shortcomings, a proprietary, simple, YATC markup format for command line help texts was introduced, with code to generate the actual help text from this.

-----

## <a name="section-anchor-2"/>Creating help texts

* A YATC command line command help text must reside in a sub-directory `help/` of the directory where the actual command resides (usually the `bin/` directory).
* The document with the help text must be named `{command}.help.xml`.
* It is also still possible (but not recommended) to provide help texts as plain text documents. For this, name the document `{command}.help.txt`.
* This document must be written following the [help text format](#help-text-format).

For example:

* Assume there is a YATC command `do-it`, residing somewhere in the YATC system as `bin/do-it.bat` and `bin/do-it.sh`.
* Its help text then resides in `bin/help/do-it.help.xml`.

-----

## <a name="section-anchor-3"/>Providing help texts

* The (XProc) code for showing a help text is  in `YATC-shared/xplmod/yatc-cw.mod.xpl`, step `yatcs:get-cw-help` (cw = command wrapper).
* Examples of how to use this can be found in, for instance, `YATC-shared/general-engine/xplmod/general-engine.mod.xpl`.

-----

## <a name="section-anchor-4"/><a name="hel-text-format"/>The help text format

* The schema for the YATC command help text format is in `YATC-shared/xsd/command-help-text.xsd`
* All markup for the YATC text format must be in the `https://nictiz.nl/ns/YATC-shared/command-help-text` namespace.

### <a name="section-anchor-4-1"/>Root element: `<command-help-text>`

All command help text documents must have the `<command-help-text>` element as root.

```
<command-help-text command? = xs:string >
  ( <command-line-options> |
    <xi:include href="…"> )
  <description>
</command-help-text>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `command` | ? | `xs:string` | The name of the command. Use this to override the command name that is inferred from the static base URI of the command itself. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `command-line-options` |   | The command line options for the command. | 
| `xi:include` |   | Reference to an include file (which must start with `<command-line-options>` here). | 
| `description` | 1 | A description of the command. | 

### <a name="section-anchor-4-2"/>Specifying command line options: `<command-line-options>`

A command line option is a set of flags and arguments that belong together. For instance, most YATC commands have separate command line options for listing (`-list`), processing (`-process` or no flag), etc.

```
<command-line-options>
  ( <command-line-option> |
    <xi:include href="…"> )*
</command-line-options>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `command-line-option` |   | A single command line option. | 
| `xi:include` |   | Reference to an include file (which must start with `<command-line-option>` here). | 

 

```
<command-line-option>
  ( <flag name="…" optional="…" argument="…"> |
    <argument name="…" optional="…"> )+
  <description>
</command-line-option>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `flag` |   | A flag that is part of the command line option, see [flags](#flags). | 
| `argument` |   | An argument that is part of the command line option, see [arguments](#arguments). | 
| `description` | 1 | A description for this command line option | 

#### <a name="section-anchor-4-2-1"/><a name="flags"/>Flags: `<flag>`

A flag is something you specify with a minus (`-`) in front on the command line, for instance `-help` or `-list`.

A flag sometimes has arguments. For instance, the `-action` flag must be followed by one or more actions, like `-action:build+validate`

```
<flag name = xs:string
      optional? = xs:boolean
      argument? = xs:string >
  <!-- Contents is the description of the flag. -->
</flag>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:string` | Name of the flag. Specify this *without* the leading hyphen! | 
| `optional` | ? | `xs:boolean` | Default: `false`<br/>Whether this flag is optional or mandatory for this command line option. | 
| `argument` | ? | `xs:string` | If the flag has an argument, this is how this is depicted in the help text. For instance: `argument="..."`. | 

#### <a name="section-anchor-4-2-2"/>Arguments: `<argument>`

Examples of arguments in YATC are the name of the application and its version, as in `yatc ada-2-hl7 mp 9.3.0`. Arguments are written *without* a leading minus (`-`).

```
<argument name = xs:string
          optional? = xs:boolean >
  <!-- Contents is the description of the flag. -->
</argument>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:string` | Name of the argument. | 
| `optional` | ? | `xs:boolean` | Default: `false`<br/>Whether this argument is optional or mandatory for this command line option. | 

