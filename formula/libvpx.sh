pkg_set summary "VP8/VP9 video codec"
pkg_set webpage "https://www.webmproject.org/code/"
pkg_set git.url "https://github.com/webmproject/libvpx.git"
pkg_set src.url "https://github.com/webmproject/libvpx/archive/v1.11.0.tar.gz"
pkg_set src.sha "965e51c91ad9851e2337aebcc0f517440c637c506f3a03948062e3d5ea129a83"
pkg_set license "BSD-3-Clause|LICENSE|https://raw.githubusercontent.com/webmproject/libvpx/main/LICENSE"
pkg_set dep.cmd "yasm"
pkg_set bsystem "configure"

build() {
    case $TARGET_OS_ARCH in
        i686)    export AS=yasm ;;
        x86_64)  export AS=yasm ;;
    esac

    run $PACKAGE_INSTALLING_BST_DIR/configure \
        --prefix="$TARGET_INSTALL_DIR" \
        --target="$(target)" \
        --disable-examples \
        --disable-unit-tests \
        --disable-realtime-only \
        --enable-pic \
        --enable-vp9-highbitdepth &&
    gmakew
    gmakew install
}

target() {
    case $TARGET_OS_ARCH in
        armv7a)  echo  armv7-android-gcc ;;
        aarch64) echo  arm64-android-gcc ;;
        i686)    echo    x86-android-gcc ;;
        x86_64)  echo x86_64-android-gcc ;;
    esac
}
