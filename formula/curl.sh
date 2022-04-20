package set summary "Get a file from an HTTP, HTTPS or FTP server"
package set webpage "https://curl.haxx.se"
package set git.url "https://github.com/curl/curl.git"
package set src.url "https://curl.haxx.se/download/curl-7.82.0.tar.bz2"
package set src.sum "46d9a0400a33408fd992770b04a44a7434b3036f2e8089ac28b57573d59d371f"
package set license ";COPYING;https://raw.githubusercontent.com/curl/curl/master/COPYING"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "configure"

build() {
    configure \
        --with-ssl="$openssl_INSTALL_DIR" \
        --enable-optimize \
        --enable-pthreads
}
