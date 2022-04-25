pkg_set summary "Library for Apple Binary- and XML-Property Lists"
pkg_set webpage "https://www.libimobiledevice.org"
pkg_set git.url "https://github.com/libimobiledevice/libplist.git"
pkg_set src.url "https://github.com/libimobiledevice/libplist/releases/download/2.2.0/libplist-2.2.0.tar.bz2"
pkg_set src.sha "4a5517e5377ec421df84c586ba85bb4e1d26f11ad203d7d450a907c0156fbd9a"
pkg_set license "LGPL-2.1-or-later;COPYING;https://raw.githubusercontent.com/libimobiledevice/libplist/master/COPYING"
pkg_set bsystem "configure"

build() {
    configure --without-cython
}
