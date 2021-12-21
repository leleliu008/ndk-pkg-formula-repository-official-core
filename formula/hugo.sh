package set summary "Configurable static site generator"
package set webpage "https://gohugo.io"
package set src.git "https://github.com/gohugoio/hugo.git"
package set src.url "https://github.com/gohugoio/hugo/archive/v0.91.0.tar.gz"
package set src.sum "d1401c58fe0aa78cecca4d28e6b204151e8960b0c0d95a2c48f3ddd4a073da9e"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o hugo &&
    run install_bins hugo
}
