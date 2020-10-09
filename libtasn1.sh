summary="ASN.1 structure parser library"
homepage="https://www.gnu.org/software/libtasn1"
url="https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.16.0.tar.gz"
sha256="0e0fb0903839117cb6e3b56e68222771bebf22ad7fc2295a0ed7d576e8d4329d"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --without-gcov \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --disable-gtk-doc \
        --enable-static \
        --enable-shared \
        --enable-gcc-warnings \
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
    make -C lib install &&
    make -C src install
}
