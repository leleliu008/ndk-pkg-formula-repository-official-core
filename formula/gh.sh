package set summary "GitHub command-line tool"
package set git.url "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.7.0.tar.gz"
package set src.sum "d6cd8887f22fd57d477a0e640b63f7632b345056bf01b4dfc080e1e7a8191136"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
