package set summary "Seamless operability between C++11 and Python"
package set src.git "https://github.com/pybind/pybind11.git"
package set src.url "https://github.com/pybind/pybind11/archive/v2.8.1.tar.gz"
package set src.sum "f1bcc07caa568eb312411dde5308b1e250bd0e1bc020fae855bf9f43209940cc"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DPYBIND11_TEST=OFF \
        -DPYBIND11_INSTALL=ON \
        -DPYBIND11_NOPYTHON=ON \
        -DCMAKE_INSTALL_DATAROOTDIR="$ABI_LIBRARY_DIR"
}
