package set summary "Implementation of the DNS protocols"
package set webpage "https://www.isc.org/downloads/bind"
package set src.url "https://downloads.isc.org/isc/bind9/9.16.23/bind-9.16.23.tar.xz"
package set src.sum "dedb5e27aa9cb6a9ce3e872845887ff837b99e4e9a91a5e2fcd67cf6e1ef173c"
package set license "MPL-2.0"
package set dep.cmd "pkg-config"
package set dep.pkg "json-c libxml2 libidn2 libuv openssl zlib"
package set ldflags "-lm -liconv"
package set bsystem "configure"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
# void endpwent(void) __INTRODUCED_IN(26);
package set sdk.api 26

prepare() {
    sed_in_place 's|#ifdef __NetBSD__|#if 1|' lib/isc/pthreads/thread.c
}

build() {
    configure \
        --disable-linux-caps \
        --without-python \
        --with-zlib \
        --with-json-c \
        --with-libxml2 \
        --with-libidn2=yes \
        --with-openssl="$openssl_INSTALL_DIR" \
        BUILD_CC="$CC_FOR_BUILD"
}
