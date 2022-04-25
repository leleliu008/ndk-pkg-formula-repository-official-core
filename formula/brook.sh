pkg_set summary "Cross-platform strong encryption and not detectable proxy. Zero-Configuration"
pkg_set webpage "https://txthinking.github.io/brook/"
pkg_set git.url "https://github.com/txthinking/brook.git"
pkg_set src.url "https://github.com/txthinking/brook/archive/refs/tags/v20220406.tar.gz"
pkg_set src.sha "cf4433263cc755edfe56be66d206b7ee5083faaaa8b30bb4102174ad73e22764"
pkg_set license "GPL-3.0-only"
pkg_set bsystem "go"

build() {
    gow ./cli/brook
}
