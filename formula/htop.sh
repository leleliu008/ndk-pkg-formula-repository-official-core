pkg_set summary "Improved top (interactive process viewer)"
pkg_set webpage "https://htop.dev"
pkg_set git.url "https://github.com/htop-dev/htop.git"
pkg_set src.url "https://github.com/htop-dev/htop/archive/3.2.1.tar.gz"
pkg_set src.sha "b5ffac1949a8daaabcffa659c0964360b5008782aae4dfa7702d2323cfb4f438"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "ncurses libstrchrnul liblanginfo"
pkg_set bsystem "autogen"

build() {
    configure --disable-static --enable-unicode LIBS=$ncurses_LIBRARY_DIR/libncursesw.a
}
