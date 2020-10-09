summary="Text-based web browser"
homepage="http://lynx.browser.org"
url="https://invisible-mirror.net/archives/lynx/tarballs/lynx2.8.9rel.1.tar.bz2"
version="2.8.9rel.1"
sha256="387f193d7792f9cfada14c60b0e5c0bff18f227d9257a39483e14fa1aaf79595"
license="GPL-2.0"
dependencies="ncurses bzip2 openssl"

prepare() {
    sed_in_place 's/#define socklen_t int/#define XXXXXXX/' WWW/Library/Implementation/www_tcp.h
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-echo \
        --enable-warnings \
        --enable-largefile \
        --enable-ipv6 \
        --enable-ftp \
        --disable-trace \
        --disable-debug \
        --disable-nls \
        --without-x \
        --with-screen=ncurses \
        --with-curses-dir="$ncurses_DIR_INSTALL_PREFIX" \
        --with-zlib \
        --with-bzlib \
        --with-ssl \
        --without-gnutls \
        --without-socks \
        --without-socks5 \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make &&
    make install 
}
