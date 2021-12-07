package set summary "Palette quantization library extracted from pnquant2"
package set webpage "https://pngquant.org/lib"
package set src.git "https://github.com/ImageOptim/libimagequant.git"
package set src.url "https://github.com/ImageOptim/libimagequant/archive/2.17.0.tar.gz"
package set src.sum "9f6cc50182be4d2ece75118aa0b0fd3e9bbad06e94fd6b9eb3a4c08129c2dd26"
package set license "GPL-3.0"
package set bsystem "make"
package set binsrcd "yes"

build() {
    export OSTYPE=Linux
 
    run ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --disable-sse \
        CC="$CC" \
        CFLAGS="'$CFLAGS $CPPFLAGS'" \
        LDFLAGS="'$LDFLAGS'" &&
    makew clean &&
    makew install
}
