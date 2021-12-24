package set summary "Configurable static site generator"
package set webpage "https://gohugo.io"
package set src.git "https://github.com/gohugoio/hugo.git"
package set src.url "https://github.com/gohugoio/hugo/archive/v0.91.2.tar.gz"
package set src.sum "a749485225d682dee43ea6a0644d5bd2e587c0535508be90e679b21e4553f8e9"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o hugo &&
    run install_bins hugo
}
