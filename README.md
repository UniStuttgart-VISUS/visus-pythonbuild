# pythonbuild

This module installs Python from source by downloading it from [Python.org][1]
and performing an altinstall.

## Table of Contents

1. [Description](#description)
1. [Setup – The basics of getting started with pythonbuild](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with pythonbuild](#beginning-with-pythonbuild)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module downloads Python sources from the configured URL, by default from
the FTP directory on [Python.org][1], into a configured directory, be default
`/usr/local/src'. Afterwards, it configures the build and performs a
`altinstall` make.

This process will install a binary that can be invoked, for instance, as
`python3.9`.

## Setup

### Setup Requirements **OPTIONAL**

TODO 

If your module requires anything extra before setting up (pluginsync enabled,
another module, etc.), mention it here.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you might want to include an additional "Upgrading" section here.

### Beginning with pythonbuild

TODO

The very basic steps needed for a user to get the module up and running. This
can include setup steps, if necessary, or it can be an example of the most basic
use of the module.

## Usage

TODO:

Include usage examples for common use cases in the **Usage** section. Show your
users how to use your module to solve problems, and be sure to include code
examples. Include three to five examples of the most important or common tasks a
user can accomplish with your module. Show users how to accomplish more complex
tasks that involve different types, classes, and functions working in tandem.

## Limitations

Only distributions listed in `metadata.json` are supported.

## Development

Open a pull request on [GitHub](https://github.com/UniStuttgart-VISUS/visus-pythonbuild).

[1]: https://www.python.org/
