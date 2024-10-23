# Directory `YATC-internal/ada-2-fhir/env`

The processing for `ada-2-fhir` uses a lot of resources (data files, stylesheets. etc.) that, in the original setup, were grouped together. 

The new setup usually splits this in categories (stylesheets in `…/xsl`, data in `…/data`, etc.). However, given the amount of static (= not generated) files for `ada-2-fhir`, the decision was made to retain the original directory/resource structure and keep all files for an application/version/usecase together in this `env` directory.

Hopefully, this will also mean that developers that were used to the old setup can now more easily find the resources they're looking for.
