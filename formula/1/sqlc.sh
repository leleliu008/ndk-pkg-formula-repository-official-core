package set summary "Generate type safe Go from SQL"
package set webpage "https://sqlc.dev/"
package set git.url "https://github.com/kyleconroy/sqlc.git"
package set src.url "https://github.com/kyleconroy/sqlc/archive/v1.11.0.tar.gz"
package set src.sum "6e18562a066ea70687e7abb642e3dde48a128633f71d29788c4df6a886eac1d1"
package set license "MIT"
package set bsystem "go"

build() {
    gow ./cmd/sqlc
}
