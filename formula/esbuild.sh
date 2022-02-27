package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.23.tar.gz"
package set src.sum "e980247f4ddbb348e0a632bd6d98bf78befc0b2a0dc3f240f754e1b447b99e04"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
