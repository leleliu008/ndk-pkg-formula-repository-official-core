pkg_set summary "Terminal based graphical activity monitor inspired by gtop and vtop"
pkg_set git.url "https://github.com/xxxserxxx/gotop.git"
pkg_set src.url "https://github.com/xxxserxxx/gotop/archive/v4.1.3.tar.gz"
pkg_set src.sha "c0a02276e718b988d1220dc452063759c8634d42e1c01a04c021486c1e61612d"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "go"

build() {
    gow -X main.Version=v$PACKAGE_VERSION -X main.BuildDate=$(date +%Y%m%dT%H%M%S) ./cmd/gotop
}
