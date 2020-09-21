summary="GNU awk utility"
homepage="https://www.gnu.org/software/gawk"
url="https://ftp.gnu.org/gnu/gawk/gawk-5.1.0.tar.xz"
sha256="cf5fea4ac5665fd5171af4716baab2effc76306a9572988d5ba1078f196382bd"
license="GPL-3.0"
dependencies="readline mpfr"

#char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-readline="$readline_DIR_INSTALL_PREFIX" \
        --with-mpfr="$mpfr_DIR_INSTALL_PREFIX" \
        --enable-extensions \
        --enable-lint \
        --enable-mpfr \
        --enable-largefile \
        --disable-nls \
        --disable-rpath \
        --disable-builtin-intdiv0 \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
