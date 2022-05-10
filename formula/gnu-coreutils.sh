pkg_set summary "GNU File, Shell, and Text utilities"
pkg_set webpage "https://www.gnu.org/software/coreutils"
pkg_set src.url "https://ftp.gnu.org/gnu/coreutils/coreutils-9.1.tar.xz"
pkg_set src.sha "61a1f410d78ba7e7f37a5a4f50e6d1320aca33375484a3255eddf17a38580423"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdio.h.html
# https://github.com/android/ndk/issues/513
# https://github.com/innogames/android-ndk/blob/master/platforms/android-23/arch-arm/usr/include/stdio.h
pkg_set sdk.api 23

build() {
    export CPPFLAGS="$CPPFLAGS -D__USE_FORTIFY_LEVEL=0"
    {
        if [ "$TARGET_OS_ARCH" = 'aarch64' ] ; then
            export CPPFLAGS="$CPPFLAGS -DSYS_getdents=61"
        fi
    } &&
    configure \
        --with-included-regex \
        --with-linux-crypto \
        --without-gmp \
        --without-openssl \
        --without-selinux \
        --disable-libcap \
        --disable-libsmack \
        --disable-assert \
        --disable-gcc-warnings \
        --disable-acl \
        --enable-xattr \
        --enable-threads=posix
}
