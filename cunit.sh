summary="Lightweight unit testing framework for C"
homepage="https://cunit.sourceforge.io"
url="https://downloads.sourceforge.net/project/cunit/CUnit/2.1-3/CUnit-2.1-3.tar.bz2"
sha256="f5b29137f845bb08b77ec60584fdb728b4e58f1023e6f249a464efa49a40f214"
version="2.1.3"

prepare() {
    libtoolize --force --copy && \
    aclocal && \
    autoheader && \
    automake --add-missing --include-deps --copy && \
    autoconf
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --disable-debug \
        --disable-examples \
        --disable-test \
        --disable-static \
        --enable-shared \
        --enable-memtrace \
        --enable-automated \
        --enable-basic \
        --enable-console \
        --enable-curses \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
