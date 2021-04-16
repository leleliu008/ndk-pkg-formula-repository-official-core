summary "Cross-platform, multi-format archive utility"
src_git "https://github.com/mholt/archiver.git"
src_url "https://github.com/mholt/archiver/archive/v3.5.0.tar.gz"
src_sum "8f2e3ad68553f6b58bf99e8635ff0953f62ff0a7804da7658954ffaa7d0aaa0a"
license "MIT"
bsystem "go"

build_in_sourced

build() {
    run go build -v -trimpath -o arc cmd/arc/main.go &&
    run install_bins arc
}
