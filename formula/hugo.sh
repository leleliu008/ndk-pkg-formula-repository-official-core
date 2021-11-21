package set summary "Configurable static site generator"
package set webpage "https://gohugo.io"
package set src.git "https://github.com/gohugoio/hugo.git"
package set src.url "https://github.com/gohugoio/hugo/archive/v0.89.4.tar.gz"
package set src.sum "9d4f61788f8d886913a1be15b3eae04fad04a4e243bd7f65c5e7367bd617856d"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -o hugo &&
    run install_bins hugo
}
