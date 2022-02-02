package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.16.tar.gz"
package set src.sum "b8a0c8e23e2483fb68a2a1046c1d025d91b4c06fb97852f2f72e8d3fb4459ec3"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
