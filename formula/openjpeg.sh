pkg_set summary "Library for JPEG-2000 image manipulation"
pkg_set webpage "https://www.openjpeg.org/"
pkg_set git.url "https://github.com/uclouvain/openjpeg.git"
pkg_set src.url "https://github.com/uclouvain/openjpeg/archive/v2.5.0.tar.gz"
pkg_set src.sha "0333806d6adecc6f7a91243b2b839ff4d2053823634d4f6ed7a59bc87409122a"
pkg_set license "BSD-2-Clause"
pkg_set dep.pkg "libpng lcms2"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_DOC=OFF \
        -DBUILD_CODEC=ON \
        -DBUILD_JPIP=OFF \
        -DBUILD_JPIP_SERVER=OFF \
        -DBUILD_VIEWER=OFF \
        -DBUILD_JAVA=OFF \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_STATIC_LIBS=ON \
        -DBUILD_UNIT_TESTS=OFF \
        -DBUILD_LUTS_GENERATOR=OFF \
        -DBUILD_PKGCONFIG_FILES=ON
}
