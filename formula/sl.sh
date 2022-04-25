pkg_set summary "Prints a steam locomotive if you type sl instead of ls"
pkg_set git.url "https://github.com/mtoyoda/sl.git"
pkg_set src.url "https://github.com/mtoyoda/sl/archive/5.02.tar.gz"
pkg_set src.sha "1e5996757f879c81f202a18ad8e982195cf51c41727d3fea4af01fdcbbb5563a"
pkg_set license "MIT"
pkg_set dep.pkg "ncurses"
pkg_set binbstd "yes"

build() {
    run rm -rf sl &&
    run $CC $CFLAGS $CPPFLAGS $LDFLAGS -lncurses -o sl sl.c &&
    run install_bins sl &&
    run install_mans sl.1
}
