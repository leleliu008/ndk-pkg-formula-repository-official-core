summary  "Command-line interface for SQLite"
homepage "https://sqlite.org"
url      "https://sqlite.org/2020/sqlite-autoconf-3320100.tar.gz"
version  "3.32.1"
sha256   "486748abfb16abd8af664e3a5f03b228e5f124682b0c942e157644bf6fff7d10"

build() {
    configure \
        --disable-tcl \
        --disable-editline \
        --disable-readline \
        --disable-load-extension
}
