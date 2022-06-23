pkg_set summary "Image loading and rendering library"
pkg_set webpage "https://sourceforge.net/projects/enlightenment/"
pkg_set src.url "https://downloads.sourceforge.net/project/enlightenment/imlib2-src/1.9.0/imlib2-1.9.0.tar.xz"
pkg_set src.sha "5ac9e8ca7c6700919fe72749ad7243c42de4b22823c81769a1bf8e480e14c650"
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
