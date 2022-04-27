pkg_set summary "Library for command-line editing"
pkg_set webpage "https://www.gnu.org/software/readline"
pkg_set git.url "https://git.savannah.gnu.org/git/readline.git"
pkg_set src.url "https://ftp.gnu.org/gnu/readline/readline-8.1.2.tar.gz"
pkg_set src.sha "7589a2381a8419e68654a47623ce7dfcb756815c8fee726b98f90bf668af7bc6"
pkg_set license "GPL-3.0-or-later|COPYING|https://git.savannah.gnu.org/cgit/readline.git/plain/COPYING"
pkg_set dep.pkg "ncurses"
pkg_set bsystem "configure"

build() {
    configure \
        --with-curses="$ncurses_INSTALL_DIR" \
        --enable-multibyte \
        --enable-install-examples
}
