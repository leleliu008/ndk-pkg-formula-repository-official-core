package set summary "Software library to render fonts"
package set webpage "https://www.freetype.org"
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
        -DCMAKE_DISABLE_FIND_PACKAGE_HarfBuzz=TRUE \
        -DBROTLIDEC_INCLUDE_DIRS="$brotli_INCLUDE_DIR" \
        -DBROTLIDEC_LIBRARIES="$brotli_LIBRARY_DIR/libbrotlidec.so" \
        -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
        -DBZIP2_LIBRARIES="$bzip2_LIBRARY_DIR/libbz2.so" \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
        -DPNG_PNG_INCLUDE_DIR="$libpng_INCLUDE_DIR" \
        -DPNG_LIBRARY_RELEASE="$libpng_LIBRARY_DIR/libpng.so"
}
