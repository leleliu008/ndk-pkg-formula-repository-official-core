summary "GNU grep, egrep and fgrep"
webpage "https://www.gnu.org/software/grep"
src_url "https://ftp.gnu.org/gnu/grep/grep-3.4.tar.xz"
src_sum "58e6751c41a7c25bfc6e9363a41786cff3ba5709cf11d5ad903cf7cce31cc3fb"
license "GPL-3.0-or-later"

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdio.h.html
# https://github.com/android/ndk/issues/513
# https://github.com/innogames/android-ndk/blob/master/platforms/android-23/arch-arm/usr/include/stdio.h
sdk_api 23

build() {
    configure \
        --enable-threads=posix \
        --disable-assert \
        --disable-gcc-warnings \
        --with-included-regex
}
