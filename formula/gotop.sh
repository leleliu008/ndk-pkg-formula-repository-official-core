package set summary "Terminal based graphical activity monitor inspired by gtop and vtop"
package set git.url "https://github.com/xxxserxxx/gotop.git"
package set src.url "https://github.com/xxxserxxx/gotop/archive/v4.1.3.tar.gz"
package set src.sum "c0a02276e718b988d1220dc452063759c8634d42e1c01a04c021486c1e61612d"
package set license "BSD-3-Clause"
package set bsystem "go"

build() {
    gow -X main.Version=v$PACKAGE_VERSION -X main.BuildDate=$(date +%Y%m%dT%H%M%S) ./cmd/gotop
}
