package set summary "Get a file from an HTTP, HTTPS or FTP server"
package set webpage "https://curl.haxx.se"
package set src.git "https://github.com/curl/curl.git"
#package set src.url "https://curl.haxx.se/download/curl-7.79.1.tar.xz"
package set src.url "dir:///data/data/com.termux/files/home/curl-7.79.1"
package set src.sum "0606f74b1182ab732a17c11613cbbaf7084f2e6cca432642d0e3ad7c224c3689"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "openssl"

build() {
    configure \
        --with-ssl="$openssl_INSTALL_DIR" \
        --enable-optimize \
        --enable-pthreads
}
