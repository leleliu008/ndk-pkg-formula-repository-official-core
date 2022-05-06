pkg_set summary "GitHub command-line tool"
pkg_set git.url "https://github.com/cli/cli.git"
pkg_set src.url "https://github.com/cli/cli/archive/v2.9.0.tar.gz"
pkg_set src.sha "730b600d33afb67d84af4dca1af80cb1fbff79d302ac4f840fc8e9e4c25fceb7"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
