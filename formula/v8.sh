pkg_set summary "Google JavaScript engine"
pkg_set webpage "https://v8.dev/"
pkg_set git.url "https://github.com/v8/v8.git"
pkg_set src.url "dir:///dev/null"
pkg_set version "9.9.115.8"
pkg_set license "BSD-3-Clause"
pkg_set dep.cmd "git ninja"

prepare() {
    run cd ..
    run git clone https://chromium.googlesource.com/chromium/tools/depot_tools
    run export PATH="'$PWD/depot_tools:$PATH'"

    run command fetch v8
    run "echo \"target_os = ['android']\" >> .gclient"
    run cd v8
    run git checkout $PACKAGE_VERSION
    run "yes | gclient sync"

    GN="$(find "$PWD/buildtools" -name gn)"

    if [ -z "$GN" ] ; then
        die "gn command not found."
    fi

    PACKAGE_BSCRIPT_DIR="$PWD"
    PACKAGE_SRC_TOP_DIR="$PWD"
}

build() {
    case $TARGET_OS_ABI in
        armeabi-v7a)
            GN_ARG_TARGET_CPU=arm
            GN_ARG_V8_TARGET_CPU=arm
            ;;
        arm64-v8a)
            GN_ARG_TARGET_CPU=arm64
            GN_ARG_V8_TARGET_CPU=arm64
            ;;
        x86)
            GN_ARG_TARGET_CPU=x86
            GN_ARG_V8_TARGET_CPU=x86
            ;;
        x86_64)
            GN_ARG_TARGET_CPU=x64
            GN_ARG_V8_TARGET_CPU=x64
    esac

    run $GN gen . --root="$PACKAGE_BSCRIPT_DIR" --args="'is_debug=false is_component_build=true v8_enable_i18n_support=false target_os=\"android\" target_cpu=\"$GN_ARG_TARGET_CPU\" v8_target_cpu=\"$GN_ARG_V8_TARGET_CPU\"'"
    run ninja
    run install_bins d8
    run install_incs "$PACKAGE_BSCRIPT_DIR"/include/*.h
    run install_libs *.so
}
