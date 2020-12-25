summary "International domain name library (IDNA2008, Punycode and TR46)"
webpage "https://www.gnu.org/software/libidn/#libidn2"
src_url "https://ftp.gnu.org/gnu/libidn/libidn2-2.3.0.tar.gz"
src_sum "e1cb1db3d2e249a6a3eb6f0946777c2e892d5c5dc7bd91c74394fc3a01cab8b5"
depends "libunistring"

build() {
    export CFLAGS="$CFLAGS -liconv"
    configure \
        --with-libunistring-prefix="$libunistring_INSTALL_DIR" \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --enable-doc \
        --enable-gcc-warnings
}
