package set summary "Configurable static site generator"
package set webpage "https://gohugo.io"
package set src.git "https://github.com/gohugoio/hugo.git"
package set src.url "https://github.com/gohugoio/hugo/archive/v0.90.0.tar.gz"
package set src.sum "f7b83a5aa20241a32543427ca870e3e546cfdd31a97e7c63d1114c62b51d7b22"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o hugo &&
    run install_bins hugo
}
