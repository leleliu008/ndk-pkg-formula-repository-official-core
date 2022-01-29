package set summary "Cross-platform build utility based on Lua"
package set webpage "https://xmake.io/"
package set git.url "https://github.com/xmake-io/xmake.git"
package set src.url "https://github.com/xmake-io/xmake/releases/download/v2.6.3/xmake-v2.6.3.tar.gz"
package set src.sum "43c739b8faa3be986f95421c7ba1e135ff18d4723fb88b7e0bb0cdd27ef37430"
package set license "Apache-2.0"
package set sourced "core"
package set bsystem "xmake"
#package set binsrcd "yes"

build() {
    xmakew && run rm -rf "$ABI_INSTALL_DIR" && run install_bins "$BUILD_DIR/xmake"
}
