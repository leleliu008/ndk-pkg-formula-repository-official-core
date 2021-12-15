package set summary "Prints a steam locomotive if you type sl instead of ls"
package set src.git "https://github.com/mtoyoda/sl.git"
package set src.url "https://github.com/mtoyoda/sl/archive/5.02.tar.gz"
package set src.sum "1e5996757f879c81f202a18ad8e982195cf51c41727d3fea4af01fdcbbb5563a"
package set license "MIT"
package set dep.pkg "ncurses"
package set binsrcd "yes"

build() {
    run rm -rf sl &&
    run $CC $CFLAGS $CPPFLAGS $LDFLAGS -lncurses -o sl sl.c &&
    run install_bins sl &&
    run install_mans sl.1
}
