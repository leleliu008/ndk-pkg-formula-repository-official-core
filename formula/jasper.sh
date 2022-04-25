pkg_set summary "Library for manipulating JPEG-2000 images"
pkg_set webpage "https://ece.engr.uvic.ca/~frodo/jasper/"
pkg_set git.url "https://github.com/jasper-software/jasper.git"
pkg_set src.url "https://github.com/jasper-software/jasper/releases/download/version-2.0.33/jasper-2.0.33.tar.gz"
pkg_set src.sha "28d28290cc2eaf70c8756d391ed8bcc8ab809a895b9a67ea6e89da23a611801a"
pkg_set license "JasPer-2.0"
pkg_set dep.pkg "libjpeg-turbo"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DJAS_ENABLE_DOC=OFF \
        -DJAS_ENABLE_SHARED=ON \
        -DJAS_ENABLE_PROGRAMS=ON
}
