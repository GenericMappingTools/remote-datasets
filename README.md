# Documentation for GMT remote datasets

[![Docs](https://github.com/GenericMappingTools/remote-datasets/actions/workflows/docs.yml/badge.svg)](https://github.com/GenericMappingTools/remote-datasets/actions/workflows/docs.yml)

This repository contains the sphinx source files for building the documentation
for the remote datasets on the GMT server.

## Building the site

Run:

    cd docs
    make html

## Updating static images

Run:

    cd scripts
    bash GMT_agefig.sh
    bash GMT_earthmask.sh

## License

[![Creative Commons License](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)
This work is licensed under a
[Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).
