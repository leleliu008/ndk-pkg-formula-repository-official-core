summary="Library for command-line editing"
homepage="https://www.gnu.org/software/readline"
url="https://mirrors.tuna.tsinghua.edu.cn/gnu/readline/readline-8.0.tar.gz"
sha256="e339f51971478d369f8a053a330a190781acb9864cf4c541060f12078948e461"
dependencies="ncurses"

build() {
    configure \
        --with-curses="$ncurses_INSTALL_DIR" \
        --enable-multibyte \
        --enable-install-examples
}
