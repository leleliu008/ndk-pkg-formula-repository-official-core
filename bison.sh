summary="Yacc-compatible Parser generator"
homepage="https://www.gnu.org/software/bison"
url="https://ftp.gnu.org/gnu/bison/bison-3.7.2.tar.xz"
sha256="7948d193104d979c0fb0294a1854c73c89d72ae41acfc081826142578a78a91b"
license="GPL-3.0-or-later"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-yacc \
        --enable-largefile \
        --enable-relocatable \
        --enable-threads=posix \
        --disable-gcc-warnings \
        --disable-assert \
        --disable-rpath \
        --disable-nls \
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
