summary="H.264/AVC encoder"
homepage="https://www.videolan.org/developers/x264.html"
url="http://ftp.videolan.org/pub/x264/snapshots/x264-snapshot-20191217-2245.tar.bz2"
sha256="0bb67d095513391e637b3b47e8efc3ba4603c3844f1b4c2690f4d36da7763055"
version="20191217-2245"

#https://stackoverflow.com/questions/61056127/when-i-build-x264-with-android-ndk-it-not-done
build() {
    [ -d "$DIR_BUILD" ] || mkdir -p "$DIR_BUILD"
    cd "$DIR_BUILD"
    "$DIR_SRC/configure" \
        --host="$TARGET_HOST" \
        --sysroot="$SYSROOT" \
        --cross-prefix="$TOOLCHAIN_PREFIX" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --disable-asm \
        --disable-cli \
        --enable-pic \
        --enable-lto \
        --enable-strip \
        --enable-shared &&
    make clean &&
    make install
}
