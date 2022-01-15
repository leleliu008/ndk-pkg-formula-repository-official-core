package set summary "Collection of portable C++ source libraries"
package set webpage "https://www.boost.org"
package set git.url "https://github.com/boostorg/boost.git"
package set src.url "https://boostorg.jfrog.io/artifactory/main/release/1.73.0/source/boost_1_73_0.tar.bz2"
package set src.sum "4eb3b8d442b426dc35346235c8733b5ae35ba431690e38c6a8263dce9fcbb402"
package set version "1.73.0"
package set license "BSL-1.0"
package set dep.pkg "xz bzip2 zstd icu4c libiconv python"
package set binsrcd 'yes'

# https://boostorg.github.io/build/manual/master/index.html
# https://sites.google.com/site/robdevelopertips/how-to-build-boost-1-64-0-for-android
# https://www.boost.org/doc/libs/1_73_0/libs/context/doc/html/context/architectures/crosscompiling.html
# https://www.boost.org/doc/libs/1_65_1/libs/context/doc/html/context/architectures.html
build0() {
    sed_in_place '1a set -x' bootstrap.sh &&
    sed_in_place '1a set -x' tools/build/src/engine/build.sh &&
    run ./bootstrap.sh
}

prepare() {
    sed_in_place '/rindex/d' "$COMMON_INCLUDE_H_FILEPATH"
}

build() {
    case $TARGET_OS_ARCH in
        armv7a)
            address_model=32
            architecture=arm
            abi=aapcs
            ;;
        aarch64)
            address_model=64
            architecture=arm
            abi=aapcs
            ;;
        i686)
            address_model=32
            architecture=x86
            abi=sysv
            ;;
        x86_64)
            address_model=64
            architecture=x86
            abi=sysv
    esac
 
    gen_project_config &&
    run ./b2 install \
        -q \
        -d+2 \
        -j$BUILD_NJOBS \
        --reconfigure \
        --prefix="$ABI_INSTALL_DIR" \
        -sICU_PATH="$icu4c_INSTALL_DIR" \
        -sICONV_PATH="$libiconv_INSTALL_DIR" \
        toolset=clang-$TARGET_INDEX \
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
using clang : $TARGET_INDEX : $CXX : <compileflags>"$CXXFLAGS $CPPFLAGS" <linkflags>"$LDFLAGS -shared" <archiver>$AR <ranlib>$RANLIB ;
using python : 3.9 : $MY_HOME_DIR/native/python/bin/python3 : $python_INSTALL_DIR/include/python3.9 : $python_INSTALL_DIR/lib ;
EOF
}
