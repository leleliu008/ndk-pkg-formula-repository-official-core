pkg_set summary "Compact Disc Input and Control Library"
pkg_set webpage "https://www.gnu.org/software/libcdio"
pkg_set src.url "https://ftp.gnu.org/gnu/libcdio/libcdio-2.1.0.tar.bz2"
pkg_set src.sha "8550e9589dbd594bfac93b81ecf129b1dc9d0d51e90f9696f1b2f9b2af32712b"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.pkg "libiconv"

build() {
    configure ac_cv_header_glob_h=no
}
