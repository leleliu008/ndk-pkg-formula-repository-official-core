package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set src.git "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.13.15.tar.gz"
package set src.sum "e2e25dac08ad708d2152262bcb3846dae67517dab94b9990f5a69e82d03e9482"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
