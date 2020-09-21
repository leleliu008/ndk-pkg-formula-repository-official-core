summary="GNU internationalization (i18n) and localization (l10n) library"
homepage="https://www.gnu.org/software/gettext"
url="https://ftp.gnu.org/gnu/gettext/gettext-0.21.tar.xz"
sha256="d20fcbb537e02dcf1383197ba05bd0734ef7bf5db06bdb241eb69b7d16b73192"
license="GPL-3.0"
dependencies="ncurses libiconv"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-included-regex \
        --with-included-gettext \
        --with-included-libxml \
        --with-included-libunistring \
        --with-libncurses-prefix="$ncurses_DIR_INSTALL_PREFIX" \
        --with-libiconv-prefix="$libiconv_DIR_INSTALL_PREFIX" \
        --disable-acl \
        --disable-rpath \
        --disable-openmp \
        --disable-csharp \
        --disable-java \
        --enable-c++ \
        --enable-static \
        --enable-shared \
        --enable-largefile \
        --enable-curses \
        --enable-threads=posix \
        --enable-libasprintf \
        --enable-namespacing \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS -L$DIR_SRC/gettext-tools/gnulib-lib/.libs/" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
