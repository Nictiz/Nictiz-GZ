# YATC Basic command usage

One of the goals of YATC is that it must be easy to issue a YATC command, for instance to start a conversion. This document describes this. It assumes that you have installed YATC properly, according to the [Installation notes](installation-notes.md). Especially important is that your system's path contains the `YATC-shared/bin/` sub-directory, as described (otherwise the `yatc` command cannot be found). 

--------

## Basic command: `yatc`

All commands issued for YATC start with `yatc {subcommand} ...` 

To check whether this works, issue the command `yatc -help`. This should output something like:

```
Runs a YATC command
Usage: yatc [subcommand] [subcommand-parameters-flags]
```

---------

## Finding available components: `yatc get-components`

The `yatc get-components` command returns a simple list of all available YATC components. For instance:

```
ada-2-fhir
ada-2-hl7
ada-2-wiki
...
```

------

## Running a component: `yatc {componentname}`

To run a component, for instance start a conversion, get a list of applications/versions, etc., issue the `yatc {componentname} ...` command.

For example, `yatc get-production-ada-instances -help` provides you with an overview of what the `get-production-ada-instances` component offers and its arguments/options. The outcome should look something like this:

```
get-production-ada-instances

Get production ADA instances from ART-DECOR for an
application/version. When specified, it also performs adarefs2ada
processing.

Command line options:
-help
    Displays this help text.
-list [application] [version]
    Lists the application/version combinations available. To list all
...
```

The order of flags/arguments is insignificant. 

### Application/version arguments

Most components process an application/version. Therefore, the application name and version are standard arguments. For instance:

```
yatc ada-2-hl7 cio 2.0.0
```

This will start the ADA to HL7 processing of the `cio` application, version `2.0.0`.

To process multiple applications/versions, substitute `#all` or `%all` for one or both of the arguments. Whether to use `#all` or `%all` depends on your OS environment/command processor: sometimes the `#` or the `%` character is the start of a comment. For instance, this will process all versions of `cio`:

```
yatc ada-2-hl7 cio #all
```

And this will process all versions of all applications:

```
yatc ada-2-hl7 #all #all
```

### Common command flags

Not all flags are supported by all components. Use the `-help` flag to find out what is supported.

#### Getting help: `-help`

This will provide you with a short overview of the command and its arguments/flags.

#### <a name="list"/>Listing available applications/versions: `-list`

This will provide you with an overview of the applications/versions available for this command. For instance, the `yatc ada-2-hl7 -list` command will output all applications/versions available for `ada-2-hl7`:

```
cio 2.0.0 [A]
jgz 6_12_8
jgz 7.0.0
lab 3.0.0
mp 6.12
...
```

The `[A]` marker means that this application/version contains separate actions. See [Spawning actions](#actions). 

#### Start conversions: `-process`

This will start a conversion process. For example:

```
yatc ada-2-hl7 -process cio 2.0.0
```

For convenience, you can omit the `-process` flag.

#### <a name="actions"/>Spawning actions: `-actionlist` and `-action:...`

For some applications/versions, the processing is sub-divided into separate *actions*. Examples of often occurring actions are: `build`, `validate-with-schema` and `validate-with-schematron`. 

To see whether an application/version has actions, list them using the [`-list` command flag](#list). Applications/versions with separate actions have an `[A]` marker.

Once you know that an application/version has actions, you can list these actions using the `-actionlist` command flag. For instance, for `ada-2-hl7/mp/9.3.0`:

```
yatc ada-2-hl7 mp 9.3.0 -actionlist
```

This will provide you with a list of the actions available for `ada-2-hl7/mp/9.3.0`:

```
mp/9.3.0 *build (Build the ada-2-hl7 documents)
mp/9.3.0 schema-validate (Schema-validate the HL7 results)
mp/9.3.0 schematron-validate (Schematron-validate the HL7 results)
mp/9.3.0 gather-validation-results (Gathers all validation results in XML reports)
mp/9.3.0 validate (Perform all validations and gather results)
mp/9.3.0 all (Performs all builds and validations)
```

The action marked with a `*` (in the example above: `build`) is the *default* action. This will be done when you do not explicitly specify an action. 

Specifying a specific action is done using the `-action:...` flag. For instance, starting the `schema-validate` action is done with:

```
yatc ada-2-hl7 mp 9.3.0 -action:schema-validate
```

Multiple actions can be chained using the `+` character. For instance:

```
yatc ada-2-hl7 mp 9.3.0 -action:build+schema-validate
```

#### Explicitly perform setup or not: `-setup` and `-nosetup`

Some actions specifically turn the setup phase for an application/version off. For instance, when you want to do a validation *only*, you do *not* want the setup executed. Setup would clear all results and force you to always perform a (usually rather lengthy) build step before validation.

Actions (as defined in the DSL) specify whether, by default, a setup should be done or not. The `-setup` and `-nosetup` flags override this behaviour. 

#### Running in test mode: `-testmode`

Running a conversion in test mode means that when multiple documents are converted with the same stylesheet, only the *first* one is handled, resulting in a much faster run-through of all the build steps.  

This helps you finding basic errors in stylesheets and missing stylesheets quickly. 
