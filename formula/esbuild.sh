package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.25.tar.gz"
package set src.sum "fca00b5895abd33aca1290cacf7dfafb642fedc1548c82ecec5b638a85419236"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
