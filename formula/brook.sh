package set summary "Cross-platform strong encryption and not detectable proxy. Zero-Configuration"
package set webpage "https://txthinking.github.io/brook/"
package set git.url "https://github.com/txthinking/brook.git"
package set src.url "https://github.com/txthinking/brook/archive/refs/tags/v20210401.tar.gz"
package set src.sum "6229b2f0b53d94acb873e246d10f2a4662af2a031a03e7fb5c3befffcd998731"
package set license "GPL-3.0-only"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" ./cli/brook &&
    run install_bins brook
}
