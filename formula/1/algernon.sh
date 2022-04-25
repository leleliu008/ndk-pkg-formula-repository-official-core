pkg_set summary "Pure Go web server with Lua, Markdown, HTTP/2 and template support"
pkg_set git.url "https://github.com/xyproto/algernon.git"
pkg_set src.url "https://github.com/xyproto/algernon/archive/1.12.14.tar.gz"
pkg_set src.sha "cab5b01923142e0326ea2a01797814bb2e8ea9f7c6c41a3ea0ae7df3b667e86e"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -mod vendor
}
