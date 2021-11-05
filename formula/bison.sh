package set summary "Yacc-compatible Parser generator"
package set webpage "https://www.gnu.org/software/bison"
package set src.url "https://ftp.gnu.org/gnu/bison/bison-3.8.2.tar.xz"
package set src.sum "9bba0214ccf7f1079c5d59210045227bcf619519840ebfa80cd3849cff5a5bf2"
package set license "GPL-3.0-or-later"
package set bsystem "configure"

# https://github.com/westonal/android-ndk/blob/master/sysroot/usr/include/sys/cdefs.h#L228
package set cdefine "_GNU_SOURCE"

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdio.h.html
# https://github.com/android/ndk/issues/513
# https://github.com/innogames/android-ndk/blob/master/platforms/android-23/arch-arm/usr/include/stdio.h
package set sdk.api 23

build() {
    configure \
        --enable-yacc \
        --enable-relocatable \
        --enable-threads=posix \
        --disable-gcc-warnings \
        --disable-assert \
        ac_cv_func_ffsl=yes
}
