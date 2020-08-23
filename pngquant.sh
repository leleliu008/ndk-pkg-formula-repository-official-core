summary="PNG image optimizing utility"
homepage="https://pngquant.org"
url="https://pngquant.org/pngquant-2.12.5-src.tar.gz"
sha256="3638936cf6270eeeaabcee42e10768d78e4dc07cac9310307835c1f58b140808"
version="2.12.5"
dependencies="libpng"

        #--extra-cflags="$CFLAGS $CPPFLAGS" \
        #--extra-ldflags="$LDFLAGS" \
build() {
    unset TARGET_ARCH
    ./configure \
        --prefix="$DIR_INSTALL_PREFIX" \
        --disable-debug \
        --disable-sse \
        --with-libpng="$libpng_DIR_INSTALL_PREFIX" \
        --without-lcms2 \
        CC="$CC" \
        CFLAGS="$CFLAGS $CPPFLAGS" \
        LDFLAGS="$LDFLAGS" &&
    make clean &&
    make install
}
