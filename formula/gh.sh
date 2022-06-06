pkg_set summary "GitHub command-line tool"
pkg_set git.url "https://github.com/cli/cli.git"
pkg_set src.url "https://github.com/cli/cli/archive/v2.11.3.tar.gz"
pkg_set src.sha "1a4a90b1893dac022c1cfb298ebb52f66a8f93b353eafcf7bbfb43c8c0b46dfa"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
