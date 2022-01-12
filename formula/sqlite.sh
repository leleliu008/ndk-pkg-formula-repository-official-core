package set summary "Command-line interface for SQLite"
package set webpage "https://sqlite.org"
package set git.url "https://github.com/sqlite/sqlite.git"
package set src.url "https://sqlite.org/2022/sqlite-autoconf-3370200.tar.gz"
package set src.sum "4089a8d9b467537b3f246f217b84cd76e00b1d1a971fe5aca1e30e230e46b2d8"
package set version "3.37.2"
package set license "blessing"
package set dep.pkg "readline"
package set bsystem "configure"

build() {
    configure \
        --enable-readline \
        --disable-tcl \
        --disable-editline \
        --disable-load-extension
}
