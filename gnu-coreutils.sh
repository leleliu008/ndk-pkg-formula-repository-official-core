summary="GNU File, Shell, and Text utilities"
homepage="https://www.gnu.org/software/coreutils"
url="https://ftp.gnu.org/gnu/coreutils/coreutils-8.32.tar.xz"
sha256="4458d8de7849df44ccab15e16b1548b285224dbba5f08fac070c1c0e0bcc4cfa"
license="GPL-3.0"

build() {
    {
        if [ "$TARGET_ABI" = 'arm64-v8a' ] ; then
            export CPPFLAGS="$CPPFLAGS -DSYS_getdents=61"
        fi
    } &&
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-included-regex \
        --with-linux-crypto \
        --without-gmp \
        --without-openssl \
        --without-selinux \
        --disable-acl \
        --disable-nls \
        --disable-libcap \
        --disable-libsmack \
        --disable-rpath \
        --disable-assert \
        --disable-gcc-warnings \
        --enable-largefile \
        --enable-xattr \
        --enable-threads=posix \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS -D__USE_FORTIFY_LEVEL=0" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
