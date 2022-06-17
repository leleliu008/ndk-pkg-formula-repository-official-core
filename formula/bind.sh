pkg_set summary "Implementation of the DNS protocols"
pkg_set webpage "https://www.isc.org/downloads/bind"
pkg_set git.url "https://github.com/isc-projects/bind9.git"
pkg_set src.url "https://downloads.isc.org/isc/bind9/9.18.4/bind-9.18.4.tar.xz"
pkg_set src.sha "f277ae50159a00c300eb926a9c5d51953038a936bd8242d6913dfb6eac42761d"
pkg_set license "MPL-2.0"
pkg_set dep.pkg "nghttp2 json-c libxml2 libidn2 libuv libglob"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
# void endpwent(void) __INTRODUCED_IN(26);
pkg_set sdk.api 26

prepare() {
    for MAKEFILE_AM in $(find lib -name "Makefile.in")
    do
        sed_in_place 's|-release "$(PACKAGE_VERSION)"||' "$MAKEFILE_AM"
    done
}

build() {
    configure \
        --disable-linux-caps \
        --disable-static \
        --without-python \
        --without-gssapi \
        --with-zlib \
        --with-json-c \
        --with-libxml2 \
        --with-libidn2="$libidn2_INSTALL_DIR" \
        --with-openssl="$openssl_INSTALL_DIR"
}
