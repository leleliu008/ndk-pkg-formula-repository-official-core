package set summary "Collection of GNU find, xargs, and locate"
package set webpage "https://www.gnu.org/software/findutils"
package set src.url "https://ftp.gnu.org/gnu/findutils/findutils-4.7.0.tar.xz"
package set src.sum "c5fefbdf9858f7e4feb86f036e1247a54c79fc2d8e4b7064d5aaa1f47dfa789a"
package set license "GPL-3.0"
package set bsystem "configure"

package set sdk.api 26

# void endgrent(void) __INTRODUCED_IN(26);

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdio.h.html
# https://github.com/android/ndk/issues/513
# https://github.com/innogames/android-ndk/blob/master/platforms/android-23/arch-arm/usr/include/stdio.h

#  #if defined(__USE_GNU) && __ANDROID_API__ >= 23
#  char* strerror_r(int __errno_value, char* __buf, size_t __n) __RENAME(__gnu_strerror_r) __INTRODUCED_IN(23);
#  #else /* POSIX */
#  int strerror_r(int __errno_value, char* __buf, size_t __n);
#  #endif

prepare() {
    sed_in_place 's/ret = strerror_r (errnum, buf, buflen);/strerror_r (errnum, buf, buflen); ret = errno;/g' gl/lib/strerror_r.c &&
    sed_in_place 's/strerror_r (errnum, stackbuf, sizeof stackbuf) == ERANGE/errno == ERANGE/g' gl/lib/strerror_r.c &&
    sed_in_place '/if (errno == ERANGE)/i strerror_r (errnum, stackbuf, sizeof stackbuf);'      gl/lib/strerror_r.c &&
    sed_in_place 's/find.texi\ //' doc/Makefile.am &&
    sed_in_place 's/find.texi\ //' doc/Makefile.in
}

build() {
    configure \
        --without-selinux \
        --with-included-regex \
        --enable-threads=posix \
        --enable-leaf-optimisation \
        --enable-d_type-optimisation \
        --disable-assert
}
