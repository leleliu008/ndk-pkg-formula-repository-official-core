package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set src.git "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.13.14.tar.gz"
package set src.sum "b44c239f52d5dbf239c60be3c19b959e5e89a644a6f437d6345ddb6826d37d48"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
