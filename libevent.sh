summary="Asynchronous event library"
homepage="https://libevent.org"
url="https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz"
sha256="92e6de1be9ec176428fd2367677e61ceffc2ee1cb119035037a27d346b0403bb"
dependencies="openssl"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DEVENT__DISABLE_DEBUG_MODE=ON \
    -DEVENT__DISABLE_TESTS=ON \
    -DEVENT__DISABLE_REGRESS=ON \
    -DEVENT__DISABLE_BENCHMARK=ON \
    -DEVENT__DISABLE_SAMPLES=ON \
    -DEVENT__DISABLE_OPENSSL=OFF \
    -DEVENT__DOXYGEN=ON \
    -DEVENT__COVERAGE=OFF \
    -DEVENT__LIBRARY_TYPE=BOTH \
    -DPKG_CONFIG_EXECUTABLE='' \
    -DOPENSSL_INCLUDE_DIR="$openssl_DIR_INCLUDE" \
    -DOPENSSL_SSL_LIBRARY="$openssl_DIR_LIB/libssl.so" \
    -DOPENSSL_CRYPTO_LIBRARY="$openssl_DIR_LIB/libcrypto.so" \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" -j$(nproc) install
}
