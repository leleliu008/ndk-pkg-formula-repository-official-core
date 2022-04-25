pkg_set summary "An extremely fast JavaScript bundler and minifier"
pkg_set webpage "https://esbuild.github.io"
pkg_set git.url "https://github.com/evanw/esbuild.git"
pkg_set src.url "https://github.com/evanw/esbuild/archive/v0.14.32.tar.gz"
pkg_set src.sha "0402865b8b2511c070c641935b2eaeab58424a4655d01b817e76f2c8ece6ea6e"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/esbuild
}
