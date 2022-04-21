package set summary "Double-Array Trie Library"
package set webpage "https://linux.thai.net/~thep/datrie/datrie.html"
package set git.url "https://github.com/tlwg/libdatrie.git"
package set src.url "https://github.com/tlwg/libdatrie/releases/download/v0.2.13/libdatrie-0.2.13.tar.xz"
package set src.sum "12231bb2be2581a7f0fb9904092d24b0ed2a271a16835071ed97bed65267f4be"
package set license "LGPL-2.1-or-later;COPYING;https://raw.githubusercontent.com/tlwg/libdatrie/master/COPYING"
package set dep.pkg "libiconv"
package set bsystem "configure"
package set ldflags "-lcharset"

build0() {
    sed_in_place '/$(LN_S) trietool/d' "$PACKAGE_BSCRIPT_DIR/tools/Makefile.in" &&
    configure
}
