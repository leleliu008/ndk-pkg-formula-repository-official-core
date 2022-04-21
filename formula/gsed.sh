package set summary "GNU implementation of the famous stream editor"
package set webpage "https://www.gnu.org/software/sed"
package set src.url "https://ftp.gnu.org/gnu/sed/sed-4.8.tar.xz"
package set src.sum "f79b0cfea71b37a8eeec8490db6c5f7ae7719c35587f21edb0617f370eeff633"
package set license "GPL-3.0-or-later"
package set bsystem "configure"
package set cdefine "__USE_FORTIFY_LEVEL=0"

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdio.h.html
# https://github.com/android/ndk/issues/513
# https://github.com/innogames/android-ndk/blob/master/platforms/android-23/arch-arm/usr/include/stdio.h
package set sdk.api 23

build() {
    configure \
        --without-selinux \
        --with-included-regex \
        --disable-acl \
        --disable-assert \
        --disable-gcc-warnings
}
