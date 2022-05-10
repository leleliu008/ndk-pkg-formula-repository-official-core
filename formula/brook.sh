pkg_set summary "Cross-platform strong encryption and not detectable proxy. Zero-Configuration"
pkg_set webpage "https://txthinking.github.io/brook/"
pkg_set git.url "https://github.com/txthinking/brook.git"
pkg_set src.url "https://github.com/txthinking/brook/archive/refs/tags/v20220501.tar.gz"
pkg_set src.sha "31474d3a9667a153986710b989d99a4f971255f407d47eebaf15b6fc9c2f4128"
pkg_set license "GPL-3.0-only"
pkg_set bsystem "go"

build() {
    gow ./cli/brook
}
