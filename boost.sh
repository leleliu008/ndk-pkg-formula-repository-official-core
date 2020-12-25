summary "Collection of portable C++ source libraries"
webpage "https://www.boost.org"
version "1.73.0"
src_url "https://dl.bintray.com/boostorg/release/$(version)/source/boost_$(echo $(version) | tr . _).tar.bz2"
src_sum "4eb3b8d442b426dc35346235c8733b5ae35ba431690e38c6a8263dce9fcbb402"
license "BSL-1.0"
depends "xz bzip2 zstd icu4c libiconv"

# https://boostorg.github.io/build/manual/master/index.html
# https://sites.google.com/site/robdevelopertips/how-to-build-boost-1-64-0-for-android
# https://www.boost.org/doc/libs/1_73_0/libs/context/doc/html/context/architectures/crosscompiling.html
# https://www.boost.org/doc/libs/1_65_1/libs/context/doc/html/context/architectures.html
prepare() {
    ./bootstrap.sh
}

build() {
    case $BUILD_FOR_ABI in
        armeabi-v7a)
            address_model=32
            architecture=arm
            abi=aapcs
            ;;
        arm64-v8a)
            address_model=64
            architecture=arm
            abi=aapcs
            ;;
        x86)
            address_model=32
            architecture=x86
            abi=sysv
            ;;
        x86_64)
            address_model=64
            architecture=x86
            abi=sysv
    esac
    cd "$SOURCE_DIR" &&
    gen_project_config &&
    ./b2 install \
        -q \
        -d+2 \
        -j$(nproc) \
        --reconfigure \
        --without-python \
        --prefix="$ABI_INSTALL_DIR" \
        -sICU_PATH="$icu4c_INSTALL_DIR" \
        -sICONV_PATH="$libiconv_INSTALL_DIR" \
        toolset=clang-$BUILD_ROUND_NUM \
        link=static,shared \
        variant=release \
        threading=multi \
        target-os=android \
        binary-format=elf \
        address-model="$address_model" \
        architecture="$architecture" \
        abi="$abi"
}

gen_project_config() {
    cat > project-config.jam <<EOF
using clang : $BUILD_ROUND_NUM : $CXX : <compileflags>"$CXXFLAGS $CPPFLAGS" <linkflags>"$LDFLAGS -shared" <archiver>$AR <ranlib>$RANLIB ;
EOF
}
