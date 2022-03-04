package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.24.tar.gz"
package set src.sum "01a751b3d02ecce0fc13a052368252b2d8f2f15841a2653dbf2f3f7497c28d59"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
