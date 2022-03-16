package set summary "Command-line interface for SQLite"
package set webpage "https://sqlite.org"
package set git.url "https://github.com/sqlite/sqlite.git"
package set src.url "https://sqlite.org/2022/sqlite-autoconf-3380100.tar.gz"
package set src.sum "8e3a8ceb9794d968399590d2ddf9d5c044a97dd83d38b9613364a245ec8a2fc4"
package set version "3.38.1"
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
