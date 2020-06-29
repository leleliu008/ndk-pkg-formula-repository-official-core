summary="charset conversion library"
homepage="https://www.gnu.org/software/libiconv"
url="https://ftp.gnu.org/gnu/libiconv/libiconv-1.16.tar.gz"
sha256="e6a1b1b589654277ee790cce3734f07876ac4ccfaecbee8afa0b649cf529cc04"
#dependencies="gettext"

build() {
    ./configure \
       --host="$TARGET_HOST" \
       --prefix="$DIR_INSTALL_PREFIX" \
       --with-sysroot="$SYSROOT" \
       --disable-nls \
       --disable-debug \
       --disable-static \
       --enable-shared \
       CC="$CC" \
       CFLAGS="$CFLAGS" \
       CPPFLAGS="$CPPFLAGS" \
       LDFLAGS="$LDFLAGS" \
       AR="$AR" \
       RANLIB="$RANLIB" &&
    make clean &&
    make install
}
