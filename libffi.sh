summary="Portable Foreign Function Interface library"
homepage="https://sourceware.org/libffi"
url="https://github.com/libffi/libffi/releases/download/v3.3/libffi-3.3.tar.gz"
sha256="72fba7922703ddfa7a028d513ac15a85c8d54c8d67f55fa5a4802885dc652056"

prepare2() {
    sed_in_place 's/|-isysroot|--sysroot//' ltmain.sh
}

build() {
    #export CFLAGS="$SYSROOT $CFLAGS"
    configure \
        --with-sysroot="$SYSROOT" \
        --disable-symvers \
        --enable-docs
}
