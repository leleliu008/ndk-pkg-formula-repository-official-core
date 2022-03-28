package set summary "Google's JavaScript engine"
package set webpage "https://v8.dev/"
package set git.url "https://github.com/v8/v8.git"
package set src.url "dir:///dev/null"
package set version "9.7.106.13"
package set license "BSD-3-Clause"
package set dep.cmd "git gclient ninja"

prepare() {
    unset -f fetch

    run fetch v8 || return 1
    run "echo \"target_os = ['android']\" >> .gclient" || return 1
    run cd v8 || return 1
    run git checkout $PACKAGE_VERSION || return 1
    run "yes | gclient sync" || return 1

    GN="$(find "$PWD/buildtools" -name gn)"

    if [ -z "$GN" ] ; then
        die "gn command not found."
    fi

    PACKAGE_BSCRIPT_DIR="$PWD"
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

    run $GN gen . --root="$PACKAGE_BSCRIPT_DIR" --args="'is_debug=false is_component_build=true v8_enable_i18n_support=false target_os=\"android\" target_cpu=\"$GN_ARG_TARGET_CPU\" v8_target_cpu=\"$GN_ARG_V8_TARGET_CPU\"'" &&
    run ninja &&
    run install_bins d8 &&
    run install_incs "$PACKAGE_BSCRIPT_DIR"/include/*.h &&
    run install_libs *.so
}
