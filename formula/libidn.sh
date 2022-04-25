pkg_set summary "International domain name library"
pkg_set webpage "https://www.gnu.org/software/libidn/"
pkg_set src.url "https://ftp.gnu.org/gnu/libidn/libidn-1.38.tar.gz"
pkg_set src.sha "de00b840f757cd3bb14dd9a20d5936473235ddcba06d4bc2da804654b8bbf0f6"
pkg_set license "GPL-2.0-or-later LGPL-3.0-or-later"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

build() {
    configure \
        --disable-valgrind-tests \
        --enable-gcc-warnings \
        --enable-doc
}
