pkg_set summary "Get a file from an HTTP, HTTPS or FTP server"
pkg_set webpage "https://curl.haxx.se"
pkg_set src.url "https://curl.haxx.se/download/curl-7.84.0.tar.bz2"
pkg_set src.sha "702fb26e73190a3bd77071aa146f507b9817cc4dfce218d2ab87f00cd3bc059d"
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
