package set summary "Tool for building toolchains"
package set webpage "https://crosstool-ng.github.io"
package set src.url "http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.24.0.tar.xz"
package set src.sum "804ced838ea7fe3fac1e82f0061269de940c82b05d0de672e7d424af98f22d2d"
package set license "LGPL-2.1"
package set bsystem "configure"
package set dep.cmd "libtoolize libtool help2man objcopy"
package set dep.pkg "ncurses libiconv gettext"

build() {
    export LDFLAGS="$LDFLAGS $gettext_LIBRARY_DIR/libintl.so $libiconv_LIBRARY_DIR/libiconv.so"
    configure \
        --with-bash-completion \
        --with-ncurses \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        --with-libintl-prefix="$gettext_INSTALL_DIR" \
        CURSES_LIBS="$ncurses_LIBRARY_DIR/libncurses.so" \
        PANEL_LIBS="$ncurses_LIBRARY_DIR/libpanel.so" \
        MENU_LIBS="$ncurses_LIBRARY_DIR/libmenu.so" \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes
}
