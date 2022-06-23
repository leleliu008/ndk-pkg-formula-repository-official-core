pkg_set summary "Cross-platform build utility based on Lua"
pkg_set webpage "https://xmake.io/"
pkg_set git.url "https://github.com/xmake-io/xmake.git"
pkg_set src.url "https://github.com/xmake-io/xmake/releases/download/v2.6.8/xmake-v2.6.8.tar.gz"
pkg_set src.sha "2f74698abbb009dfe0e80399a94e7a903f2fb12c2fec503cd6152a52a1469013"
pkg_set license "Apache-2.0"
pkg_set bscript "core"
pkg_set bsystem "xmake"

build() {
    xmakew && run rm -rf "$TARGET_INSTALL_DIR" && run install_bins "$TARGET_BUILDIN_DIR/xmake"
}
