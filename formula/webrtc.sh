package set summary "Real-Time Communication"
package set webpage "https://webrtc.org/"
package set git.url "https://webrtc.googlesource.com/src.git"
package set src.url "dir:///dev/null"
package set version "1"
package set license "BSD-3-Clause"
package set dep.cmd "git gclient ninja"

# https://webrtc.github.io/webrtc-org/native-code/android/
prepare() {
    if [ "$NATIVE_OS_KIND" != linux ] ; then
        die "this library is only supported built on Linux"
    fi

    unset -f fetch

    cd .. &&
    run fetch --nohooks webrtc_android
    sed_in_place '/target_os = /d' .gclient
    run "echo \"target_os = ['android']\" >> .gclient"
    run cd src
    run git checkout main
    run "yes | gclient sync"
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

    run $PACKAGE_BSCRIPT_DIR/buildtools/linux64/gn gen . --root="$PACKAGE_BSCRIPT_DIR" --args="'is_debug=false target_os=\"android\" target_cpu=\"$GN_ARG_TARGET_CPU\" v8_target_cpu=\"$GN_ARG_V8_TARGET_CPU\"'"
    run ninja
    run install_libs *.so
}
