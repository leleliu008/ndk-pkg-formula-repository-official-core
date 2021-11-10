package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set src.git "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.13.12.tar.gz"
package set src.sum "dd15aef4e3dde9494edbb075ad1ccc7770cd9c402b0193b4fa914f745ac9d7a3"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
