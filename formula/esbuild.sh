package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set src.git "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.1.tar.gz"
package set src.sum "03df71323b19829c4c89c432d31c37eb6753c49c44281039fecf3049ba929184"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
