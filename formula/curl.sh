pkg_set summary "Get a file from an HTTP, HTTPS or FTP server"
pkg_set webpage "https://curl.haxx.se"
pkg_set src.url "https://curl.haxx.se/download/curl-7.83.1.tar.bz2"
pkg_set src.sha "f539a36fb44a8260ec5d977e4e0dbdd2eee29ed90fcedaa9bc3c9f78a113bff0"
pkg_set git.url "https://github.com/curl/curl.git"
pkg_set dep.pkg "openssl zlib"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"
pkg_set license "|COPYING|https://raw.githubusercontent.com/curl/curl/master/COPYING"
pkg_set developer "Daniel+Stenberg|daniel@haxx.se"

build() {
    configure \
        --with-ssl="$openssl_INSTALL_DIR" \
        --enable-optimize \
        --enable-pthreads
}
