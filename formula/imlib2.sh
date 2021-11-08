package set summary "Image loading and rendering library"
package set webpage "https://sourceforge.net/projects/enlightenment/"
package set src.url "https://downloads.sourceforge.net/project/enlightenment/imlib2-src/1.7.4/imlib2-1.7.4.tar.bz2"
package set src.sum "8371f71fe4e40dd5b189150fa264d88f046dd45061c5fad1260347c205d3992d"
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
