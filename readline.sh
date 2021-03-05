summary "Library for command-line editing"
webpage "https://www.gnu.org/software/readline"
src_url "https://mirrors.tuna.tsinghua.edu.cn/gnu/readline/readline-8.0.tar.gz"
src_sum "e339f51971478d369f8a053a330a190781acb9864cf4c541060f12078948e461"
bsystem "configure"
depends "ncurses"

build() {
    configure \
        --with-curses="$ncurses_INSTALL_DIR" \
        --enable-multibyte \
        --enable-install-examples
}
