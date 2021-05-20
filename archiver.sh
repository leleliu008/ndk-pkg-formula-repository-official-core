package set summary "Cross-platform, multi-format archive utility"
package set src.git "https://github.com/mholt/archiver.git"
package set src.url "https://github.com/mholt/archiver/archive/v3.5.0.tar.gz"
package set src.sum "8f2e3ad68553f6b58bf99e8635ff0953f62ff0a7804da7658954ffaa7d0aaa0a"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o arc cmd/arc/main.go &&
    run install_bins arc
}
