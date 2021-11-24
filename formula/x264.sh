package set summary "H.264/AVC encoder"
package set webpage "https://www.videolan.org/developers/x264.html"
package set src.git "https://code.videolan.org/videolan/x264.git"
package set bsystem "configure"

build() {
    configure \
        --disable-asm \
        --enable-cli \
        --enable-pic \
        --enable-lto \
        --enable-strip
}
