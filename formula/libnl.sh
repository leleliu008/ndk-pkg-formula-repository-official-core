pkg_set summary "Netlink Library based Linux kernel interfaces"
pkg_set git.url "https://github.com/thom311/libnl.git"
pkg_set src.url "https://github.com/thom311/libnl/releases/download/libnl3_5_0/libnl-3.5.0.tar.gz"
pkg_set src.sha "352133ec9545da76f77e70ccb48c9d7e5324d67f6474744647a7ed382b5e05fa"
pkg_set license "LGPL-2.1-or-later|COPYING|https://raw.githubusercontent.com/thom311/libnl/main/COPYING"
pkg_set dep.cmd "flex bison>=2.4.1 glibtoolize:libtoolize"
pkg_set bsystem "autotools"

# int getsubopt(char** __option, char* const* __tokens, char** __value_ptr) __INTRODUCED_IN(26);
pkg_set sdk.api 26

prepare() {
    autoreconf -ivf &&
    sed_in_place 's@linux-private/@@g' lib/mpls.c &&
    sed_in_place 's@linux-private/@@g' lib/route/link/vrf.c &&
    sed_in_place '/linux-private/d' Makefile.in &&
    sed_in_place '/linux-private/d' Makefile.am
}

build() {
    configure \
        --enable-pthreads \
        --enable-cli
}
