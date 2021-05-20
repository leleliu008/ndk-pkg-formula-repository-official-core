package set summary "Asynchronous DNS library"
package set webpage "https://c-ares.haxx.se"
package set src.url "https://c-ares.haxx.se/download/c-ares-1.16.1.tar.gz"
package set src.sum "d08312d0ecc3bd48eee0a4cc0d2137c9f194e0a28de2028928c0f6cae85f86ce"
package set bsystem "configure"

build() {
    configure \
        --enable-warnings \
        --disable-werror \
        --disable-tests \
        --disable-code-coverage \
        --disable-libgcc
}
