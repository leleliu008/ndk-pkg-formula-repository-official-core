pkg_set summary "JSON, YAML, TOML, XML, and CSV query and modification tool"
pkg_set git.url "https://github.com/TomWright/dasel.git"
pkg_set src.url "https://github.com/TomWright/dasel/archive/v1.25.0.tar.gz"
pkg_set src.sha "49f7a34b31c87d27ef5c5a32b87a603ac6d7d4d1a52533942676429b747e1f7e"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X github.com/tomwright/dasel/internal.Version=$PACKAGE_VERSION ./cmd/dasel
}
