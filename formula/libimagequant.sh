package set summary "Palette quantization library extracted from pnquant2"
package set webpage "https://pngquant.org/lib"
package set src.git "https://github.com/ImageOptim/libimagequant.git"
package set src.url "https://github.com/ImageOptim/libimagequant/archive/2.14.1.tar.gz"
package set src.sum "b5fa27da1f3cf3e8255dd02778bb6a51dc71ce9f99a4fc930ea69b83200a7c74"
package set license "GPL-3.0"
package set bsystem "make"

package set binsrcd 'yes'

build() {
    export OSTYPE=Linux
 
    run ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --disable-sse \
        CC="$CC" \
        CFLAGS="\"$CFLAGS $CPPFLAGS\"" \
        LDFLAGS="\"$LDFLAGS\"" &&
    makew clean &&
    makew install
}
