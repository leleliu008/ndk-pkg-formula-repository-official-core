package set summary "GitHub command-line tool"
package set git.url "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.6.0.tar.gz"
package set src.sum "e5dda0f214f31b523a58ed227bb837695110c2a89e24e7d3e306d017b42002a4"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
