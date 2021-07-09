package set summary "VP8/VP9 video codec"
package set webpage "https://www.webmproject.org/code/"
package set src.git "https://github.com/webmproject/libvpx.git"
package set src.url "https://github.com/webmproject/libvpx/archive/v1.10.0.tar.gz"
package set src.sum "85803ccbdbdd7a3b03d930187cb055f1353596969c1f92ebec2db839fa4f834a"
package set license "BSD-3-Clause"
package set dep.cmd "yasm"
package set bsystem "configure"

build() {
    case $TARGET_OS_ARCH in
        i686)    export AS=yasm ;;
        x86_64)  export AS=yasm ;;
    esac

    run $SOURCE_DIR/configure \
        --prefix="$ABI_INSTALL_DIR" \
        --target="$(target)" \
        --disable-examples \
        --disable-unit-tests \
        --disable-realtime-only \
        --enable-pic \
        --enable-vp9-highbitdepth &&
    makew
    makew install
}

target() {
    case $TARGET_OS_ARCH in
        armv7a)  echo  armv7-android-gcc ;;
        aarch64) echo  arm64-android-gcc ;;
        i686)    echo    x86-android-gcc ;;
        x86_64)  echo x86_64-android-gcc ;;
    esac
}
