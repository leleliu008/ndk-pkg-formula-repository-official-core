summary="Real-time data compression library"
homepage="https://www.oberhumer.com/opensource/lzo/"
url="https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz"
sha256="c0f892943208266f9b6543b3ae308fab6284c5c90e627931446fb49b4221a072"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DBUILD_TESTING=OFF \
    -DENABLE_STATIC=OFF \
    -DENABLE_SHARED=ON \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" -j$(nproc) install
}
