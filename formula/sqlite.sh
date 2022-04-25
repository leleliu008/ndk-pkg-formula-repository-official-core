pkg_set summary "C-language library and command-line tool that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine"
pkg_set webpage "https://sqlite.org"
pkg_set git.url "https://github.com/sqlite/sqlite.git"
pkg_set src.url "https://sqlite.org/2022/sqlite-autoconf-3380200.tar.gz"
pkg_set src.sha "e7974aa1430bad690a5e9f79a6ee5c8492ada8269dc675875ad0fb747d7cada4"
pkg_set version "3.38.2"
pkg_set license "blessing;;https://raw.githubusercontent.com/sqlite/sqlite/master/LICENSE.md"
pkg_set developer "D.+Richard+Hipp;;;"
pkg_set dep.pkg "readline zlib"
pkg_set bsystem "configure"

build() {
    configure \
        --enable-readline \
        --disable-tcl \
        --disable-editline \
        --disable-load-extension
}
