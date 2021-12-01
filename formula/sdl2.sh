package set summary "Low-level access to audio, keyboard, mouse, joystick and graphics"
package set webpage "https://www.libsdl.org"
package set src.git "https://github.com/libsdl-org/SDL.git"
package set src.url "https://libsdl.org/release/SDL2-2.0.18.tar.gz"
package set src.sum "94d40cd73dbfa10bb6eadfbc28f355992bb2d6ef6761ad9d4074eff95ee5711c"
package set license "Zlib"
package set bsystem "ndk-build"

prepare() {
    run ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk APP_PLATFORM=android-$TARGET_OS_VERS V=1
}

build() {
    install -d                               "$ABI_INSTALL_DIR" &&
    cp -rv "$SOURCE_DIR/include"             "$ABI_INSTALL_DIR" &&
    cp -rv "$SOURCE_DIR/libs/$TARGET_OS_ABI" "$ABI_LIBRARY_DIR"
}
