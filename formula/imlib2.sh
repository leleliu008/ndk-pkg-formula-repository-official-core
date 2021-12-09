package set summary "Image loading and rendering library"
package set webpage "https://sourceforge.net/projects/enlightenment/"
package set src.url "https://downloads.sourceforge.net/project/enlightenment/imlib2-src/1.7.5/imlib2-1.7.5.tar.xz"
package set src.sum "458d8300aa7a6d4ce35351838bba5d9fdfb08844bd5b153c5938ecfe43ff360a"
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
