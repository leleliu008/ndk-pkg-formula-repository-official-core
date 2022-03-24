package set summary "Cross-platform build utility based on Lua"
package set webpage "https://xmake.io/"
package set git.url "https://github.com/xmake-io/xmake.git"
package set src.url "https://github.com/xmake-io/xmake/releases/download/v2.6.4/xmake-v2.6.4.tar.gz"
package set src.sum "ca8fb4f269718bee06078241cd72ec6883167f493fe11d623a0d37419b2a9ffd"
package set license "Apache-2.0"
package set bscript "core"
package set bsystem "xmake"

build() {
    xmakew && run rm -rf "$TARGET_INSTALL_DIR" && run install_bins "$TARGET_BUILD_DIR/xmake"
}
