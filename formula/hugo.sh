package set summary "Configurable static site generator"
package set webpage "https://gohugo.io"
package set src.git "https://github.com/gohugoio/hugo.git"
package set src.url "https://github.com/gohugoio/hugo/archive/v0.90.1.tar.gz"
package set src.sum "456789091bfe30dd3f69b63ac627d6e08ae973326294cc6517be8ed70353af35"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o hugo &&
    run install_bins hugo
}
