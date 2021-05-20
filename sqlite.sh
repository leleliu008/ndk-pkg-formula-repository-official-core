package set summary "Command-line interface for SQLite"
package set webpage "https://sqlite.org"
package set src.url "https://sqlite.org/2020/sqlite-autoconf-3320100.tar.gz"
package set src.sum "486748abfb16abd8af664e3a5f03b228e5f124682b0c942e157644bf6fff7d10"
package set version "3.32.1"
package set bsystem "configure"

build() {
    configure \
        --disable-tcl \
        --disable-editline \
        --disable-readline \
        --disable-load-extension
}
