pkg_set summary "Image loading and rendering library"
pkg_set webpage "https://sourceforge.net/projects/enlightenment/"
pkg_set src.url "https://downloads.sourceforge.net/project/enlightenment/imlib2-src/1.7.5/imlib2-1.7.5.tar.xz"
pkg_set src.sha "458d8300aa7a6d4ce35351838bba5d9fdfb08844bd5b153c5938ecfe43ff360a"
pkg_set license "Imlib2"
pkg_set bsystem "configure"
pkg_set dep.cmd "pkg-config"
pkg_set dep.pkg "giflib libjpeg-turbo libpng libtiff libwebp freetype2"
pkg_set ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng"

build() {
    configure \
        --enable-amd64=no \
        --without-id3 \
        --without-x
}
