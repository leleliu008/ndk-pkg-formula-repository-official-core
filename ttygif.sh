package set summary "Converts a ttyrec file into gif files"
package set src.git "https://github.com/icholy/ttygif.git"
package set src.url "https://github.com/icholy/ttygif/archive/1.5.0.tar.gz"
package set src.sum "b5cc9108b1add88c6175e3e001ad4615a628f93f2fffcb7da9e85a9ec7f23ef6"
package set license "MIT"
package set bsystem "make"

package set binsrcd true

prepare() {
    sed_in_place 's|CFLAGS += -O2 -Wall|override CFLAGS +=|' Makefile
}

build() {
    makew clean
    makew UNAME=Linux CC=$CC CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'"
    makew install PREFIX="$ABI_INSTALL_DIR"
}
