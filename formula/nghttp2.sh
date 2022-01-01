package set summary "HTTP/2 C Library"
package set webpage "https://nghttp2.org"
package set git.url "https://github.com/nghttp2/nghttp2.git"
package set src.url "https://github.com/nghttp2/nghttp2/releases/download/v1.46.0/nghttp2-1.46.0.tar.gz"
package set src.sum "4b6d11c85f2638531d1327fe1ed28c1e386144e8841176c04153ed32a4878208"
package set license "MIT"
package set dep.pkg "libevent libev openssl jansson libxml2 c-ares cunit"
package set bsystem "configure"

prepare() {
    sed_in_place 's/ -lsupc++//' configure
}

build() {
    configure \
        --enable-threads \
        --enable-app \
        --enable-examples \
        --enable-hpack-tools \
        --disable-asio-lib \
        --disable-python-bindings \
        --disable-lib-only \
        --disable-werror \
        --disable-assert \
        --without-systemd \
        --without-jemalloc \
        --with-libxml2 \
        ZLIB_CFLAGS='-lz' \
        ZLIB_LIBS='-lz'
}
