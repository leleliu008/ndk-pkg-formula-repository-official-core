summary "GNU Transport Layer Security (TLS) Library"
webpage "https://gnutls.org"
src_url "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/gnutls-3.6.14.tar.xz"
src_sum "5630751adec7025b8ef955af4d141d00d252a985769f51b4059e5affa3d39d63"
depends "gmp libunistring nettle libtasn1 libidn2 p11-kit"

build() {
    export LDFLAGS="$LDFLAGS -lgmp -liconv"
    configure \
        --without-gcov \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --disable-gtk-doc \
        --disable-guile \
        --enable-gcc-warnings
}
