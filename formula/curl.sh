pkg_set summary "Get a file from an HTTP, HTTPS or FTP server"
pkg_set webpage "https://curl.haxx.se"
pkg_set git.url "https://github.com/curl/curl.git"
pkg_set src.url "https://curl.haxx.se/download/curl-7.83.0.tar.bz2"
pkg_set src.sha "247c7ec7521c4258e65634e529270d214fe32969971cccb72845e7aa46831f96"
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
