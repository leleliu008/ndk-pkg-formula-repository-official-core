summary="Asynchronous DNS library"
homepage="https://c-ares.haxx.se"
url="https://c-ares.haxx.se/download/c-ares-1.16.1.tar.gz"
sha256="d08312d0ecc3bd48eee0a4cc0d2137c9f194e0a28de2028928c0f6cae85f86ce"

build() {
    configure \
        --enable-warnings \
        --disable-werror \
        --disable-tests \
        --disable-code-coverage \
        --disable-libgcc
}
