pkg_set summary "New GNU portable threads library"
pkg_set webpage "https://gnupg.org"
pkg_set git.url "https://dev.gnupg.org/source/npth.git"
pkg_set src.url "https://gnupg.org/ftp/gcrypt/npth/npth-1.6.tar.bz2"
pkg_set src.sha "1393abd9adcf0762d34798dc34fdcf4d0d22a8410721e76f1e3afcd1daa4e2d1"
pkg_set license "LGPL-2.1-or-later;COPYING.LIB;https://dev.gnupg.org/source/npth/browse/master/COPYING.LIB"
pkg_set bsystem "configure"

build() {
    configure --disable-tests
}
