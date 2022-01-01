package set summary "a better alternative to 'df'"
package set git.url "https://github.com/muesli/duf.git"
package set src.url "https://github.com/muesli/duf/archive/v0.6.2.tar.gz"
package set src.sum "f2314d8e5e133a6ce93968b3450c1710a3e432cb4a5dfc528aa0317d968a8988"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o duf &&
    run install_bins duf
}
