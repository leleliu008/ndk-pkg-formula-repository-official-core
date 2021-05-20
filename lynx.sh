package set summary "Text-based web browser"
package set webpage "http://lynx.browser.org"
package set version "2.8.9rel.1"
package set src.url "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/l/lynx/lynx_${PACKAGE_VERSION}.orig.tar.bz2"
package set src.sum "387f193d7792f9cfada14c60b0e5c0bff18f227d9257a39483e14fa1aaf79595"
package set license "GPL-2.0"
package set bsystem "configure"
package set dep.pkg "ncurses bzip2 openssl"

prepare() {
    sed_in_place 's/#define socklen_t int/#define XXXXXXX/' WWW/Library/Implementation/www_tcp.h
}

build() {
    configure \
        --enable-echo \
        --enable-warnings \
        --enable-ipv6 \
        --enable-ftp \
        --disable-trace \
        --with-screen=ncurses \
        --with-curses-dir="$ncurses_INSTALL_DIR" \
        --with-zlib \
        --with-bzlib \
        --with-ssl \
        --without-x \
        --without-gnutls \
        --without-socks \
        --without-socks5
}
