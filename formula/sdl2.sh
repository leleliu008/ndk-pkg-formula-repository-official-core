pkg_set summary "Low-level access to audio, keyboard, mouse, joystick and graphics"
pkg_set webpage "https://www.libsdl.org"
pkg_set git.url "https://github.com/libsdl-org/SDL.git"
pkg_set src.url "https://libsdl.org/release/SDL2-2.0.20.tar.gz"
pkg_set src.sha "c56aba1d7b5b0e7e999e4a7698c70b63a3394ff9704b5f6e1c57e0c16f04dd06"
pkg_set license "Zlib;LICENSE.txt;https://raw.githubusercontent.com/libsdl-org/SDL/main/LICENSE.txt"
pkg_set bsystem "ndk-build"
pkg_set binbstd "yes"

prepare() {
    ndk_build
}

build() {
    install -d                 "$TARGET_INSTALL_DIR" &&
    cp -rv include             "$TARGET_INSTALL_DIR" &&
    cp -rv libs/$TARGET_OS_ABI "$TARGET_INSTALL_DIR/lib"
}
