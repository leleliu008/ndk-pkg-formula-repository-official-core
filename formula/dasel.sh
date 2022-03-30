package set summary "JSON, YAML, TOML, XML, and CSV query and modification tool"
package set git.url "https://github.com/TomWright/dasel.git"
package set src.url "https://github.com/TomWright/dasel/archive/v1.24.1.tar.gz"
package set src.sum "ca1fa030f41abcd3659e76d7413ce14c551f40d41769e7a000a46f4fea6d0b64"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X github.com/tomwright/dasel/internal.Version=$PACKAGE_VERSION ./cmd/dasel
}
