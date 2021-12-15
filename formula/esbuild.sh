package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set src.git "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.3.tar.gz"
package set src.sum "24d779e3ef0cc5a7f312b7c2bb5fe6bb810dedfdf4a54fd2a9b139df6fa15dbc"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
