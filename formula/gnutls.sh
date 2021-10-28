package set summary "GNU Transport Layer Security (TLS) Library"
package set webpage "https://gnutls.org"
package set src.url "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/gnutls-3.6.16.tar.xz"
package set src.sum "1b79b381ac283d8b054368b335c408fedcb9b7144e0c07f531e3537d4328f3b3"
package set bsystem "configure"
package set dep.pkg "gmp libunistring nettle libtasn1 libidn2 p11-kit"
package set ldflags "-lgmp -liconv"

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
