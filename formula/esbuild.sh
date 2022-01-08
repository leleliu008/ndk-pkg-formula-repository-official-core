package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.10.tar.gz"
package set src.sum "068d36ae29e6c004971b00ae0b0b96b55693a6beebdb9db4c6e95613d981ff63"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
