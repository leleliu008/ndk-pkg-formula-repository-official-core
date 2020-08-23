summary="Low-level cryptographic library"
homepage="https://www.lysator.liu.se/~nisse/nettle"
url="https://ftp.gnu.org/gnu/nettle/nettle-3.6.tar.gz"
sha256="d24c0d0f2abffbc8f4f34dcf114b0f131ec3774895f3555922fe2f40f3d5e3f1"
dependencies="gmp"

build() {
    [ -f Makefile ] && make distclean
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-include-path="$gmp_DIR_INCLUDE" \
        --with-lib-path="$gmp_DIR_LIB" \
        --disable-fat \
        --disable-gcov \
        --disable-openssl \
        --disable-mini-gmp \
        --disable-static \
        --enable-shared \
        --enable-assembler \
        --enable-documentation \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
