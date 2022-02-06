package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.18.tar.gz"
package set src.sum "60aba3c9be11f2a2eebc9c2ff47374da126d66fbc30ec349bb5ceac3a6cb2ea5"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
