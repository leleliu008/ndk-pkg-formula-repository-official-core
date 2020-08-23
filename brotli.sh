summary="Generic-purpose lossless compression algorithm by Google"
homepage="https://github.com/google/brotli"
url="https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/b/brotli/brotli_1.0.7.orig.tar.gz"
sha256="4c61bfb0faca87219ea587326c467b95acb25555b53d1a421ffa3c8a9296ee2c"
version="1.0.7"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DBUILD_TESTING=OFF \
    -DBUILD_SHARED_LIBS=ON \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" -j$(nproc) install
}
