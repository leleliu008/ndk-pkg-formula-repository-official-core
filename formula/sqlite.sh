pkg_set summary "C-language library and command-line tool that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine"
pkg_set webpage "https://sqlite.org"
pkg_set git.url "https://github.com/sqlite/sqlite.git"
pkg_set src.url "https://sqlite.org/2022/sqlite-autoconf-3380400.tar.gz"
pkg_set src.sha "1935751066c2fd447404caa78cfb8b2b701fad3f6b1cf40b3d658440f6cc7563"
pkg_set version "3.38.4"
pkg_set dep.pkg "readline zlib"
pkg_set bsystem "configure"
pkg_set license "blessing||https://raw.githubusercontent.com/sqlite/sqlite/master/LICENSE.md"
pkg_set developer "D.+Richard+Hipp"

build() {
    configure \
        --enable-readline \
        --disable-tcl \
        --disable-editline \
        --disable-load-extension
}
