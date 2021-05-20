package set summary "Get a file from an HTTP, HTTPS or FTP server"
package set webpage "https://curl.haxx.se"
package set src.url "https://curl.haxx.se/download/curl-7.70.0.tar.xz"
package set src.sum "032f43f2674008c761af19bf536374128c16241fb234699a55f9fb603fcfbae7"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "openssl"

build() {
    configure \
        --with-ssl="$openssl_INSTALL_DIR" \
        --enable-optimize \
        --enable-pthreads
}
