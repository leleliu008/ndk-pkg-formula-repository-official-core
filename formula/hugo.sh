package set summary "Configurable static site generator"
package set webpage "https://gohugo.io"
package set src.git "https://github.com/gohugoio/hugo.git"
package set src.url "https://github.com/gohugoio/hugo/archive/v0.89.1.tar.gz"
package set src.sum "c47f144291819a8d9f065f69ab290a198dfabde86a27ac2325a89f03c6e5ea3f"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -o hugo &&
    run install_bins hugo
}
