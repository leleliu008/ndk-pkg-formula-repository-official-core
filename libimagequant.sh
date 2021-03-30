summary "Palette quantization library extracted from pnquant2"
webpage "https://pngquant.org/lib"
src_git "https://github.com/ImageOptim/libimagequant.git"
src_url "https://github.com/ImageOptim/libimagequant/archive/2.14.1.tar.gz"
src_sum "b5fa27da1f3cf3e8255dd02778bb6a51dc71ce9f99a4fc930ea69b83200a7c74"
license "GPL-3.0"
bsystem "make"

build_in_sourced

build() {
    export OSTYPE=Linux
 
    run ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --disable-sse \
        CC="$CC" \
        CFLAGS="\"$CFLAGS $CPPFLAGS\"" \
        LDFLAGS="\"$LDFLAGS\"" &&
    make clean &&
    make install
}
