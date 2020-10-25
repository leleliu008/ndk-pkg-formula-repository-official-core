summary="Netlink Library based Linux kernel interfaces"
homepage="https://github.com/thom311/libnl"
url="https://github.com/thom311/libnl/releases/download/libnl3_5_0/libnl-3.5.0.tar.gz"
sha256="352133ec9545da76f77e70ccb48c9d7e5324d67f6474744647a7ed382b5e05fa"

# int getsubopt(char** __option, char* const* __tokens, char** __value_ptr) __INTRODUCED_IN(26);

prepare() {
    sed_in_place 's/-lpthread/-lc/g' configure &&
    sed_in_place 's@linux-private/@@g' lib/mpls.c &&
    sed_in_place 's@linux-private/@@g' lib/route/link/vrf.c &&
    sed_in_place '/linux-private/d' Makefile.in &&
    sed_in_place '/linux-private/d' Makefile.am
}

build() {
    export CPPFLAGS="$CPPFLAGS -D__kernel_sockaddr_storage=sockaddr_storage"
    configure \
        --enable-pthreads \
        --enable-cli
}
