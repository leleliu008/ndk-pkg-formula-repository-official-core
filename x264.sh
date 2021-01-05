summary "H.264/AVC encoder"
webpage "https://www.videolan.org/developers/x264.html"
version "20191217-2245"
src_url "http://ftp.videolan.org/pub/x264/snapshots/x264-snapshot-$(version).tar.bz2"
src_sum "0bb67d095513391e637b3b47e8efc3ba4603c3844f1b4c2690f4d36da7763055"

build() {
    configure \
        --disable-asm \
        --disable-cli \
        --enable-pic \
        --enable-lto \
        --enable-strip
}
