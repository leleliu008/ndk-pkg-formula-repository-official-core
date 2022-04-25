pkg_set summary "Converts a ttyrec file into gif files"
pkg_set git.url "https://github.com/icholy/ttygif.git"
pkg_set src.url "https://github.com/icholy/ttygif/archive/1.6.0.tar.gz"
pkg_set src.sha "050b9e86f98fb790a2925cea6148f82f95808d707735b2650f3856cb6f53e0ae"
pkg_set license "MIT"
pkg_set bsystem "make"
pkg_set binbstd 'yes'

prepare() {
    sed_in_place 's|CFLAGS += -O2 -Wall|override CFLAGS +=|' Makefile
}

build() {
    makew clean
    makew UNAME=Linux CC=$CC CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'"
    makew install PREFIX="$TARGET_INSTALL_DIR"
}
