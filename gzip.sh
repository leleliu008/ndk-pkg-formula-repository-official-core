summary="Popular GNU data compression program"
homepage="https://www.gnu.org/software/gzip"
url="https://ftp.gnu.org/gnu/gzip/gzip-1.10.tar.gz"
sha256="c91f74430bf7bc20402e1f657d0b252cb80aa66ba333a25704512af346633c68"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS -fno-builtin" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install install-data
}
