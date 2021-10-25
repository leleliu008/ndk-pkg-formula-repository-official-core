package set summary "PNG image optimizing utility"
package set webpage "https://pngquant.org"
package set version "2.12.5"
package set src.url "https://pngquant.org/pngquant-${PACKAGE_VERSION}-src.tar.gz"
package set src.sum "3638936cf6270eeeaabcee42e10768d78e4dc07cac9310307835c1f58b140808"
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
        CFLAGS="\"$CFLAGS $CPPFLAGS -static\"" \
        LDFLAGS="\"$LDFLAGS\"" &&
    makew clean &&
    makew install
}
