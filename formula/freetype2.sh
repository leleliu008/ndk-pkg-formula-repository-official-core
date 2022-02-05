package set summary "Software library to render fonts"
package set webpage "https://www.freetype.org"
package set git.url "https://gitlab.freedesktop.org/freetype/freetype.git"
package set src.url "https://downloads.sourceforge.net/project/freetype/freetype2/2.11.1/freetype-2.11.1.tar.xz"
package set src.sum "3333ae7cfda88429c97a7ae63b7d01ab398076c3b67182e960e5684050f2c5c8"
package set license "FTL"
package set dep.pkg "brotli bzip2 libpng"
package set bsystem "cmake"

build() {
    cmakew \
        -DFT_WITH_BROTLI=ON \
        -DFT_WITH_BZIP2=ON \
        -DFT_WITH_ZLIB=ON \
        -DFT_WITH_PNG=ON \
        -DFT_WITH_HARFBUZZ=OFF \
        -DCMAKE_DISABLE_FIND_PACKAGE_HarfBuzz=TRUE
}
