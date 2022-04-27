pkg_set summary "implements the zlib (RFC 1950) and Deflate (RFC 1951) compressed data format specification standards."
pkg_set git.url "https://github.com/richgel999/miniz.git"
pkg_set src.url "https://github.com/richgel999/miniz/archive/refs/tags/2.2.0.tar.gz"
pkg_set src.sha "bd1136d0a1554520dcb527a239655777148d90fd2d51cf02c36540afc552e6ec"
pkg_set license "|LICENSE|https://raw.githubusercontent.com/richgel999/miniz/master/LICENSE"
pkg_set bsystem "cmake"

prepare() {
    sed_in_place 's|${CMAKE_INSTALL_DATADIR}/pkgconfig|${CMAKE_INSTALL_LIBDIR}/pkgconfig|' CMakeLists.txt
}

build() {
    cmakew -DBUILD_EXAMPLES=OFF
}
