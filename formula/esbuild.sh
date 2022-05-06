pkg_set summary "An extremely fast JavaScript bundler and minifier"
pkg_set webpage "https://esbuild.github.io"
pkg_set git.url "https://github.com/evanw/esbuild.git"
pkg_set src.url "https://github.com/evanw/esbuild/archive/v0.14.38.tar.gz"
pkg_set src.sha "f0a7da3cd3cc689dea0a1c51933fbd16377d06bd1d72b29f6cab082373dfcc16"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/esbuild
}
