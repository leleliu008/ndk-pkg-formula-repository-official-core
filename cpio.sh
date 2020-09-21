summary="Copies files into or out of a cpio or tar archive"
homepage="https://www.gnu.org/software/cpio"
url="https://ftp.gnu.org/gnu/cpio/cpio-2.13.tar.bz2"
sha256="eab5bdc5ae1df285c59f2a4f140a98fc33678a0bf61bdba67d9436ae26b46f6d"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-largefile \
        --disable-rpath \
        --disable-nls \
        --disable-mt \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
