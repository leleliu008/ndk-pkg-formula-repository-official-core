package set summary "PNG image optimizing utility"
package set webpage "https://pngquant.org"
package set src.git "https://github.com/kornelski/pngquant.git"
package set src.url "https://pngquant.org/pngquant-2.15.1-src.tar.gz"
package set src.sum "718aabbc346b82ed93564d8e757b346988d86de268ee03d2904207cd5d64c829"
package set bsystem "make"
package set dep.cmd "pkg-config"
package set dep.pkg "libpng lcms2"
package set binsrcd 'yes'

build() {
    export OSTYPE=Linux
    
    run ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --disable-sse \
        --with-libpng="$libpng_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="'$CFLAGS $CPPFLAGS -static'" \
        LDFLAGS="'$LDFLAGS'" &&
    makew clean &&
    makew install
}
