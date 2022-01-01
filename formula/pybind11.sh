package set summary "Seamless operability between C++11 and Python"
package set git.url "https://github.com/pybind/pybind11.git"
package set src.url "https://github.com/pybind/pybind11/archive/v2.9.0.tar.gz"
package set src.sum "057fb68dafd972bc13afb855f3b0d8cf0fa1a78ef053e815d9af79be7ff567cb"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DPYBIND11_TEST=OFF \
        -DPYBIND11_INSTALL=ON \
        -DPYBIND11_NOPYTHON=ON \
        -DCMAKE_INSTALL_DATAROOTDIR="$ABI_LIBRARY_DIR"
}
