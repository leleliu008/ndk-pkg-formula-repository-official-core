summary="Collection of GNU find, xargs, and locate"
homepage="https://www.gnu.org/software/findutils"
url="https://ftp.gnu.org/gnu/findutils/findutils-4.7.0.tar.xz"
sha256="c5fefbdf9858f7e4feb86f036e1247a54c79fc2d8e4b7064d5aaa1f47dfa789a"
license="GPL-3.0"

#  #if defined(__USE_GNU) && __ANDROID_API__ >= 23
#  char* strerror_r(int __errno_value, char* __buf, size_t __n) __RENAME(__gnu_strerror_r) __INTRODUCED_IN(23);
#  #else /* POSIX */
#  int strerror_r(int __errno_value, char* __buf, size_t __n);
#  #endif
prepare() {
    sed_in_place 's/fseeko (fp/fseek (fp/g' gl/lib/fseeko.c &&
    sed_in_place 's/ret = strerror_r (errnum, buf, buflen);/strerror_r (errnum, buf, buflen); ret = errno;/g' gl/lib/strerror_r.c &&
    sed_in_place 's/strerror_r (errnum, stackbuf, sizeof stackbuf) == ERANGE/errno == ERANGE/g' gl/lib/strerror_r.c &&
    sed_in_place '/if (errno == ERANGE)/i strerror_r (errnum, stackbuf, sizeof stackbuf);'      gl/lib/strerror_r.c
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --without-selinux \
        --with-included-regex \
        --enable-threads=posix \
        --enable-largefile \
        --enable-leaf-optimisation \
        --enable-d_type-optimisation \
        --disable-nls \
        --disable-rpath \
        --disable-assert \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    sed_in_place 's/find.texi\ //' doc/Makefile &&
    make clean &&
    make install
}
