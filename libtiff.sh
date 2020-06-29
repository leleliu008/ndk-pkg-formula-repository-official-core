summary="TIFF library and utilities"
homepage="https://libtiff.gitlab.io/libtiff"
url="https://download.osgeo.org/libtiff/tiff-4.1.0.tar.gz"
sha256="5d29f32517dadb6dbcd1255ea5bbc93a2b54b94fbf83653b4d65c7d6775b8634"

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
