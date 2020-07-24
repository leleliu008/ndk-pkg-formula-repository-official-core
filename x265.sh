summary="H.265/HEVC encoder"
homepage="http://x265.org"
url="https://bitbucket.org/multicoreware/x265/downloads/x265_3.4.tar.gz"
sha256="c2047f23a6b729e5c70280d23223cb61b57bfe4ad4e8f1471eeee2a61d148672"
version="3.4"

prepare() {
    sed_in_place 's/list(APPEND PLATFORM_LIBS pthread)//g' source/CMakeLists.txt
}

#https://stackoverflow.com/questions/32826175/ftello-and-fseeko-android-build-errors
build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DCMAKE_C_FLAGS="$CFLAGS -Dftello=ftell -Dfseeko=fseek" \
    -DCMAKE_CXX_FLAGS="$CFLAGS -Dftello=ftell -Dfseeko=fseek" \
    -DENABLE_PIC=ON \
    -DENABLE_CLI=ON \
    -DENABLE_SHARED=ON \
    -DENABLE_ASSEMBLY=OFF \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S source \
    -B "$DIR_BUILD" && \
    make --directory="$DIR_BUILD" -j$(nproc) && \
    make --directory="$DIR_BUILD" install
}
