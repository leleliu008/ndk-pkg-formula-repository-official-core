package set summary "Yacc-compatible Parser generator"
package set webpage "https://www.gnu.org/software/bison"
package set src.url "https://ftp.gnu.org/gnu/bison/bison-3.7.2.tar.xz"
package set src.sum "7948d193104d979c0fb0294a1854c73c89d72ae41acfc081826142578a78a91b"
package set license "GPL-3.0-or-later"
package set bsystem "configure"

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
        --disable-assert
}
