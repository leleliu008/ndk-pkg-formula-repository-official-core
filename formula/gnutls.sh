package set summary "GNU Transport Layer Security (TLS) Library"
package set webpage "https://gnutls.org"
package set git.url "https://github.com/gnutls/gnutls.git"
package set src.url "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.7/gnutls-3.7.3.tar.xz"
package set src.sum "fc59c43bc31ab20a6977ff083029277a31935b8355ce387b634fa433f8f6c49a"
package set dep.pkg "gmp libunistring nettle libtasn1 libidn2 p11-kit"
#package set ldflags "-lgmp -liconv"
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
