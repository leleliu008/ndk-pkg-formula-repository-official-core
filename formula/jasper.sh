pkg_set summary "Library for manipulating JPEG-2000 images"
pkg_set webpage "https://ece.engr.uvic.ca/~frodo/jasper/"
pkg_set git.url "https://github.com/jasper-software/jasper.git"
pkg_set src.url "https://github.com/jasper-software/jasper/releases/download/version-3.0.4/jasper-3.0.4.tar.gz"
pkg_set src.sha "20947b088e5bb1d6189e3577f87e5cd3cc8ff5db86fb4143e09e8e144b2971f8"
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
