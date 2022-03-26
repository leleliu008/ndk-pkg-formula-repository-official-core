package set summary "Cross-platform strong encryption and not detectable proxy. Zero-Configuration"
package set webpage "https://txthinking.github.io/brook/"
package set git.url "https://github.com/txthinking/brook.git"
package set src.url "https://github.com/txthinking/brook/archive/refs/tags/v20220406.tar.gz"
package set src.sum "cf4433263cc755edfe56be66d206b7ee5083faaaa8b30bb4102174ad73e22764"
package set license "GPL-3.0-only"
package set bsystem "go"

build() {
    gow ./cli/brook
}
