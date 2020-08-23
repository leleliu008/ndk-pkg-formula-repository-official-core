summary="Asynchronous event library"
homepage="http://software.schmorp.de/pkg/libev.html"
url="https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/libe/libev/libev_4.33.orig.tar.gz"
sha256="507eb7b8d1015fbec5b935f34ebed15bf346bed04a11ab82b8eee848c4205aea"
version="4.33"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --enable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
