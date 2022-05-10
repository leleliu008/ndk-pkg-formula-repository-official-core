pkg_set summary "JSON, YAML, TOML, XML, and CSV query and modification tool"
pkg_set git.url "https://github.com/TomWright/dasel.git"
pkg_set src.url "https://github.com/TomWright/dasel/archive/v1.24.3.tar.gz"
pkg_set src.sha "86d497e7dcfe63901ef0aeddb31e3989959d60d785a04f98fc6a88b6f497980a"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X github.com/tomwright/dasel/internal.Version=$PACKAGE_VERSION ./cmd/dasel
}
