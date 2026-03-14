[![Build Status](https://github.com/daavid00/OPM-Flow_macOS/actions/workflows/ci_pycopm_macos.yml/badge.svg)](https://github.com/daavid00/OPM-Flow_macOS/actions/workflows/ci_pycopm_macos.yml)
<a href="https://www.python.org/"><img src="https://img.shields.io/badge/python-3.13-blue.svg"></a>
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# Running actions in macOS to test Python repositoires using OPM Flow

This repository builds [_OPM Flow_](https://opm-project.org/?page_id=19) from the master branches with support for mpirun in the latest available macOS in GitHub Actions, showing the status and details of the build in the [_Actions_](https://github.com/daavid00/OPM-Flow_macOS/actions).

See [_this script_](https://github.com/daavid00/OPM-Flow_macOS/blob/main/.github/workflows/ci_pycopm_macos.yml) that is
run in GitHub actions. Here, [_brew_](https://brew.sh) is used to install the required dependencies:

```bash
brew install boost openblas suite-sparse cmake open-mpi metis cjson zlib gfortran gcc fmt llvm@20
```

while [_macports_](https://www.macports.org) could be also used to install the above dependencies instead of brew.

The [_pycopm_](https://github.com/cssr-tools/pycopm) Python tool is used to demonstrate the succesful OPM Flow installation by running the [_tests_](https://github.com/cssr-tools/pycopm/tree/main/tests) and [_the hello world example_](https://cssr-tools.github.io/pycopm/examples.html#hello-world).

You can check if the installation of OPM Flow succeded by typing in the terminal **flow --help**.

## Tip

To install the 2026.02 release instead of building all dune modules, trilinos, and OPM Flow from the source code as it is done in [_this script_](https://github.com/daavid00/OPM-Flow_macOS/blob/main/.github/workflows/ci_pycopm_macos.yml), this can be achieved by simply typing:
```bash
brew install cssr-tools/opm/opm-simulators
```
