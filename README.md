[![Build Status](https://github.com/daavid00/OPM-Flow_macOS/actions/workflows/ci_pycopm_macos.yml/badge.svg)](https://github.com/daavid00/OPM-Flow_macOS/actions/workflows/ci_pycopm_macos.yml)
<a href="https://www.python.org/"><img src="https://img.shields.io/badge/python-3.13-blue.svg"></a>
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# Running actions in macOS to test Python repositoires using OPM Flow

This repository builds [_OPM Flow_](https://opm-project.org/?page_id=19) from the master branches in the latest available macOS in GitHub Actions,
showing the status and details of the build in the [_Actions_](https://github.com/daavid00/OPM-Flow_macOS/actions).

See [_this script_](https://github.com/daavid00/OPM-Flow_macOS/blob/main/.github/workflows/ci_pycopm_macos.yml) that is
run in GitHub actions. Here, [_brew_](https://brew.sh) is used to install the required dependencies:

```bash
brew install boost@1.85 cmake openblas suite-sparse
```

while [_macports_](https://www.macports.org) could be also used to install the above dependencies instead of brew.

Notes:

* In August 14th 2025, boost 1.89.0 was made available, which it is not compatible with OPM Flow (yet).
Then, we install boost 1.85, and add the cmake path to the boost include folder (line 59 in [_ci_pycopm_macos.yml_](https://github.com/daavid00/OPM-Flow_macOS/blob/main/.github/workflows/ci_pycopm_macos.yml#L59)).

The [_pycopm_](https://github.com/cssr-tools/pycopm) Python tool is used to demonstrate the succesful OPM Flow installation by running the [_tests_](https://github.com/cssr-tools/pycopm/tree/main/tests) and [_the hello world example_](https://cssr-tools.github.io/pycopm/examples.html#hello-world).
