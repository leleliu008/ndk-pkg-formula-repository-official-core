package set summary "GitHub command-line tool"
package set git.url "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.4.0.tar.gz"
package set src.sum "3c87db4d9825a342fc55bd7f27461099dd46291aea4a4a29bb95d3c896403f94"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags "'-X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) -X github.com/cli/cli/internal/build.Version=${PACKAGE_VERSION}'" -o gh ./cmd/gh &&
    run install_bins gh
}
