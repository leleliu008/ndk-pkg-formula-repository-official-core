package set summary "Pure Go web server with Lua, Markdown, HTTP/2 and template support"
package set git.url "https://github.com/xyproto/algernon.git"
package set src.url "https://github.com/xyproto/algernon/archive/1.12.14.tar.gz"
package set src.sum "cab5b01923142e0326ea2a01797814bb2e8ea9f7c6c41a3ea0ae7df3b667e86e"
package set license "MIT"
package set bsystem "go"

build() {
    gow -mod vendor
}
