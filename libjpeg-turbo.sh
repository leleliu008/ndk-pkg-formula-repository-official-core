summary="JPEG image codec that aids compression and decompression"
homepage="https://www.libjpeg-turbo.org"
url="https://downloads.sourceforge.net/project/libjpeg-turbo/2.0.4/libjpeg-turbo-2.0.4.tar.gz"
sha256="33dd8547efd5543639e890efbf2ef52d5a21df81faf41bb940657af916a23406"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DCMAKE_C_FLAGS="$CFLAGS" \
    -DCMAKE_CXX_FLAGS="$CFLAGS" \
    -DENABLE_PIC=ON \
    -DENABLE_CLI=ON \
    -DENABLE_SHARED=ON \
    -DENABLE_ASSEMBLY=OFF \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" && \
    make --directory="$DIR_BUILD" -j$(nproc) && \
    make --directory="$DIR_BUILD" install
}
