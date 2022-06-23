pkg_set summary "International domain name library"
pkg_set webpage "https://www.gnu.org/software/libidn/"
pkg_set src.url "https://ftp.gnu.org/gnu/libidn/libidn-1.40.tar.gz"
pkg_set src.sha "527f673b8043d7189c056dd478b07af82492ecf118aa3e0ef0dc98c11af79991"
pkg_set license "GPL-2.0-or-later LGPL-3.0-or-later"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

build() {
    configure \
        --disable-valgrind-tests \
        --enable-gcc-warnings \
        --enable-doc
}
