summary="Get a file from an HTTP, HTTPS or FTP server"
homepage="https://curl.haxx.se"
url="https://curl.haxx.se/download/curl-7.70.0.tar.xz"
sha256="032f43f2674008c761af19bf536374128c16241fb234699a55f9fb603fcfbae7"
dependencies="openssl"

build() {
    ./configure \
       --host="$TARGET_HOST" \
       --prefix="$DIR_INSTALL_PREFIX" \
       --with-ssl="$openssl_DIR_INSTALL_PREFIX" \
       CC="$CC" \
       CFLAGS="$CFLAGS" \
       CPPFLAGS="$CPPFLAGS" \
       LDFLAGS="$LDFLAGS" \
       AR="$AR" \
       RANLIB="$RANLIB" &&
    make clean &&
    make install
}
