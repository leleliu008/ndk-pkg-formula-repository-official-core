package set summary "Command-line interface for SQLite"
package set webpage "https://sqlite.org"
package set git.url "https://github.com/sqlite/sqlite.git"
package set src.url "https://sqlite.org/2021/sqlite-autoconf-3370000.tar.gz"
package set src.sum "731a4651d4d4b36fc7d21db586b2de4dd00af31fd54fb5a9a4b7f492057479f7"
package set version "3.37.0"
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
