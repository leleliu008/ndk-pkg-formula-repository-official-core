package set summary "Library for command-line editing"
package set webpage "https://www.gnu.org/software/readline"
package set src.url "https://mirrors.tuna.tsinghua.edu.cn/gnu/readline/readline-8.1.tar.gz"
package set src.sum "f8ceb4ee131e3232226a17f51b164afc46cd0b9e6cef344be87c65962cb82b02"
package set license "GPL-3.0-or-later"
package set dep.pkg "ncurses"
package set bsystem "configure"

build() {
    configure \
        --with-curses="$ncurses_INSTALL_DIR" \
        --enable-multibyte \
        --enable-install-examples
}
