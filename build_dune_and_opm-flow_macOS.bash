CURRENT_DIRECTORY="$PWD"

for module in common geometry grid istl
do   git clone https://gitlab.dune-project.org/core/dune-$module.git --branch v2.9.1
done
for module in common geometry grid istl
do   ./dune-common/bin/dunecontrol --only=dune-$module cmake -DCMAKE_DISABLE_FIND_PACKAGE_MPI=1
     ./dune-common/bin/dunecontrol --only=dune-$module make -j5
done

for repo in common grid simulators
do
    git clone https://github.com/OPM/opm-$repo.git
done

mkdir build

for repo in common grid
do
    mkdir build/opm-$repo
    cd build/opm-$repo
    cmake -DWITH_NDEBUG=1 -DUSE_MPI=0 -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="/opt/homebrew/opt/boost@1.85/include;$CURRENT_DIRECTORY/dune-common/build-cmake;$CURRENT_DIRECTORY/dune-grid/build-cmake;$CURRENT_DIRECTORY/dune-geometry/build-cmake;$CURRENT_DIRECTORY/dune-istl/build-cmake;$CURRENT_DIRECTORY/build/opm-common" $CURRENT_DIRECTORY/opm-$repo
    make -j5 opm$repo
    cd ../..
done

mkdir build/opm-simulators
cd build/opm-simulators
cmake -DUSE_MPI=0 -DWITH_NDEBUG=1 -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="/opt/homebrew/opt/boost@1.85/include;$CURRENT_DIRECTORY/dune-common/build-cmake;$CURRENT_DIRECTORY/dune-grid/build-cmake;$CURRENT_DIRECTORY/dune-geometry/build-cmake;$CURRENT_DIRECTORY/dune-istl/build-cmake;$CURRENT_DIRECTORY/build/opm-common;$CURRENT_DIRECTORY/build/opm-grid" $CURRENT_DIRECTORY/opm-simulators
make -j5 flow_gaswater
#make -j5 flow
cd ../..