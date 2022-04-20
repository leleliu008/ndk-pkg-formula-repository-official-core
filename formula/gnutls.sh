package set summary "GNU Transport Layer Security (TLS) Library"
package set webpage "https://gnutls.org"
package set git.url "https://github.com/gnutls/gnutls.git"
package set src.url "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.7/gnutls-3.7.4.tar.xz"
package set src.sum "e6adbebcfbc95867de01060d93c789938cf89cc1d1f6ef9ef661890f6217451f"
package set license "LGPL-2.1-or-later GPL-3.0-only"
package set dep.pkg "gmp libunistring nettle libtasn1 libidn2 p11-kit"
package set bsystem "configure"

# since: 8cb2c37d1b9116219636379bfb7efd823e4c8e9a
# no member named '_p' in 'struct __sFILE'
#  return fp->_p - fp->_bf._base;
package set sdk.api 24

build() {
    configure \
        --without-gcov \
        --disable-tests \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --disable-gtk-doc \
        --disable-guile \
        --enable-gcc-warnings
}
