summary "Platform built on V8 to build network applications"
webpage "https://nodejs.org"
src_git "https://github.com/nodejs/node.git"
src_url "https://nodejs.org/dist/v15.8.0/node-v15.8.0.tar.xz"
src_sum "e23ae2f6181444066cf74e03c3e30e650fbc63764c2b89829928cddf3e4230a9"
license "MIT"
require "pkg-config"
sdk_api 23

prepare() {
    sed_in_place 's|-Wl,--start-group||g' tools/gyp/pylib/gyp/generator/make.py &&
    sed_in_place 's|-Wl,--end-group||g'   tools/gyp/pylib/gyp/generator/make.py
}

build() {
    export CC_host="$CC_FOR_BUILD"
    export CXX_host="$CXX_FOR_BUILD"

    export GYP_DEFINES="target_arch=$HOST_MACHINE_CPU_FAMILY v8_target_arch=$HOST_MACHINE_CPU_FAMILY android_target_arch=$HOST_MACHINE_CPU_FAMILY host_os=$BUILD_MACHINE_OS_TYPE OS=android"
    
    "$SOURCE_DIR/configure" \
        --prefix="$ABI_INSTALL_DIR" \
        --dest-cpu=$(dest_cpu) \
        --dest-os=android \
        --cross-compiling \
        --verbose &&
    $MAKE -C "$SOURCE_DIR" &&
    $MAKE -C "$SOURCE_DIR" install
}

dest_cpu() {
    case $BUILD_FOR_ARCH in
        armv7a)  echo arm  ;;
        i686)    echo ia32 ;;
        x86_64)  echo x64  ;;
        aarch64) echo arm64 ;;
        *) die "$BUILD_FOR_ARCH: not support."
    esac
}
