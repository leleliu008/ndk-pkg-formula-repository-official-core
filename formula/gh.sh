package set summary "GitHub command-line tool"
package set git.url "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.8.0.tar.gz"
package set src.sum "d4aed3f4325bc518cf4af6fc7989ab35b498e42e8f97ba0e6bb07d7e3b14886a"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) \
        -X github.com/cli/cli/internal/build.Version=$PACKAGE_VERSION \
        ./cmd/gh
}
