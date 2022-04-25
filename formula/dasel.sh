pkg_set summary "JSON, YAML, TOML, XML, and CSV query and modification tool"
pkg_set git.url "https://github.com/TomWright/dasel.git"
pkg_set src.url "https://github.com/TomWright/dasel/archive/v1.24.1.tar.gz"
pkg_set src.sha "ca1fa030f41abcd3659e76d7413ce14c551f40d41769e7a000a46f4fea6d0b64"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X github.com/tomwright/dasel/internal.Version=$PACKAGE_VERSION ./cmd/dasel
}
