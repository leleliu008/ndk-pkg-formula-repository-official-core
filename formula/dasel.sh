package set summary "JSON, YAML, TOML, XML, and CSV query and modification tool"
package set git.url "https://github.com/TomWright/dasel.git"
package set src.url "https://github.com/TomWright/dasel/archive/v1.22.1.tar.gz"
package set src.sum "2d80f2eaa326aef1aca1e535f89d73da0642c7c5709ee51a30b972d1bdd132d1"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X github.com/tomwright/dasel/internal.Version=$PACKAGE_VERSION ./cmd/dasel
}
