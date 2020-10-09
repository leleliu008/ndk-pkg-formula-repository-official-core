summary="C/C++ and Java libraries for Unicode and globalization"
homepage="http://site.icu-project.org/home"
url="https://github.com/unicode-org/icu/releases/download/release-67-1/icu4c-67_1-src.tgz"
version="67.1"
sha256="94a80cd6f251a53bd2a997f6f1b5ac6653fe791dfab66e1eb0227740fb86d5dc"
license="ICU"

# https://www.talkwithdevices.com/archives/260
prepare() {
    mkdir -p build.d.tmp build.d.final &&
    (cd build.d.tmp && ../source/runConfigureICU Linux && make)
}

build() {
    (cd build.d.final &&
    ../source/configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-cross-build="$DIR_SRC/build.d.tmp" \
        --enable-release \
        --enable-static \
        --enable-shared \
        --enable-tools \
        --enable-fuzzer \
        --disable-tests \
        --disable-samples \
        --disable-debug \
        --disable-rpath \
        CC="$CC" \
        CFLAGS="$CFLAGS $CPPFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS $CPPFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAG" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make &&
    make install)
}
