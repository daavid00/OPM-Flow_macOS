[![Build Status](https://github.com/daavid00/OPM-Flow_macOS/actions/workflows/pycopm.yml/badge.svg)](https://github.com/daavid00/OPM-Flow_macOS/actions/workflows/pycopm.yml)
<a href="https://www.python.org/"><img src="https://img.shields.io/badge/python-3.12-blue.svg"></a>
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# Running actions in macOS to test Python repositoires using OPM Flow

This repository builds OPM Flow from the master branches in the latest available macOS in GitHub Actions.

See [_this script_](https://github.com/daavid00/OPM-Flow_macOS/blob/main/.github/workflows/pycopm.yml) that is
run in GitHub actions for the installed dependencies.

```bash
brew install boost@1.85 cmake openblas suite-sparse
```

Notes:

* Last month (August 14th, 2025) boost 1.89.0 was made available, which it is not compatible with OPM Flow (yet).
Then, we install boost 1.85, and add the cmake path to the boost include folder (lines 22 and 29 in [_build_dune_and_opm-flow_macOS.bash_](https://github.com/daavid00/OPM-Flow_macOS/blob/main/build_dune_and_opm-flow_macOS.bash)).

* Uncomment [_this line _](https://github.com/daavid00/OPM-Flow_macOS/blob/main/build_dune_and_opm-flow_macOS.bash#L31) to build OPM Flow (Git Actions is kinda slow, that is why we only build the sub-simulator flow_gaswater in the CI).