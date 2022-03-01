package set summary "Cross-platform strong encryption and not detectable proxy. Zero-Configuration"
package set webpage "https://txthinking.github.io/brook/"
package set git.url "https://github.com/txthinking/brook.git"
package set src.url "https://github.com/txthinking/brook/archive/refs/tags/v20220401.tar.gz"
package set src.sum "cd3c467d23f4677c51e6764e0a3203cf39ac6c1081203bfd9f5c79680317be22"
package set license "GPL-3.0-only"
package set bsystem "go"

build() {
    gow ./cli/brook
}
