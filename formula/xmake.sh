pkg_set summary "Cross-platform build utility based on Lua"
pkg_set webpage "https://xmake.io/"
pkg_set git.url "https://github.com/xmake-io/xmake.git"
pkg_set src.url "https://github.com/xmake-io/xmake/releases/download/v2.6.4/xmake-v2.6.4.tar.gz"
pkg_set src.sha "ca8fb4f269718bee06078241cd72ec6883167f493fe11d623a0d37419b2a9ffd"
pkg_set license "Apache-2.0"
pkg_set bscript "core"
pkg_set bsystem "xmake"

build() {
    xmakew && run rm -rf "$TARGET_INSTALL_DIR" && run install_bins "$TARGET_BUILD_DIR/xmake"
}
