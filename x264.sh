summary="H.264/AVC encoder"
homepage="https://www.videolan.org/developers/x264.html"
version="20191217-2245"
url="http://ftp.videolan.org/pub/x264/snapshots/x264-snapshot-$version.tar.bz2"
sha256="0bb67d095513391e637b3b47e8efc3ba4603c3844f1b4c2690f4d36da7763055"

#https://stackoverflow.com/questions/61056127/when-i-build-x264-with-android-ndk-it-not-done
build() {
    configure \
        --disable-asm \
        --disable-cli \
        --enable-pic \
        --enable-lto \
        --enable-strip
}
