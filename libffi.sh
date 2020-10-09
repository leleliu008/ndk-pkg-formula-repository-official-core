summary="Portable Foreign Function Interface library"
homepage="https://sourceware.org/libffi"
url="https://github.com/libffi/libffi/releases/download/v3.3/libffi-3.3.tar.gz"
sha256="72fba7922703ddfa7a028d513ac15a85c8d54c8d67f55fa5a4802885dc652056"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-gcc-arch="$TARGET_ARCH" \
        --disable-multi-os-directory \
        --disable-symvers \
        --disable-debug \
        --enable-static \
        --enable-shared \
        --enable-docs \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
