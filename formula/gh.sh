package set summary "GitHub command-line tool"
package set git.url "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.5.0.tar.gz"
package set src.sum "4e9d1cbcdd2346cab5b7fc176cd57c07ed3628a0241fad8a48fe4df6a354b120"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION ./cmd/gh
}
