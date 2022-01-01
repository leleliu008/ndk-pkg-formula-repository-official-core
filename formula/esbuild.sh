package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.9.tar.gz"
package set src.sum "b3f170b011ec16e5417b2f0c65dae5b404e6359df33100b3e46f8e827fba0e5d"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
