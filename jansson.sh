summary="C library for encoding, decoding, and manipulating JSON"
homepage="https://digip.org/jansson"
url="https://digip.org/jansson/releases/jansson-2.13.1.tar.gz"
sha256="f4f377da17b10201a60c1108613e78ee15df6b12016b116b6de42209f47a474f"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DJANSSON_BUILD_DOCS=ON \
    -DJANSSON_BUILD_SHARED_LIBS=ON \
    -DJANSSON_COVERAGE=OFF \
    -DJANSSON_EXAMPLES=OFF \
    -DJANSSON_WITHOUT_TESTS=ON \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" -j$(nproc) install
}
