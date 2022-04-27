pkg_set summary "Lightweight unit testing framework for C"
pkg_set webpage "https://cunit.sourceforge.io"
pkg_set src.url "https://downloads.sourceforge.net/project/cunit/CUnit/2.1-3/CUnit-2.1-3.tar.bz2"
pkg_set src.sha "f5b29137f845bb08b77ec60584fdb728b4e58f1023e6f249a464efa49a40f214"
pkg_set license "LGPL-2.0-or-later|COPYING|https://sourceforge.net/p/cunit/code/HEAD/tree/trunk/COPYING"
pkg_set version "2.1.3"
pkg_set dep.cmd "glibtoolize:libtoolize"
pkg_set bsystem "autotools"

prepare() {
    rm config.status &&
    find . -name ".deps"    -exec rm -rf {} + &&
    find . -name "Makefile" -exec rm -rf {} + &&
    autoreconf -ivf && \
    sed_in_place 's/install-data-am: install-dochdrDATA/install-data-am: /' doc/headers/Makefile.in
}

build() {
    configure \
        --disable-examples \
        --disable-test \
        --enable-basic \
        --enable-curses \
        --enable-console \
        --enable-memtrace \
        --enable-automated
}
