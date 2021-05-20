package set summary "H.264/AVC encoder"
package set webpage "https://www.videolan.org/developers/x264.html"
package set version "20191217-2245"
package set src.url "http://ftp.videolan.org/pub/x264/snapshots/x264-snapshot-${PACKAGE_VERSION}.tar.bz2"
package set src.sum "0bb67d095513391e637b3b47e8efc3ba4603c3844f1b4c2690f4d36da7763055"
package set bsystem "configure"

build() {
    configure \
        --disable-asm \
        --disable-cli \
        --enable-pic \
        --enable-lto \
        --enable-strip
}
