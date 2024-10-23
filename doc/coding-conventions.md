# YATC - Coding conventions

This document contains the coding conventions used/prescribed/advised for the code in YATC repositories. 

As with all conventions, try to stick to them, but don't get too religious. If there is a good reason to deviate, do. 

These conventions apply to new code. Any copied existing code may deviate. 

----

## File header information

If possible, a file must start with:
* A short and concise explanation of what we're looking at. What is this code? What does it do? What is its purpose? 
* A copyright notice:

```
Copyright © Nictiz

This program is free software; you can redistribute it and/or modify it under the terms of the
GNU Lesser General Public License as published by the Free Software Foundation; either version
2.1 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU Lesser General Public License for more details.

The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
```

The `YATC-shared/oxygen/yatc-templates/` subdirectory contains oXygen templates for the most common types of code files that try to enforce this. See [here](using-oxygen.md) for more information on how to set this up.

-------

## Pretty-print conventions

Documents should be pretty-printed before they're committed to a repository. This with the following settings:

* Line length unlimited (or at least *very* large).
* Indent using 4 spaces
* Empty lines should be preserved
* Line breaks in attribute values should be preserved
* No sorting of attributes 
* All attributes on a single line (in other words: no line break before an attribute)

-----

## Naming conventions

### General

* All variable, parameter and option names use the *lowerCamelCase* convention: the first word starts with a lower-case letter and each subsequent word starts with an upper-case letter. For instance `mainFilename` or `parameterCount` or `productionAdaInstancesBaseStorageDirectory`.
* The names of all other constructs (functions, named templates, modes, steps, etc.) use the *lower-kebab-case* convention: everything in lower-case with hyphens as word separators. For instance `get-main-filename` or `compute-parameter-count`.
* Explanatory comments (file headers, code explanations, etc.) are done using XML comments: `<!-- ... -->`. Specific constructs, like in XProc `<p:documentation>`, are not used. The only exceptions are W3C Schemas, see below.
* Adding and using an XML Schema and, if necessary, a Schematron Schema, is highly recommended.

### XML specific

* If we have a choice, the names of elements and attributes use the *lower-kebab-case* convention: everything in lower-case with hyphens as word separators. For instance `<paremeter-settings id="1234">`.
* Documents should be pretty-printed using some specific settings before they're committed to a repository. See the section "Pretty-print conventions" above for more information on these settings.


### XProc specific

* If a step has a type (`type` attribute), its name (`name` attribute) should be the same (but without a namespace). For instance: `<p:declare-step type="yatcs:validate-with-xml-schema" name="validate-with-xml-schema">`

### W3C Schema specific

* W3C Schemas will usually be edited using the oXygen built-in graphical editor. Therefore any comments (called *annotations* in schemas) will be stored in `<xs:annotation>` elements.  

-------

## Namespace usage

The YATC system consists of several repositories (`YATC-shared`, `YATC-internal`, etc.). The namespaces used for specific code and data are derived from these repository names. For instance:

* Main namespace for repository `YATC-shared`: `https://nictiz.nl/ns/YATC-shared`
* Main namespace for repository `YATC-internal`: `https://nictiz.nl/ns/YATC-internal`

