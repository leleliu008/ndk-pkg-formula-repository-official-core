package set summary "JSON, YAML, TOML, XML, and CSV query and modification tool"
package set git.url "https://github.com/TomWright/dasel.git"
package set src.url "https://github.com/TomWright/dasel/archive/v1.24.0.tar.gz"
package set src.sum "ab8e8433a6a72f842f83868940e3010755fd2572f83288a2f4a81b50bb7a92e3"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X github.com/tomwright/dasel/internal.Version=$PACKAGE_VERSION ./cmd/dasel
}
