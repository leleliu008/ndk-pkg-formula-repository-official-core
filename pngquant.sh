summary="PNG image optimizing utility"
homepage="https://pngquant.org"
version="2.12.5"
url="https://pngquant.org/pngquant-$version-src.tar.gz"
sha256="3638936cf6270eeeaabcee42e10768d78e4dc07cac9310307835c1f58b140808"
dependencies="libpng zlib"

build() {
    export OSTYPE=Linux
    ./configure \
        --prefix="$DIR_INSTALL_PREFIX" \
        --disable-sse \
        --with-libpng="$libpng_DIR_INSTALL_PREFIX" \
        --without-lcms2 \
        CC="$CC" \
        CFLAGS="$CFLAGS $CPPFLAGS -static" \
        LDFLAGS="$LDFLAGS" &&
    make clean &&
    make install
}
