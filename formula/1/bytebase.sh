package set summary "Web-based, zero-config, dependency-free database schema change and version control tool for teams."
package set webpage "https://bytebase.com/"
package set git.url "https://github.com/bytebase/bytebase.git"
package set src.url "https://github.com/bytebase/bytebase/archive/refs/tags/0.12.0.tar.gz"
package set src.sum "b74fb9f05b2fa15ed1b4695573257884b5c159da48b3cdd2f3eb2d660df7ac4d"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -o bytebase-server ./bin/server &&
    gow -o bytebase-bb     ./bin/bb
}
