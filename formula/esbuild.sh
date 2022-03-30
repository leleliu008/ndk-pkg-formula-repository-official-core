package set summary "An extremely fast JavaScript bundler and minifier"
package set webpage "https://esbuild.github.io"
package set git.url "https://github.com/evanw/esbuild.git"
package set src.url "https://github.com/evanw/esbuild/archive/v0.14.29.tar.gz"
package set src.sum "4e9b3b4da47f52b9d960145d289b06ffd79265b3275b406b4832d54bda9be3b9"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/esbuild
}
