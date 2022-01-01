package set summary "UTF-8 with C++ in a Portable Way"
package set git.url "https://github.com/nemtrif/utfcpp.git"
package set src.url "https://github.com/nemtrif/utfcpp/archive/refs/tags/v3.2.1.tar.gz"
package set src.sum "8d6aa7d77ad0abb35bb6139cb9a33597ac4c5b33da6a004ae42429b8598c9605"
package set bsystem "cmake"

build() {
    cmakew \
        -DUTF8_TESTS=OFF \
        -DUTF8_SAMPLES=OFF \
        -DUTF8_INSTALL=ON
}
