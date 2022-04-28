pkg_set summary "Get a file from an HTTP, HTTPS or FTP server"
pkg_set webpage "https://curl.haxx.se"
pkg_set git.url "https://github.com/curl/curl.git"
pkg_set src.url "https://curl.haxx.se/download/curl-7.82.0.tar.bz2"
pkg_set src.sha "46d9a0400a33408fd992770b04a44a7434b3036f2e8089ac28b57573d59d371f"
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
