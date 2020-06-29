summary="C routines to compute the Discrete Fourier Transform"
homepage="http://www.fftw.org"
url="http://fftw.org/fftw-3.3.8.tar.gz"
sha256="6113262f6e92c5bd474f2875fa1b01054c4ad5040f6b0da7c03c98821d9ae303"
#dependencies="open-mpi"

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

build2() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-shared  \
        --enable-threads \
        --enable-float   \
        CC="$CC" \
        CFLAGS="$CFLAGS -fno-builtin" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
