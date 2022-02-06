package set summary "Low-level access to audio, keyboard, mouse, joystick and graphics"
package set webpage "https://www.libsdl.org"
package set git.url "https://github.com/libsdl-org/SDL.git"
package set src.url "https://libsdl.org/release/SDL2-2.0.20.tar.gz"
package set src.sum "c56aba1d7b5b0e7e999e4a7698c70b63a3394ff9704b5f6e1c57e0c16f04dd06"
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
