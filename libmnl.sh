summary="Minimalistic Netlink Library based Linux kernel interfaces"
homepage="https://netfilter.org/projects/libmnl"
url="https://netfilter.org/projects/libmnl/files/libmnl-1.0.4.tar.bz2"
sha256="171f89699f286a5854b72b91d06e8f8e3683064c5901fb09d954a9ab6f551f81"

preparex() {
    sed_in_place 's/-lpthread/-lc/g' configure &&
    sed_in_place 's@linux-private/@@g' lib/mpls.c &&
    sed_in_place 's@linux-private/@@g' lib/route/link/vrf.c &&
    sed_in_place '/linux-private/d' Makefile.in &&
    sed_in_place '/linux-private/d' Makefile.am
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --enable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        CPP="$CPP" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
