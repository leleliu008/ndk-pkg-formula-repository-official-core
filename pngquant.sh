summary "PNG image optimizing utility"
webpage "https://pngquant.org"
version "2.12.5"
src_url "https://pngquant.org/pngquant-$(version)-src.tar.gz"
src_sum "3638936cf6270eeeaabcee42e10768d78e4dc07cac9310307835c1f58b140808"
depends "libpng zlib"

build() {
    cd "$SOURCE_DIR" || return 1
    export OSTYPE=Linux
    ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --disable-sse \
        --with-libpng="$libpng_INSTALL_DIR" \
        --without-lcms2 \
        CC="$CC" \
        CFLAGS="$CFLAGS $CPPFLAGS -static" \
        LDFLAGS="$LDFLAGS" &&
    make clean &&
    make install
}
