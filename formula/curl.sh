package set summary "Get a file from an HTTP, HTTPS or FTP server"
package set webpage "https://curl.haxx.se"
package set src.git "https://github.com/curl/curl.git"
package set src.url "https://curl.haxx.se/download/curl-7.80.0.tar.xz"
package set src.sum "a132bd93188b938771135ac7c1f3ac1d3ce507c1fcbef8c471397639214ae2ab"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "configure"

build() {
    configure \
        --with-ssl="$openssl_INSTALL_DIR" \
        --enable-optimize \
        --enable-pthreads
}
