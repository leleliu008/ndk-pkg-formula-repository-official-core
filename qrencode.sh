package set summary "QR Code generation"
package set webpage "https://fukuchi.org/works/qrencode"
package set src.url "https://fukuchi.org/works/qrencode/qrencode-4.0.2.tar.gz"
package set src.sum "dbabe79c07614625d1f74d8c0ae2ee5358c4e27eab8fd8fe31f9365f821a3b1d"
package set bsystem "cmake"
package set dep.pkg "libpng"

build() {
    cmakew \
        -DWITH_TOOLS=ON \
        -DWITH_TESTS=OFF \
        -DWITHOUT_PNG=OFF \
        -DPNG_PNG_INCLUDE_DIR="$libpng_INCLUDE_DIR" \
        -DPNG_LIBRARY_RELEASE="$libpng_LIBRARY_DIR/libpng.so" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so"
}
