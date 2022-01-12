package set summary "a better alternative to 'df'"
package set git.url "https://github.com/muesli/duf.git"
package set src.url "https://github.com/muesli/duf/archive/v0.7.0.tar.gz"
package set src.sum "6f70fd0f0d51bfcfe20b8acc8c3a52573fc1ceed44ce97dbbb9d470bbe4467dc"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o duf &&
    run install_bins duf
}
