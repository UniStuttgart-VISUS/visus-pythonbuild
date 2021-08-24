# pythonbuild

This module installs Python from source by downloading it from [Python.org][1]
and performing an altinstall.

## Table of Contents

1. [Description](#description)
1. [Setup – The basics of getting started with pythonbuild](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with pythonbuild](#beginning-with-pythonbuild)
1. [Usage – Configuration options and additional functionality](#usage)
1. [Limitations – OS compatibility, etc.](#limitations)
1. [Development – Guide for contributing to the module](#development)

## Description

This module downloads Python sources from the configured URL, by default from
the FTP directory on [Python.org][1], into a configured directory, be default
`/usr/local/src'. Afterwards, it configures the build and performs a
`altinstall` make.

This process will install a binary that can be invoked, for instance, as
`python3.9`.

## Setup

### Setup Requirements

The module required autoconf, gcc, make and several libraries to be installed.
These packages are automatically installed when specified in as
`$build_dependencies`.

### Beginning with pythonbuild

The `pythonbuild` class enables installation of multiple versions. The following
installs Python 3.9.6 without any build customisation:

```
class { 'pythonbuild':
    versions => {
        '3.9.6' => { }
    }
}
```

## Usage

The hash per version can be used to configure `phythonbuild::build`, most
notably you can override the full source path for the download. Furthermore, you
can change the target for make, e.g. if you want to perform a system-wide install
instead of adding an alternative version. The following specifies what would be
the default for Python 3.9.6:

```
class { 'pythonbuild':
    versions => {
        '3.9.6' => {
            override_url => 'https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz',
            configure_flags => '--enable-optimizations',
            make_target => 'altinstall'
        }
    }
}
```

## Limitations

Only distributions listed in `metadata.json` are supported.

## Development

Open a pull request on [GitHub](https://github.com/UniStuttgart-VISUS/visus-pythonbuild).

[1]: https://www.python.org/
