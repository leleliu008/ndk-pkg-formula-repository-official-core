summary "GitHub command-line tool"
webpage "https://github.com/cli/cli"
src_url "https://github.com/cli/cli/archive/v1.5.0.tar.gz"
src_sum "49c42a3b951b67e29bc66e054fedb90ac2519f7e1bfc5c367e82cb173e4bb056"
license "MIT"
bsystem "go"

build_in_sourced

build() {
    run go build -v -trimpath -ldflags "\"-X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) -X github.com/cli/cli/internal/build.Version=$(version)\"" -o gh ./cmd/gh &&
    install_bins gh
}
