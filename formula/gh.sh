pkg_set summary "GitHub command-line tool"
pkg_set git.url "https://github.com/cli/cli.git"
pkg_set src.url "https://github.com/cli/cli/archive/v2.10.1.tar.gz"
pkg_set src.sha "a94ba6a731ad558f7937d0ac46ff8034b56214ec9e24a9ad70296331b1bb12ed"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
