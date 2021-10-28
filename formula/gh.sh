package set summary "GitHub command-line tool"
package set src.git "https://github.com/cli/cli.git"
package set src.url "https://github.com/cli/cli/archive/v2.2.0.tar.gz"
package set src.sum "597c6c1cde4484164e9320af0481e33cfad2330a02315b4c841bdc5b7543caec"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags "'-X github.com/cli/cli/internal/build.Date=$(date +%Y-%m-%d) -X github.com/cli/cli/internal/build.Version=${PACKAGE_VERSION}'" -o gh ./cmd/gh &&
    run install_bins gh
}
