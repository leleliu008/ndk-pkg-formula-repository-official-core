package set summary "Rule-based tunnel in Go"
package set git.url "https://github.com/Dreamacro/clash.git"
package set src.url "https://github.com/Dreamacro/clash/archive/v1.9.0.tar.gz"
package set src.sum "a276b1e7247e847fe44fe336a67bdecbb442748a1e7fa01d9c1ce0d52f9168ef"
package set license "GPL-3.0-only"
package set bsystem "go"

build() {
    gow -X github.com/Dreamacro/clash/constant.Version=$PACKAGE_VERSION -X "\"github.com/Dreamacro/clash/constant.BuildTime=$(date -u)\""
}
