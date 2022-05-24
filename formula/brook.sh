pkg_set summary "Cross-platform strong encryption and not detectable proxy. Zero-Configuration"
pkg_set webpage "https://txthinking.github.io/brook/"
pkg_set git.url "https://github.com/txthinking/brook.git"
pkg_set src.url "https://github.com/txthinking/brook/archive/refs/tags/v20220515.tar.gz"
pkg_set src.sha "e054d0c3d0090b2015e9ff5e94a15b452a3e4e1de4588542972cc6c06965537b"
pkg_set license "GPL-3.0-only"
pkg_set bsystem "go"

build() {
    gow ./cli/brook
}
