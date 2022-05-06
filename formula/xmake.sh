pkg_set summary "Cross-platform build utility based on Lua"
pkg_set webpage "https://xmake.io/"
pkg_set git.url "https://github.com/xmake-io/xmake.git"
pkg_set src.url "https://github.com/xmake-io/xmake/releases/download/v2.6.5/xmake-v2.6.5.tar.gz"
pkg_set src.sha "868f109f660d3f42d8f67aad71b8075b7c3b606d7529956bfc94ad052bb8c1bd"
pkg_set license "Apache-2.0"
pkg_set bscript "core"
pkg_set bsystem "xmake"

build() {
    xmakew && run rm -rf "$TARGET_INSTALL_DIR" && run install_bins "$TARGET_BUILDIN_DIR/xmake"
}
