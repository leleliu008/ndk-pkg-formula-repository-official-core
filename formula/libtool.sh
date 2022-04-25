pkg_set summary "Generic library support script"
pkg_set webpage "https://www.gnu.org/software/libtool"
pkg_set src.url "https://ftp.gnu.org/gnu/libtool/libtool-2.4.7.tar.xz"
pkg_set src.sha "4f7f217f057ce655ff22559ad221a0fd8ef84ad1fc5fcb6990cecc333aa1635d"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"

build() {
    configure --enable-ltdl-install
}
