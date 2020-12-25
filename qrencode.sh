summary "QR Code generation"
webpage "https://fukuchi.org/works/qrencode"
src_url "https://fukuchi.org/works/qrencode/qrencode-4.0.2.tar.gz"
src_sum "dbabe79c07614625d1f74d8c0ae2ee5358c4e27eab8fd8fe31f9365f821a3b1d"
depends "libpng"

build() {
    cmake \
    -DWITH_TOOLS=ON \
    -DWITH_TESTS=OFF \
    -DWITHOUT_PNG=OFF \
    -DPNG_PNG_INCLUDE_DIR="$libpng_INCLUDE_DIR" \
    -DPNG_LIBRARY_RELEASE="$libpng_LIBRARY_DIR/libpng.a" \
    -DZLIB_LIBRARY_RELEASE="$SYSTEM_LIBRARY_DIR/libz.a"
}

build2() {
    configure
}
