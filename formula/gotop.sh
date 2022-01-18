package set summary "Terminal based graphical activity monitor inspired by gtop and vtop"
package set git.url "https://github.com/xxxserxxx/gotop.sh"
package set src.url "https://github.com/xxxserxxx/gotop/archive/v4.1.2.tar.gz"
package set src.sum "81518fecfdab4f4c25a4713e24d9c033ba8311bbd3e2c0435ba76349028356da"
package set license "BSD-3-Clause"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w -X main.Version=v$PACKAGE_VERSION -X main.BuildDate=$(date +%Y%m%dT%H%M%S)'" ./cmd/gotop &&
    run install_bins gotop
}
