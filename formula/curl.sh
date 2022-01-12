package set summary "Get a file from an HTTP, HTTPS or FTP server"
package set webpage "https://curl.haxx.se"
package set git.url "https://github.com/curl/curl.git"
package set src.url "https://curl.haxx.se/download/curl-7.81.0.tar.bz2"
package set src.sum "1e7a38d7018ec060f1f16df839854f0889e94e122c4cfa5d3a37c2dc56f1e258"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "configure"

build() {
    configure \
        --with-ssl="$openssl_INSTALL_DIR" \
        --enable-optimize \
        --enable-pthreads
}
