summary="Low-level access to audio, keyboard, mouse, joystick and graphics"
homepage="https://www.libsdl.org"
url="https://libsdl.org/release/SDL2-2.0.12.tar.gz"
sha256="349268f695c02efbc9b9148a70b85e58cefbbf704abd3e91be654db7f1e2c863"

prepare() {
    ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT="Android.mk" APP_PLATFORM=android-21 V=1
}

build() {
    mkdir -p "$DIR_INSTALL_PREFIX" &&
    cp -r "include" "$DIR_INSTALL_PREFIX" &&
    cp -r "libs/$TARGET_ABI" "$DIR_INSTALL_PREFIX/lib"
}
