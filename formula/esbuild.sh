pkg_set summary "An extremely fast JavaScript bundler and minifier"
pkg_set webpage "https://esbuild.github.io"
pkg_set git.url "https://github.com/evanw/esbuild.git"
pkg_set src.url "https://github.com/evanw/esbuild/archive/v0.14.46.tar.gz"
pkg_set src.sha "fba0c93caca70d5319815bbacb19c70f38af7f5ffcc252f8e1050b3de9024769"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/esbuild
}
