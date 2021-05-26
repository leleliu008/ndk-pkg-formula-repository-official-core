package set summary "a tool for building and running mobile apps written in Go"
package set src.git "https://github.com/golang/mobile.git"
package set bsystem "go"

build() {
    run go build -v -trimpath -o gobind ./cmd/gobind &&
    run go build -v -trimpath -o gomobile ./cmd/gomobile &&
    run install_bins gobind &&
    run install_bins gomobile
}
