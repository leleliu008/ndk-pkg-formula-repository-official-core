summary="Software library to render fonts"
homepage="https://www.freetype.org"
url="https://downloads.sourceforge.net/project/freetype/freetype2/2.10.2/freetype-2.10.2.tar.xz"
sha256="1543d61025d2e6312e0a1c563652555f17378a204a61e99928c9fcef030a2d8b"
dependencies="brotli bzip2 libpng"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DBUILD_SHARED_LIBS=ON \
    -DFT_WITH_BROTLI=ON \
    -DFT_WITH_BZIP2=ON \
    -DFT_WITH_ZLIB=ON \
    -DFT_WITH_PNG=ON \
    -DFT_WITH_HARFBUZZ=OFF \
    -DBROTLIDEC_INCLUDE_DIRS="$brotli_DIR_INCLUDE" \
    -DBROTLIDEC_LIBRARIES="$brotli_DIR_LIB/libbrotlidec.so" \
    -DBZIP2_INCLUDE_DIR="$bzip2_DIR_INCLUDE" \
    -DBZIP2_LIBRARY_RELEASE="$bzip2_DIR_LIB/libbz2.so" \
    -DPNG_PNG_INCLUDE_DIR="$libpng_DIR_INCLUDE" \
    -DPNG_LIBRARY_RELEASE="$libpng_DIR_LIB/libpng.so" \
    -DPKG_CONFIG_EXECUTABLE='' \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" -j$(nproc) install
}
