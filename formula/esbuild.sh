package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set src.git "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.8.56.tar.gz"
package set src.sum "45efe10eeef55349981466866960ab86ed99626b5ebd7b4b102dca9d922e5869"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
