pkg_set summary "GNU Transport Layer Security (TLS) Library"
pkg_set webpage "https://gnutls.org"
pkg_set git.url "https://github.com/gnutls/gnutls.git"
pkg_set src.url "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.7/gnutls-3.7.6.tar.xz"
pkg_set src.sha "77065719a345bfb18faa250134be4c53bef70c1bd61f6c0c23ceb8b44f0262ff"
pkg_set license "LGPL-2.1-or-later GPL-3.0-only"
pkg_set dep.pkg "gmp libunistring nettle libtasn1 libidn2 p11-kit"
pkg_set bsystem "configure"

# since: 8cb2c37d1b9116219636379bfb7efd823e4c8e9a
# no member named '_p' in 'struct __sFILE'
#  return fp->_p - fp->_bf._base;
pkg_set sdk.api 24

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
