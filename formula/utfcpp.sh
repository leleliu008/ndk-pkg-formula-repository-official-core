pkg_set summary "UTF-8 with C++ in a Portable Way"
pkg_set git.url "https://github.com/nemtrif/utfcpp.git"
pkg_set src.url "https://github.com/nemtrif/utfcpp/archive/refs/tags/v3.2.1.tar.gz"
pkg_set src.sha "8d6aa7d77ad0abb35bb6139cb9a33597ac4c5b33da6a004ae42429b8598c9605"
pkg_set license "BSL-1.0"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DUTF8_TESTS=OFF \
        -DUTF8_SAMPLES=OFF \
        -DUTF8_INSTALL=ON
}
