summary "Image loading and rendering library"
webpage "https://sourceforge.net/projects/enlightenment/"
src_url "https://downloads.sourceforge.net/project/enlightenment/imlib2-src/1.7.1/imlib2-1.7.1.tar.bz2"
src_sum "033a6a639dcbc8e03f65ff05e57068e7346d50ee2f2fff304bb9095a1b2bc407"
license "Imlib2"
require "pkg-config"
depends "giflib libjpeg-turbo libpng libtiff libwebp freetype2"

build() {
    export LDFLAGS="$LDFLAGS -lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng"
    configure \
        --enable-amd64=no \
        --without-id3 \
        --without-x
}
