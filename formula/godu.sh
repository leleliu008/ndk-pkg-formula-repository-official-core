package set summary "Simple golang utility helping to discover large files/folders."
package set git.url "https://github.com/viktomas/godu.git"
package set src.url "https://github.com/viktomas/godu/archive/refs/tags/v1.3.tar.gz"
package set src.sum "aec09355c2cf8b44da8b8694326b158563b6b05587f6c2de996a1b52bb523ca0"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o godu &&
    run install_bins godu
}
