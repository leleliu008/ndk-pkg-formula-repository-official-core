package set summary "Generate image from source code"
package set git.url "https://github.com/matsuyoshi30/germanium.git"
package set src.url "https://github.com/matsuyoshi30/germanium/archive/refs/tags/v1.2.2.tar.gz"
package set src.sum "859fed54957f46e25b4577b561a810186cc21c1f0dfd99d5226e99764df195d9"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o germanium ./cmd/germanium &&
    run install_bins germanium
}
