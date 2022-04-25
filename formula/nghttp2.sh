pkg_set summary "HTTP/2 C Library"
pkg_set webpage "https://nghttp2.org"
pkg_set git.url "https://github.com/nghttp2/nghttp2.git"
pkg_set src.url "https://github.com/nghttp2/nghttp2/releases/download/v1.47.0/nghttp2-1.47.0.tar.gz"
pkg_set src.sha "62f50f0e9fc479e48b34e1526df8dd2e94136de4c426b7680048181606832b7c"
pkg_set license "MIT"
pkg_set dep.pkg "libevent libev openssl jansson libxml2 c-ares cunit"
pkg_set bsystem "configure"

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
