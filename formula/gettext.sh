package set summary "GNU internationalization (i18n) and localization (l10n) library"
package set webpage "https://www.gnu.org/software/gettext"
package set src.url "https://ftp.gnu.org/gnu/gettext/gettext-0.21.tar.xz"
package set src.sum "d20fcbb537e02dcf1383197ba05bd0734ef7bf5db06bdb241eb69b7d16b73192"
package set license "GPL-3.0"
package set bsystem "configure"
package set dep.pkg "ncurses libiconv"

build() {
    export LDFLAGS="$LDFLAGS -L$BUILD_DIR/gettext-tools/gnulib-lib/.libs/"
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
