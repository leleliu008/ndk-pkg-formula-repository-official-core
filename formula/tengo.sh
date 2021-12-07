package set summary "Fast script language for Go"
package set webpage "https://tengolang.com"
package set src.git "https://github.com/d5/tengo.git"
package set src.url "https://github.com/d5/tengo/archive/v2.10.0.tar.gz"
package set src.sum "487331f79a3742fc05817d6210f6fb751b3ade90826910dde634037c60804f4e"
package set license "MIT"
package set bsystem "go"

build() {
    go build -v -trimpath -o tengo ./cmd/tengo &&
    run install_bins tengo
}
