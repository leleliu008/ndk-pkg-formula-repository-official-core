summary="International domain name library (IDNA2008, Punycode and TR46)"
homepage="https://www.gnu.org/software/libidn/#libidn2"
url="https://ftp.gnu.org/gnu/libidn/libidn2-2.3.0.tar.gz"
sha256="e1cb1db3d2e249a6a3eb6f0946777c2e892d5c5dc7bd91c74394fc3a01cab8b5"
dependencies="libiconv libunistring"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-libunistring-prefix="$libunistring_DIR_INSTALL_PREFIX" \
        --disable-rpath \
        --disable-nls \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --disable-static \
        --enable-shared \
        --enable-doc \
        --enable-gcc-warnings \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS -liconv" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
