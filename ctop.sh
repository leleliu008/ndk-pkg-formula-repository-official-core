summary "Top-like interface for container metrics"
webpage "https://ctop.sh"
src_git "https://github.com/bcicen/ctop.git"
src_url "https://github.com/bcicen/ctop/archive/refs/tags/v0.7.5.tar.gz"
src_sum "a9a3be0e5eab2fee6b44a5d063188a354f9c0dde3d96a169d1490981f7826e9a"
license "MIT"
bsystem "go"

build_in_sourced

build() {
    run go build -trimpath -v -tags release -ldflags "'-w -X main.version=$(version)'" -o ctop &&
    run install_bins ctop
}
