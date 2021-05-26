package set summary "Library for command-line editing"
package set webpage "https://www.gnu.org/software/readline"
package set src.url "https://mirrors.tuna.tsinghua.edu.cn/gnu/readline/readline-8.0.tar.gz"
package set src.sum "e339f51971478d369f8a053a330a190781acb9864cf4c541060f12078948e461"
package set license "GPL-3.0-or-later"
package set bsystem "configure"
package set dep.pkg "ncurses"

build() {
    configure \
        --with-curses="$ncurses_INSTALL_DIR" \
        --enable-multibyte \
        --enable-install-examples
}
