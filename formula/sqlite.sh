package set summary "Command-line interface for SQLite"
package set webpage "https://sqlite.org"
package set git.url "https://github.com/sqlite/sqlite.git"
package set src.url "https://sqlite.org/2022/sqlite-autoconf-3380000.tar.gz"
package set src.sum "1c76e25dc63d9f3935e0f406aec520a33ee77cf54ea5147dffe1fae8369eff68"
package set version "3.38.0"
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
