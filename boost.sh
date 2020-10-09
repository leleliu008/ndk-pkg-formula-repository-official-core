summary="Collection of portable C++ source libraries"
homepage="https://www.boost.org"
url="https://dl.bintray.com/boostorg/release/1.73.0/source/boost_1_73_0.tar.bz2"
sha256="4eb3b8d442b426dc35346235c8733b5ae35ba431690e38c6a8263dce9fcbb402"
version="1.73.0"
license="BSL-1.0"
dependencies="xz bzip2 zstd icu4c libiconv"

# https://boostorg.github.io/build/manual/master/index.html
# https://sites.google.com/site/robdevelopertips/how-to-build-boost-1-64-0-for-android
prepare() {
    ./bootstrap.sh
}

build() {
    gen_project_config &&
    ./b2 install \
        -q \
        -d+2 \
        -j$(nproc) \
        --reconfigure \
        --without-python \
        --prefix="$DIR_INSTALL_PREFIX" \
        -sICU_PATH="$icu4c_DIR_INSTALL_PREFIX" \
        -sICONV_PATH="$libiconv_DIR_INSTALL_PREFIX" \
        target-os=android \
        toolset=clang-$TARGET_ARCH \
        link=static,shared \
        variant=release \
        threading=multi
}

gen_project_config() {
    cat > project-config.jam <<EOF
using clang : $TARGET_ARCH : $CXX : <compileflags>"$CXXFLAGS $CPPFLAGS" <linkflags>"$LDFLAGS -shared" ;
EOF
}
