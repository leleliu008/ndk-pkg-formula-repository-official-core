pkg_set summary "An extremely fast JavaScript bundler and minifier"
pkg_set webpage "https://esbuild.github.io"
pkg_set git.url "https://github.com/evanw/esbuild.git"
pkg_set src.url "https://github.com/evanw/esbuild/archive/v0.14.47.tar.gz"
pkg_set src.sha "a85b62ff2ce38faaf2aadfd8bfbef659feb4d27243dfed4dcb685e33f371200f"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/esbuild
}
