summary "Converts a ttyrec file into gif files"
webpage "https://github.com/icholy/ttygif"
src_git "https://github.com/icholy/ttygif.git"
src_url "https://github.com/icholy/ttygif/archive/1.5.0.tar.gz"
src_sum "b5cc9108b1add88c6175e3e001ad4615a628f93f2fffcb7da9e85a9ec7f23ef6"
license "MIT"
bsystem "make"

build_in_sourced

prepare() {
    sed_in_place 's|CFLAGS += -O2 -Wall|override CFLAGS +=|' Makefile
}

build() {
    make clean
    make UNAME=Linux CC=$CC CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'"
    make install PREFIX="$ABI_INSTALL_DIR"
}
