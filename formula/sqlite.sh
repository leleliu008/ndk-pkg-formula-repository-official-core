package set summary "Command-line interface for SQLite"
package set webpage "https://sqlite.org"
package set git.url "https://github.com/sqlite/sqlite.git"
package set src.url "https://sqlite.org/2022/sqlite-autoconf-3380200.tar.gz"
package set src.sum "e7974aa1430bad690a5e9f79a6ee5c8492ada8269dc675875ad0fb747d7cada4"
package set version "3.38.2"
package set license "blessing;;https://raw.githubusercontent.com/sqlite/sqlite/master/LICENSE.md"
package set dep.pkg "readline zlib"
package set bsystem "configure"

build() {
    configure \
        --enable-readline \
        --disable-tcl \
        --disable-editline \
        --disable-load-extension
}
