summary="General-purpose lossless data-compression library"
homepage="https://zlib.net"
url="https://zlib.net/zlib-1.2.11.tar.gz"
sha256="c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DBUILD_TESTING=OFF \
    -DBUILD_SHARED_LIBS=ON \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" -j$(nproc) install
}
