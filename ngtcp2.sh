summary="QUIC library written in C"
homepage="https://github.com/ngtcp2/ngtcp2"
url="https://github.com/ngtcp2/ngtcp2.git"
version="0"
sha256="xx"
dependencies="libev nghttp3"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DBUILD_SHARED_LIBS=ON \
    -DENABLE_WERROR=OFF \
    -DENABLE_DEBUG=OFF \
    -DENABLE_ASAN=ON \
    -DENABLE_LIB_ONLY=OFF \
    -DLIBEV_INCLUDE_DIR="$libev_DIR_INCLUDE" \
    -DLIBEV_LIBRARY="$libev_DIR_LIB/libev.so" \
    -DLIBNGHTTP3_INCLUDE_DIR="$nghttp3_DIR_INCLUDE" \
    -DLIBNGHTTP3_LIBRARY="$nghttp3_DIR_LIB/libnghttp3.so" \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" -j$(nproc) install
}
