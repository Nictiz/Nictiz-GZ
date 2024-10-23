# `YATC-internal/get-production-ada-instances/test/`

This directory contains some files for testing the application ADA retrieval process, including some of its more advanced features:

* Whether XInclude mechanism works 
* Whether retrieval-set-definition expansion works. The retrieval set definition is explicitly made indirect (a set inside a set) to test recursive expansion.
* Whether postprocessing stylesheet works.

## Applying the test

To apply this test:

* Copy `YATC-internal/get-production-ada-instances/test/parameters.xml` to `data/parameters.xml` (so in a `data/` directory undernetah the general base directory). This overrides some of the production parameter settings:
    * Takes care that the test ADA retrieval data file `YATC-internal/get-production-ada-instances/test/test-application-ada-retrieval-data.xml` is used (instead of the production `YATC-internal/get-production-ada-instances/data/application-ada-retrieval-data.xml`)
    * The result will *not* be placed in the production directory, but in `YATC-internal/get-production-ada-instances/tmp/`  
* From the command line: `yatc get-production-ada-instances TESTAPP TESTVERSION`

This should produce a `YATC-internal/get-production-ada-instances/tmp/TESTAPP/TESTVERSION/data/` directory. The documents inside must have a TESTTIMESTAMP root attribute (which was added by the postprocessing).

Don't forget to remove the `data/parameters.xml` file after the test!

## Remarks

The test uses one of the applications/versions with a relatively small set of data files for testing. In the future this set may become invalid or disappear or whatever. So, when the test fails, it may seem that `get-production-ada-instances` is not working correctly. Please check (and correct) this if you have troubles performing the test!
