package set summary "GitHub command-line tool"
package set src.git "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.3.0.tar.gz"
package set src.sum "56bcf353adc17c386377ffcdfc980cbaff36123a1c1132ba09c3c51a7d1c9b82"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags "'-X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) -X github.com/cli/cli/internal/build.Version=${PACKAGE_VERSION}'" -o gh ./cmd/gh &&
    run install_bins gh
}
