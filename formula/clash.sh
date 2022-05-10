pkg_set summary "Rule-based tunnel in Go"
pkg_set git.url "https://github.com/Dreamacro/clash.git"
pkg_set src.url "https://github.com/Dreamacro/clash/archive/v1.10.6.tar.gz"
pkg_set src.sha "b56c6f978f43257da2663b8e11c219d08c16bbfc7704dd8bfdd8c4006f138c0d"
pkg_set license "GPL-3.0-only"
pkg_set bsystem "go"

build() {
    gow -X github.com/Dreamacro/clash/constant.Version=$PACKAGE_VERSION -X "\"github.com/Dreamacro/clash/constant.BuildTime=$(date -u)\""
}
