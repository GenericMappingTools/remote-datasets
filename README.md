# Documentation for GMT remote datasets

[![Docs](https://github.com/GenericMappingTools/remote-datasets/actions/workflows/docs.yml/badge.svg)](https://github.com/GenericMappingTools/remote-datasets/actions/workflows/docs.yml)

This repository contains the sphinx source files for building the documentation
for the remote datasets on the GMT server as well as some test scripts. The test
scripts assumes that the data files have been placed on the host server.  If data
sets are still in pre-release mode make sure you set GMT_DATA_SERVER to candidate.

## Building the site

Run:

    cd scripts
    make docs

## Updating static images used by docs

Run:

    cd scripts
    bash GMT_agefig.sh
    bash GMT_earthmask.sh

## Run all test scripts

    cd scripts
    make all-tests

## License

[![Creative Commons License](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)
This work is licensed under a
[Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).
