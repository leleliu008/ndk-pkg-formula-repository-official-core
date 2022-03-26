package set summary "Library for command-line editing"
package set webpage "https://www.gnu.org/software/readline"
package set src.url "https://ftp.gnu.org/gnu/readline/readline-8.1.2.tar.gz"
package set src.sum "7589a2381a8419e68654a47623ce7dfcb756815c8fee726b98f90bf668af7bc6"
package set license "GPL-3.0-or-later"
package set dep.pkg "ncurses"
package set bsystem "configure"

build() {
    configure \
        --with-curses="$ncurses_INSTALL_DIR" \
        --enable-multibyte \
        --enable-install-examples
}
