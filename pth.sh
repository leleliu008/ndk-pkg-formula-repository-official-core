summary="GNU Portable THreads"
homepage="https://www.gnu.org/software/pth"
url="https://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz"
sha256="72353660c5a2caafd601b20e12e75d865fd88f6cf1a088b306a3963f0bc77232"

prepare() {
    fetch_config_sub &&
    fetch_config_guess
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --disable-profile \
        --disable-debug \
        --disable-tests \
        --enable-static \
        --enable-shared \
        --enable-batch \
        --enable-pthread \
        --enable-optimize \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
