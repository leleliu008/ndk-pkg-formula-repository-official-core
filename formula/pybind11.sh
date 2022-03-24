package set summary "Seamless operability between C++11 and Python"
package set git.url "https://github.com/pybind/pybind11.git"
package set src.url "https://github.com/pybind/pybind11/archive/v2.9.1.tar.gz"
package set src.sum "c6160321dc98e6e1184cc791fbeadd2907bb4a0ce0e447f2ea4ff8ab56550913"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DPYBIND11_TEST=OFF \
        -DPYBIND11_INSTALL=ON \
        -DPYBIND11_NOPYTHON=ON \
        -DCMAKE_INSTALL_DATAROOTDIR="$TARGET_INSTALL_DIR/lib"
}
