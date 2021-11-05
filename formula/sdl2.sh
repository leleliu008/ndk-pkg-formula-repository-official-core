package set summary "Low-level access to audio, keyboard, mouse, joystick and graphics"
package set webpage "https://www.libsdl.org"
package set src.git "https://github.com/libsdl-org/SDL.git"
package set src.url "https://libsdl.org/release/SDL2-2.0.16.tar.gz"
package set src.sum "65be9ff6004034b5b2ce9927b5a4db1814930f169c4b2dae0a1e4697075f287b"
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
