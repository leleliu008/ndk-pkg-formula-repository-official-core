package set summary "PNG image optimizing utility"
package set webpage "https://pngquant.org"
package set src.git "https://github.com/kornelski/pngquant.git"
package set src.url "https://pngquant.org/pngquant-2.16.0-src.tar.gz"
package set src.sum "06c6fdded675753fbdbeacc2b63507fb30f42fae813e48a1684b240bb5b63522"
package set dep.pkg "libpng lcms2"
package set dep.cmd "pkg-config"
package set bsystem "make"
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
