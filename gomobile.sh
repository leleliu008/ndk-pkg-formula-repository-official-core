summary "a tool for building and running mobile apps written in Go"
webpage "https://github.com/golang/mobile"
src_git "https://github.com/golang/mobile.git"
bsystem "go"

build_in_sourced

build() {
    run go build -v -trimpath -o gobind ./cmd/gobind &&
    run go build -v -trimpath -o gomobile ./cmd/gomobile &&
    run install_bins gobind &&
    run install_bins gomobile
}
