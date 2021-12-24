package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set src.git "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.8.tar.gz"
package set src.sum "7ee97838858259f5d9e053319c8eb69a8119e95d40955a06cb586da2ebabb1c6"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
