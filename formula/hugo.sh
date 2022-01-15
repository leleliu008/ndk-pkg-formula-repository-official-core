package set summary "Configurable static site generator"
package set webpage "https://gohugo.io"
package set git.url "https://github.com/gohugoio/hugo.git"
package set src.url "https://github.com/gohugoio/hugo/archive/v0.92.0.tar.gz"
package set src.sum "3ac140757a7322f0a7511d75fb3b1e77e6a0f0c6e4ea1b0afdbebc00e0d0a7d1"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o hugo &&
    run install_bins hugo
}
