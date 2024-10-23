# Using `YATC-tools`

----------

## Prerequisites

Most tools need a working installation of Java. When typing `java -version` on the command line works, you probably have this installed.

There are many Java versions and variants. Which ones work and which ones don't is not completely clear. The following is an incomplete list of `java -version` output for versions/variants that seem to do the job:

* `java version "1.8.0_351" / Java(TM) SE Runtime Environment (build 1.8.0_351-b10) / Java HotSpot(TM) 64-Bit Server VM (build 25.351-b10, mixed mode)`

Most tools (see the Contents section below) have a way to test whether they actually work. If you're trying out a new version of Java, it's probably a good idea to check this.

It will also be helpful to have Git installed on your machine, to clone the necessary repositories and keep them up-to-date.

----------

## Contents

### Saxon

Directory: `YATC-tools/saxon`

This is the Saxon HE (Home Edition) processor. It is used mostly for performing XSLT transformations inside XProc pipelines.

To run it from the command line, within the YATC context, use `YATC-tools/bin/saxon.bat` or `YATC-tools/bin/saxon.sh`. 

For version information, run `YATC-tools/bin/saxon.bat|.sh` without parameters. This also shows that the Saxon installation is correct.

To upgrade Saxon to a new version:

* Download the zip file for the new version here: [https://saxonica.com/download/java.xml](https://saxonica.com/download/java.xml). This 
* Remove the old version by deleting (or renaming) the directory `YATC-tools/saxon/`
* Extract the main Saxon jar from the zip file and store its contents in `YATC-tools/saxon/`
  * Directories like `doc` can be removed. 
* Rename the main jar file to `saxon.jar`
* Open `bin/morgana.bat` and `bin\morgana.sh`. There is an entry in these files for a variable called `XSLTCONNECTOR`. The value of this must reflect what Morgana needs to know about the Saxon version. More information in the [Morgana configuration documentation](https://www.xml-project.com/manual/ch02.html), section 1.2 (*Selecting the XSLT connector*).
* Test the installation as indicated above. It is probably also wise to (re-)test the Morgana installation, as indicated below.


### Morgana

Directory: `YATC-tools/morgana`

This is the MorganaXProc-IIIse XProc 3.0 processor. It is necessary to run all XProc 3.0 pipelines.

To run it from the command line, within the YATC context, use `YATC-tools/bin/morgana.bat` or `YATC-tools/bin/morgana.sh`. Do *not* use the scripts that are supplied by Morgana in the `YATC-tools/morgana` directory, because Saxon will not be on the `CLASSPATH` then. 

For version information see `YATC-tools/morgana/Changelog.txt` or run `YATC-tools/bin/morgana.bat|.sh` without any parameters.

To test whether the basic setup is OK and Morgana can find the Saxon processor change directory to `YATC-tools/bin` and issue the command `morgana test/test-morgana.xpl` This should result in something like this (with a different timestamp of course):

```xml
<TESTMORGANA timestamp="2023-01-11T10:18:18.2108793+01:00">This is a test to see whether Morgana functions correct and can find the Saxon processor. If this output appears and has a timestamp attribute, all is OK!</TESTMORGANA>
```

To upgrade Morgana to a new version:

* Download the latest distribution here: [https://sourceforge.net/projects/morganaxproc-iiise/](https://sourceforge.net/projects/morganaxproc-iiise/)
* Remove the old version by deleting the `YATC-tools/morgana` directory
* Extract the contents of the downloaded Morgana distribution in the `YATC-tools` directory. You should now have a `YATC-tools/MorganaXProc-IIIse-{version}` subdirectory.
* Rename this directory to simply `morgana`
* Test the installation as indicated above.

### SchXslt

Directory: `YATC-tools/schxslt`

This is the SchXslt Schematron processor in the XSLT 2 variant. It is used standalone and by Morgana to perform Schematron validations.

Documentation, including instructions on how to use it, can be found on the [SchXslt Github page](https://github.com/schxslt/schxslt).

The SchXslt distribution does, unfortunately, not contain any direct version information. Therefore we have to record the SchXslt version ourselves in a `README.md` file. However, this is a matter of discipline of the updater and therefore not guaranteed…

To upgrade SchXslt to a new version:

* Clear the contents of the `YATC-tools/schxslt` directory
* Navigate to [https://github.com/schxslt/schxslt](https://github.com/schxslt/schxslt)
* Go to the latest **release** (on the right hand side of the page)
* Download the XSLT only zip. This is called `schxslt-{version}-xslt-only.zip`.
* In this zip there should be a `schxslt-{version}/2.0` directory. Extract the contents of this zip directory into the `YATC-tools/schxslt`. Don't forget the subdirectories.
* Add a `README.md` file containing (at least) the version and date, for instance something like: `SchXslt version 1.9.4 installed 20230208`.


