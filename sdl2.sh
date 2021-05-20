package set summary "Low-level access to audio, keyboard, mouse, joystick and graphics"
package set webpage "https://www.libsdl.org"
package set src.url "https://libsdl.org/release/SDL2-2.0.12.tar.gz"
package set src.sum "349268f695c02efbc9b9148a70b85e58cefbbf704abd3e91be654db7f1e2c863"
package set license "Zlib"
package set bsystem "ndk-build"

prepare() {
    ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT="Android.mk" APP_PLATFORM=android-$TARGET_OS_VERS V=1
}

build() {
    install -d                               "$ABI_INSTALL_DIR" &&
    cp -rv "$SOURCE_DIR/include"             "$ABI_INSTALL_DIR" &&
    cp -rv "$SOURCE_DIR/libs/$TARGET_OS_ABI" "$ABI_LIBRARY_DIR"
}
