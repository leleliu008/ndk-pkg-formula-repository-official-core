package set summary "GNU grep, egrep and fgrep"
package set webpage "https://www.gnu.org/software/grep"
package set src.url "https://ftp.gnu.org/gnu/grep/grep-3.7.tar.xz"
package set src.sum "5c10da312460aec721984d5d83246d24520ec438dd48d7ab5a05dbc0d6d6823c"
package set license "GPL-3.0-or-later"
package set bsystem "configure"

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdio.h.html
# https://github.com/android/ndk/issues/513
# https://github.com/innogames/android-ndk/blob/master/platforms/android-23/arch-arm/usr/include/stdio.h
package set sdk.api 23

build() {
    configure \
        --enable-threads=posix \
        --disable-assert \
        --disable-gcc-warnings \
        --with-included-regex
}
