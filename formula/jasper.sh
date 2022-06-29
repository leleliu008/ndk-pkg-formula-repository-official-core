pkg_set summary "Library for manipulating JPEG-2000 images"
pkg_set webpage "https://ece.engr.uvic.ca/~frodo/jasper/"
pkg_set git.url "https://github.com/jasper-software/jasper.git"
pkg_set src.url "https://github.com/jasper-software/jasper/releases/download/version-3.0.5/jasper-3.0.5.tar.gz"
pkg_set src.sha "3e600d98f41d3b08124bd24c558ed0c171fe5fd705fa90d56baf2b814c58483a"
pkg_set license "JasPer-2.0"
pkg_set dep.pkg "libjpeg-turbo"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DJAS_ENABLE_DOC=OFF \
        -DJAS_ENABLE_SHARED=ON \
        -DJAS_ENABLE_PROGRAMS=ON \
        -DJAS_STDC_VERSION=$("$CC" -E -dM - < /dev/null | sed -n '/__STDC_VERSION__/p' | cut -d ' ' -f3)
}
