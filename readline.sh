summary="Library for command-line editing"
homepage="https://www.gnu.org/software/readline"
url="https://mirrors.tuna.tsinghua.edu.cn/gnu/readline/readline-8.0.tar.gz"
sha256="e339f51971478d369f8a053a330a190781acb9864cf4c541060f12078948e461"
dependencies="ncurses"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-curses="$ncurses_DIR_INSTALL_PREFIX" \
        --enable-static \
        --enable-shared \
        --enable-multibyte \
        --enable-largefile \
        --enable-install-examples \
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
