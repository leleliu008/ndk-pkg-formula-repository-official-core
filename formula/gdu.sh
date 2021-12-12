package set summary "Disk usage analyzer with console interface written in Go"
package set src.git "https://github.com/dundee/gdu.git"
package set src.url "https://github.com/dundee/gdu/archive/v5.12.1.tar.gz"
package set src.sum "81471d80aedcf20c84bcee67814d34ab2cf43477b831ffa320b7721d481c64ab"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags="'-s -w -X github.com/dundee/gdu/v5/build.Version=v${PACKAGE_VERSION} -X github.com/dundee/gdu/v5/build.Time=${TIMESTAMP_UNIX}'" ./cmd/gdu &&
    run install_bins gdu
}
