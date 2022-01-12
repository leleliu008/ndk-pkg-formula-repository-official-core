package set summary "Converts a ttyrec file into gif files"
package set git.url "https://github.com/icholy/ttygif.git"
package set src.url "https://github.com/icholy/ttygif/archive/1.6.0.tar.gz"
package set src.sum "050b9e86f98fb790a2925cea6148f82f95808d707735b2650f3856cb6f53e0ae"
package set license "MIT"
package set bsystem "make"
package set binsrcd 'yes'

prepare() {
    sed_in_place 's|CFLAGS += -O2 -Wall|override CFLAGS +=|' Makefile
}

build() {
    makew clean
    makew UNAME=Linux CC=$CC CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'"
    makew install PREFIX="$ABI_INSTALL_DIR"
}
