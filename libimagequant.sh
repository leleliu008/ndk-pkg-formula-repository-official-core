summary  "Palette quantization library extracted from pnquant2"
homepage "https://pngquant.org/lib"
url      "https://github.com/ImageOptim/libimagequant/archive/2.12.6.tar.gz"
sha256   "b34964512c0dbe550c5f1b394c246c42a988cd73b71a76c5838aa2b4a96e43a0"
license  "GPL-3.0"

build() {
    export OSTYPE=Linux
    cd "$SOURCE_DIR" &&
    ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --disable-sse \
        CC="$CC" \
        CFLAGS="$CFLAGS $CPPFLAGS" \
        LDFLAGS="$LDFLAGS" &&
    $MAKE clean &&
    $MAKE install
}
