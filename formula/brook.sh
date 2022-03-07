package set summary "Cross-platform strong encryption and not detectable proxy. Zero-Configuration"
package set webpage "https://txthinking.github.io/brook/"
package set git.url "https://github.com/txthinking/brook.git"
package set src.url "https://github.com/txthinking/brook/archive/refs/tags/v20220404.tar.gz"
package set src.sum "a119adf673df8f61fcaec841e471392cfdd9d307fe52ec9d6b3d9393846a7630"
package set license "GPL-3.0-only"
package set bsystem "go"

build() {
    gow ./cli/brook
}
