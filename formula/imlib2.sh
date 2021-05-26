package set summary "Image loading and rendering library"
package set webpage "https://sourceforge.net/projects/enlightenment/"
package set src.url "https://downloads.sourceforge.net/project/enlightenment/imlib2-src/1.7.1/imlib2-1.7.1.tar.bz2"
package set src.sum "033a6a639dcbc8e03f65ff05e57068e7346d50ee2f2fff304bb9095a1b2bc407"
package set license "Imlib2"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "giflib libjpeg-turbo libpng libtiff libwebp freetype2"
package set ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng"

build() {
    configure \
        --enable-amd64=no \
        --without-id3 \
        --without-x
}
