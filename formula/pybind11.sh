package set summary "Seamless operability between C++11 and Python"
package set git.url "https://github.com/pybind/pybind11.git"
package set src.url "https://github.com/pybind/pybind11/archive/v2.9.2.tar.gz"
package set src.sum "6bd528c4dbe2276635dc787b6b1f2e5316cf6b49ee3e150264e455a0d68d19c1"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DPYBIND11_TEST=OFF \
        -DPYBIND11_INSTALL=ON \
        -DPYBIND11_NOPYTHON=ON \
        -DCMAKE_INSTALL_DATAROOTDIR="$TARGET_INSTALL_DIR/lib"
}
