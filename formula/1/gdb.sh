package set summary "GNU debugger"
package set webpage "https://www.gnu.org/software/gdb/"
package set git.url "https://sourceware.org/git/binutils-gdb.git"
package set src.url "https://ftp.gnu.org/gnu/gdb/gdb-11.2.tar.xz"
package set src.sum "1497c36a71881b8671a9a84a0ee40faab788ca30d7ba19d8463c3cc787152e32"
package set license "GPL-3.0-or-later"
package set dep.pkg "ncurses xz gmp"
package set dep.cmd "makeinfo"
package set bsystem "configure"

build() {
    configure \
        -with-lzma \
        --enable-targets=all \
        --disable-binutils
}
