[![Build Status](https://github.com/daavid00/OPM-Flow_macOS/actions/workflows/pycopm.yml/badge.svg)](https://github.com/daavid00/OPM-Flow_macOS/actions/workflows/pycopm.yml)
<a href="https://www.python.org/"><img src="https://img.shields.io/badge/python-3.13-blue.svg"></a>
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# Running actions in macOS to test Python repositoires using OPM Flow

This repository builds [_OPM Flow_](https://opm-project.org/?page_id=19) from the master branches in the latest available macOS in GitHub Actions.

See [_this script_](https://github.com/daavid00/OPM-Flow_macOS/blob/main/.github/workflows/pycopm.yml) that is
run in GitHub actions. Here, [_brew_](https://brew.sh) is used to install the required dependencies:

```bash
brew install boost@1.85 cmake openblas suite-sparse
```

while [_macports_](https://www.macports.org) could be also used.

Notes:

* In August 14th 2025, boost 1.89.0 was made available, which it is not compatible with OPM Flow (yet).
Then, we install boost 1.85, and add the cmake path to the boost include folder (line 59 in [_pycopm.yml_](https://github.com/daavid00/OPM-Flow_macOS/blob/main/.github/workflows/pycopm.yml)).

The [_pycopm_](https://github.com/cssr-tools/pycopm) Python tool is used to demonstrate the succesful OPM Flow installation by running the [_tests_](https://github.com/cssr-tools/pycopm/tree/main/tests) and [_the hello world example_](https://cssr-tools.github.io/pycopm/examples.html#hello-world).
