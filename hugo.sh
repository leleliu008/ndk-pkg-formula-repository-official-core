package set summary "Configurable static site generator"
package set webpage "https://gohugo.io"
package set src.git "https://github.com/gohugoio/hugo.git"
package set src.url "https://github.com/gohugoio/hugo/archive/v0.80.0.tar.gz"
package set src.sum "4ddcd6ebea21e5fd4067db4a481ab7810e34496d5991a3520169c8f5ee1d38bb"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -o hugo &&
    run install_bins hugo
}
