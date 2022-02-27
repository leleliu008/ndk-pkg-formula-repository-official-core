package set summary "Fast script language for Go"
package set webpage "https://tengolang.com"
package set git.url "https://github.com/d5/tengo.git"
package set src.url "https://github.com/d5/tengo/archive/v2.10.1.tar.gz"
package set src.sum "00c892a7cb4e847eefd36f5b8db695e184da5c090c6b509339c3b5d3a746232f"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/tengo
}
