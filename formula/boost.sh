pkg_set summary "Collection of portable C++ source libraries"
pkg_set webpage "https://www.boost.org"
pkg_set git.url "https://github.com/boostorg/boost.git"
pkg_set src.url "https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.bz2"
pkg_set src.sha "f0397ba6e982c4450f27bf32a2a83292aba035b827a5623a14636ea583318c41"
pkg_set version "1.76.0"
pkg_set license "BSL-1.0"
pkg_set dep.pkg "zstd icu4c libiconv python"
pkg_set binbstd 'yes'

# https://boostorg.github.io/build/manual/master/index.html
# https://sites.google.com/site/robdevelopertips/how-to-build-boost-1-64-0-for-android
# https://www.boost.org/doc/libs/1_76_0/libs/context/doc/html/context/architectures/crosscompiling.html
# https://www.boost.org/doc/libs/1_65_1/libs/context/doc/html/context/architectures.html
build0() {
    sed_in_place '1a set -x' bootstrap.sh &&
    sed_in_place '1a set -x' tools/build/src/engine/build.sh &&
    run ./bootstrap.sh
}

prepare() {
    sed_in_place '/rindex/d' "$COMMON_INCLUDE_H_FILEPATH" || return 1
    sed_in_place '/ftello/d' "$COMMON_INCLUDE_H_FILEPATH" || return 1
    sed_in_place '/fseeko/d' "$COMMON_INCLUDE_H_FILEPATH" || return 1

    # https://stackoverflow.com/questions/32826175/ftello-and-fseeko-android-build-errors
    # https://linux.die.net/man/3/ftello
    # int   fseeko(FILE* __fp, off_t __offset, int __whence) __RENAME(fseeko64) __INTRODUCED_IN(24);
    # off_t ftello(FILE* __fp) __RENAME(ftello64) __INTRODUCED_IN(24);
    if [ "$TARGET_OS_VERS" -lt 24 ] ; then
        sed_in_place 's|BOOST_NOWIDE_FTELL ftello|BOOST_NOWIDE_FTELL ::ftell|' libs/nowide/src/filebuf.cpp &&
        sed_in_place 's|BOOST_NOWIDE_FTELL fseeko|BOOST_NOWIDE_FTELL ::fseek|' libs/nowide/src/filebuf.cpp
    fi
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
        --prefix="$TARGET_INSTALL_DIR" \
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
using python : 3.10 : $MY_HOME_DIR/native/python/bin/python3 : $python_INSTALL_DIR/include/python3.10 : $python_INSTALL_DIR/lib ;
EOF
}
