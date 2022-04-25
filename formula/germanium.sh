pkg_set summary "Generate image from source code"
pkg_set git.url "https://github.com/matsuyoshi30/germanium.git"
pkg_set src.url "https://github.com/matsuyoshi30/germanium/archive/refs/tags/v1.2.2.tar.gz"
pkg_set src.sha "859fed54957f46e25b4577b561a810186cc21c1f0dfd99d5226e99764df195d9"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/germanium
}
