pkg_set summary "GNU debugger"
pkg_set webpage "https://www.gnu.org/software/gdb/"
pkg_set git.url "https://sourceware.org/git/binutils-gdb.git"
pkg_set src.url "https://ftp.gnu.org/gnu/gdb/gdb-11.2.tar.xz"
pkg_set src.sha "1497c36a71881b8671a9a84a0ee40faab788ca30d7ba19d8463c3cc787152e32"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "ncurses xz gmp"
pkg_set dep.cmd "makeinfo"
pkg_set bsystem "configure"

build() {
    configure \
        -with-lzma \
        --enable-targets=all \
        --disable-binutils
}
