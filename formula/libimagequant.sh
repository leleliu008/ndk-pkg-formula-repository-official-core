package set summary "Palette quantization library extracted from pnquant2"
package set webpage "https://pngquant.org/lib"
package set src.git "https://github.com/ImageOptim/libimagequant.git"
package set src.url "https://github.com/ImageOptim/libimagequant/archive/2.16.0.tar.gz"
package set src.sum "360f88a4a85546405e6bec36d403cedfda43e7b8b5ec140216b727a05cd3a8ac"
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
