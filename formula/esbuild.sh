package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set src.git "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.2.tar.gz"
package set src.sum "092accc8b0626189f8fabf4a30b776314e248c796dbcefe0f5b7cd4b40547308"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
