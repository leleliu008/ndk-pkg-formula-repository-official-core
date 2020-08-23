summary="Library to Access SMI MIB Information"
homepage="https://www.ibr.cs.tu-bs.de/projects/libsmi"
url="https://www.ibr.cs.tu-bs.de/projects/libsmi/download/libsmi-0.5.0.tar.gz"
mirror="https://www.mirrorservice.org/sites/distfiles.macports.org/libsmi/libsmi-0.5.0.tar.gz"
sha256="f21accdadb1bb328ea3f8a13fc34d715baac6e2db66065898346322c725754d3"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --disable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
