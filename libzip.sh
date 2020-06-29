summary="C library for reading, creating, and modifying zip archives"
homepage="https://libzip.org"
url="https://libzip.org/download/libzip-1.7.0.tar.xz"
sha256="d26b2952426d2518f3db5cdeda4fe3cd668fc5bb38a598781e4d1d3f7f8ca7be"
#dependencies="bzip2"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DCMAKE_C_FLAGS="$CFLAGS" \
    -DCMAKE_CXX_FLAGS="$CFLAGS" \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -DENABLE_OPENSSL=OFF \
    -DENABLE_COMMONCRYPTO=OFF \
    -DENABLE_GNUTLS=OFF \
    -DENABLE_MBEDTLS=OFF \
    -DENABLE_OPENSSL=OFF \
    -DENABLE_WINDOWS_CRYPTO=OFF \
    -DBUILD_DOC=OFF \
    -DBUILD_TOOLS=OFF \
    -DBUILD_REGRESS=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_SHARED_LIBS=ON \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" && \
    make --directory="$DIR_BUILD" install -j$(nproc)
}
