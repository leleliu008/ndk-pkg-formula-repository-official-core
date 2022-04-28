pkg_set summary "General-purpose lossless data-compression library"
pkg_set webpage "https://zlib.net"
pkg_set git.url "https://github.com/madler/zlib.git"
pkg_set src.url "https://zlib.net/zlib-1.2.12.tar.gz"
pkg_set src.sha "91844808532e5ce316b3c010929493c0244f3d37593afd6de04f71821d5136d9"
pkg_set license "Zlib"
pkg_set bsystem "cmake"
pkg_set developer "Jean-loup+Gailly|jloup@gailly.net Mark+Adler|madler@alumni.caltech.edu"

prepare() {
    sed_in_place 's|/share/pkgconfig|/lib/pkgconfig|' CMakeLists.txt
}
