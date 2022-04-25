pkg_set summary "GNU internationalization (i18n) and localization (l10n) library"
pkg_set webpage "https://www.gnu.org/software/gettext"
pkg_set src.url "https://ftp.gnu.org/gnu/gettext/gettext-0.21.tar.xz"
pkg_set src.sha "d20fcbb537e02dcf1383197ba05bd0734ef7bf5db06bdb241eb69b7d16b73192"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.pkg "ncurses libiconv"

build() {
    export LDFLAGS="$LDFLAGS -L$TARGET_BUILD_DIR/gettext-tools/gnulib-lib/.libs/"
    configure \
        --with-included-regex \
        --with-included-libxml \
        --with-included-gettext \
        --with-included-libunistring \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        --with-libncurses-prefix="$ncurses_INSTALL_DIR" \
        --disable-acl \
        --disable-openmp \
        --disable-csharp \
        --disable-java \
        --enable-c++ \
        --enable-curses \
        --enable-threads=posix \
        --enable-libasprintf \
        --enable-namespacing \
        --enable-nls
}
