pkg_set summary "Low-level access to audio, keyboard, mouse, joystick and graphics"
pkg_set webpage "https://www.libsdl.org"
pkg_set git.url "https://github.com/libsdl-org/SDL.git"
pkg_set src.url "https://libsdl.org/release/SDL2-2.0.22.tar.gz"
pkg_set src.sha "fe7cbf3127882e3fc7259a75a0cb585620272c51745d3852ab9dd87960697f2e"
pkg_set license "Zlib|LICENSE.txt|https://raw.githubusercontent.com/libsdl-org/SDL/main/LICENSE.txt"
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
