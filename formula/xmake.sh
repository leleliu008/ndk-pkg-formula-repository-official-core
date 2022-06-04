pkg_set summary "Cross-platform build utility based on Lua"
pkg_set webpage "https://xmake.io/"
pkg_set git.url "https://github.com/xmake-io/xmake.git"
pkg_set src.url "https://github.com/xmake-io/xmake/releases/download/v2.6.7/xmake-v2.6.7.tar.gz"
pkg_set src.sha "206d9532e80722292b944ada91f558e0b265a176e3476eeb3e1633ea53bb15a6"
pkg_set license "Apache-2.0"
pkg_set bscript "core"
pkg_set bsystem "xmake"

build() {
    xmakew && run rm -rf "$TARGET_INSTALL_DIR" && run install_bins "$TARGET_BUILDIN_DIR/xmake"
}
