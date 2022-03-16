package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.27.tar.gz"
package set src.sum "83f1e5f9788f8ad2aacc4617ef6120355498ba506257d2a69b74f47a7337eb5f"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
