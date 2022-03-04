package set summary "GitHub command-line tool"
package set git.url "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.5.2.tar.gz"
package set src.sum "cbf22fea4574047ca3a356ee4ef629d62b872f4c4ff4e4b78fe4f89ca431858e"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
