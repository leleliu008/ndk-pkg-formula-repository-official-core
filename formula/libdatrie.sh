pkg_set summary "Double-Array Trie Library"
pkg_set webpage "https://linux.thai.net/~thep/datrie/datrie.html"
pkg_set git.url "https://github.com/tlwg/libdatrie.git"
pkg_set src.url "https://github.com/tlwg/libdatrie/releases/download/v0.2.13/libdatrie-0.2.13.tar.xz"
pkg_set src.sha "12231bb2be2581a7f0fb9904092d24b0ed2a271a16835071ed97bed65267f4be"
pkg_set license "LGPL-2.1-or-later|COPYING|https://raw.githubusercontent.com/tlwg/libdatrie/master/COPYING"
pkg_set dep.pkg "libiconv"
pkg_set bsystem "configure"
pkg_set ldflags "-lcharset"

build0() {
    sed_in_place '/$(LN_S) trietool/d' "$PACKAGE_BSCRIPT_DIR/tools/Makefile.in" &&
    configure
}
