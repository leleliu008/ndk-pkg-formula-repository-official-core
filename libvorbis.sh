summary="Vorbis General Audio Compression Codec"
homepage="https://xiph.org/vorbis"
url="https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.6.tar.xz"
sha256="af00bb5a784e7c9e69f56823de4637c350643deedaf333d0fa86ecdba6fcb415"
dependencies="libogg"

build_first() {
    sed_in_place 's/-mno-ieee-fp//g' configure
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-ogg="$libogg_DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}

build2() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DOGG_INCLUDE_DIRS="$libogg_DIR_INCLUDE" \
    -DOGG_LIBRARIES="$libogg_DIR_LIB/libogg.so" \
    -DBUILD_SHARED_LIBS=ON \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" && \
    make --directory="$DIR_BUILD" -j$(nproc) && \
    make --directory="$DIR_BUILD" install
}
