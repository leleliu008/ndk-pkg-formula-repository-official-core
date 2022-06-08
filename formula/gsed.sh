pkg_set summary "GNU implementation of the famous stream editor"
pkg_set webpage "https://www.gnu.org/software/sed"
pkg_set src.url "https://ftp.gnu.org/gnu/sed/sed-4.8.tar.xz"
pkg_set src.sha "f79b0cfea71b37a8eeec8490db6c5f7ae7719c35587f21edb0617f370eeff633"
pkg_set git.url "https://git.savannah.gnu.org/git/sed.git"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"
pkg_set cdefine "__USE_FORTIFY_LEVEL=0"

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdio.h.html
# https://github.com/android/ndk/issues/513
# https://github.com/innogames/android-ndk/blob/master/platforms/android-23/arch-arm/usr/include/stdio.h
pkg_set sdk.api 23

build() {
    configure \
        --without-selinux \
        --with-included-regex \
        --disable-acl \
        --disable-assert \
        --disable-gcc-warnings
}
