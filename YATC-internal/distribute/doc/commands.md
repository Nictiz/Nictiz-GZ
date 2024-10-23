# `YATC-internal/distribute` available commands

This is the documentation for the commands of the Nictiz YATC `YATC-internal/distribute` component. These commands reside in the `YATC-internal/distribute/bin` subdirectory.

* It is recommended that the `YATC-shared/bin` subdirectory is on the system's path. This makes sure the base `yatc` command can be found.
* All commands have a `-help` flag that provides a brief explanation of the command. 
* To specify all applications or versions for a command, you can use either  `#all` or `%all` as argument. The `%all` was added because in some systems (for instance Windows Powershell), the `#` character acts as the start of a comment.
* All processing is governed by the component's `data/distribute-data.xml` document. See [here](data-format-reference.md) for documentation.
* See [here](../../../YATC-shared/doc/parameters-system.md) for general information on YATC parameters.

-----

## Table of contents

* [Command: yatc distribute](#section-anchor-1)
  * [YATC parameter usage](#section-anchor-1-1)
    * [YATC parameter usage](#section-anchor-1-1-1)



-----

## <a name="section-anchor-1"/>Command: `yatc distribute`


Creates a distribution.

Command line options:

`-help`

    Displays this help text.

`-list [distribution]`

    Lists the distributions available. To get all distributions, use either `#all` or `%all`, or leave the argument empty.

`[-process] [-version:distribution-version] distribution`

    Create this distribution. To create all distributions available, use either `#all` or `%all` as argument.

    `-version`: Provide a distribution-version. For instance: `-version:3.4`


 

Command line examples:

* `yatc distribute -list`<br/>Lists the available distributions.
* `yatc distribute -process dist-x`<br/>Creates the distribution named `dist-x`
* `yatc distribute dist-x`<br/>Same as above (the `-process` flag is optional).
* `yatc distribute dist-x -version:1.2.3`<br/>Creates the distribution named `dist-x` with distribution version `1.2.3`

### <a name="section-anchor-1-1"/>YATC parameter usage

#### <a name="section-anchor-1-1-1"/>YATC parameter usage

| Parameter | Base definition location | Data type | Usage | 
| ----- | ----- | ----- | ----- | 
| `distributeDataDocument` | `YATC-internal/distribute/data/parameters.xml` | URI | The document with the application/version action definitions. Usually points to `YATC-internal/distribute/data/distribute-data.xml`. | 

