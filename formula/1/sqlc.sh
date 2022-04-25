pkg_set summary "Generate type safe Go from SQL"
pkg_set webpage "https://sqlc.dev/"
pkg_set git.url "https://github.com/kyleconroy/sqlc.git"
pkg_set src.url "https://github.com/kyleconroy/sqlc/archive/v1.11.0.tar.gz"
pkg_set src.sha "6e18562a066ea70687e7abb642e3dde48a128633f71d29788c4df6a886eac1d1"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/sqlc
}
