pkg_set summary "GitHub command-line tool"
pkg_set git.url "https://github.com/cli/cli.git"
pkg_set src.url "https://github.com/cli/cli/archive/v2.13.0.tar.gz"
pkg_set src.sha "f8bc46bda990bc9947a26f5505533b86903c96f95047b2dacf7c9534e5b86760"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
