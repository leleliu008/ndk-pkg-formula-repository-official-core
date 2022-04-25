pkg_set summary "Implementation of the DNS protocols"
pkg_set webpage "https://www.isc.org/downloads/bind"
pkg_set git.url "https://github.com/isc-projects/bind9.git"
pkg_set src.url "https://downloads.isc.org/isc/bind9/9.16.24/bind-9.16.24.tar.xz"
pkg_set src.sha "5582f3734bd6232284f93f14206b8a46d1f819dea4797ae157066f6963b08507"
pkg_set license "MPL-2.0"
pkg_set dep.pkg "json-c libxml2 libidn2 libuv openssl zlib"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
# void endpwent(void) __INTRODUCED_IN(26);
pkg_set sdk.api 26

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
