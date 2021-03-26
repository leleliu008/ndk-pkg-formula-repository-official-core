summary "Tool for building toolchains"
webpage "https://crosstool-ng.github.io"
src_url "http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.24.0.tar.xz"
src_sum "804ced838ea7fe3fac1e82f0061269de940c82b05d0de672e7d424af98f22d2d"
license "LGPL-2.1"
bsystem "configure"
require "libtoolize libtool help2man objcopy"
depends "ncurses libiconv gettext"

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
