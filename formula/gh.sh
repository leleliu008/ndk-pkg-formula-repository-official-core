pkg_set summary "GitHub command-line tool"
pkg_set git.url "https://github.com/cli/cli.git"
pkg_set src.url "https://github.com/cli/cli/archive/v2.12.1.tar.gz"
pkg_set src.sha "d37a96d3b12c489458e5c35ddbdeacac133c766ee50580aee4657eb9ad185380"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
