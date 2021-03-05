summary "Command-line interface for SQLite"
webpage "https://sqlite.org"
src_url "https://sqlite.org/2020/sqlite-autoconf-3320100.tar.gz"
src_sum "486748abfb16abd8af664e3a5f03b228e5f124682b0c942e157644bf6fff7d10"
version "3.32.1"
bsystem "configure"

build() {
    configure \
        --disable-tcl \
        --disable-editline \
        --disable-readline \
        --disable-load-extension
}
