summary="Free lossless audio codec"
homepage="https://xiph.org/flac"
url="https://github.com/xiph/flac/archive/1.3.3.tar.gz"
sha256="668cdeab898a7dd43cf84739f7e1f3ed6b35ece2ef9968a5c7079fe9adfe1689"
version="1.3.3"
dependencies="libogg libiconv"
#NDK内置了libiconv，但是要求TARGET_API >= 28，要支持低版本的话，只能依赖自己编译的libiconv
#https://github.com/android/ndk/issues/702

prepare() {
    sed_in_place 's/printf(usage)/printf("%s", usage)/g' src/utils/flacdiff/main.cpp &&
    sed_in_place 's/fprintf(stderr, usage)/fprintf(stderr, "%s", usage)/g' src/utils/flacdiff/main.cpp
}

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DCMAKE_C_FLAGS="$CFLAGS $CPPFLAGS $LDFLAGS -Dftello=ftell" \
    -DCMAKE_CXX_FLAGS="$CFLAGS $CPPFLAGS $LDFLAGS -Dftello=ftell" \
    -DOGG_INCLUDE_DIR="$libogg_DIR_INCLUDE" \
    -DOGG_LIBRARY="$libogg_DIR_LIB/libogg.so" \
    -DPKG_CONFIG_EXECUTABLE="" \
    -DBUILD_TESTING=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_CXXLIBS=ON \
    -DWITH_OGG=ON \
    -DWITH_ASM=OFF \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" install
}

build2() {
    [ -d "$DIR_BUILD" ] || mkdir -p "$DIR_BUILD"
    cd "$DIR_BUILD"
    "$DIR_SRC/configure" \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-ogg="$libogg_DIR_INSTALL_PREFIX" \
        --disable-rpath \
        --disable-oggtest \
        --disable-valgrind-testing \
        --disable-thorough-tests \
        --disable-exhaustive-tests \
        --disable-examples \
        --disable-xmms-plugin \
        --disable-doxygen-docs \
        --disable-debug \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
