package set summary "JSON, YAML, TOML, XML, and CSV query and modification tool"
package set git.url "https://github.com/TomWright/dasel.git"
package set src.url "https://github.com/TomWright/dasel/archive/v1.23.0.tar.gz"
package set src.sum "ffb79f965269f1c34b0c2bf58ae5abbdbcbc71fd4a8c2dc09692db190128c8a8"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X github.com/tomwright/dasel/internal.Version=$PACKAGE_VERSION ./cmd/dasel
}
