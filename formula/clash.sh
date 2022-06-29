pkg_set summary "Rule-based tunnel in Go"
pkg_set git.url "https://github.com/Dreamacro/clash.git"
pkg_set src.url "https://github.com/Dreamacro/clash/archive/v1.11.0.tar.gz"
pkg_set src.sha "551d6e1bfb87bb7bb7dc0cd36a763791d95d09a610c49544575baa1905b18986"
pkg_set license "GPL-3.0-only"
pkg_set bsystem "go"

build() {
    gow \
        -X "\"github.com/Dreamacro/clash/constant.Version=$PACKAGE_VERSION\"" \
        -X "\"github.com/Dreamacro/clash/constant.BuildTime=$(date -u)\""
}
