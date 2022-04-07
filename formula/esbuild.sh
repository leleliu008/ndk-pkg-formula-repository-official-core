package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.30.tar.gz"
package set src.sum "d1ad791e3bccdff601e79ab8e33dd1e6b1c164e970dbd5bd3a50838a60c0f26d"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
