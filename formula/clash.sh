pkg_set summary "Rule-based tunnel in Go"
pkg_set git.url "https://github.com/Dreamacro/clash.git"
pkg_set src.url "https://github.com/Dreamacro/clash/archive/v1.10.0.tar.gz"
pkg_set src.sha "40205e152ce73984a29f1888a1f235cb653f03a751ae5062b88b4b4076d5e87b"
pkg_set license "GPL-3.0-only"
pkg_set bsystem "go"

build() {
    gow -X github.com/Dreamacro/clash/constant.Version=$PACKAGE_VERSION -X "\"github.com/Dreamacro/clash/constant.BuildTime=$(date -u)\""
}
