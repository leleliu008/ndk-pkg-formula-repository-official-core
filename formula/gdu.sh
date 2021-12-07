package set summary "Disk usage analyzer with console interface written in Go"
package set src.git "https://github.com/dundee/gdu.git"
package set src.url "https://github.com/dundee/gdu/archive/v5.12.0.tar.gz"
package set src.sum "dc026d3981577e11073c3043531b70cecccc7112bd907cc17d34e123eca7c358"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags="'-s -w -X github.com/dundee/gdu/v5/build.Version=v${PACKAGE_VERSION} -X github.com/dundee/gdu/v5/build.Time=${TIMESTAMP_UNIX}'" ./cmd/gdu &&
    run install_bins gdu
}
