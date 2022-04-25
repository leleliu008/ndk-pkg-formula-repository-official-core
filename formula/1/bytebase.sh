pkg_set summary "Web-based, zero-config, dependency-free database schema change and version control tool for teams."
pkg_set webpage "https://bytebase.com/"
pkg_set git.url "https://github.com/bytebase/bytebase.git"
pkg_set src.url "https://github.com/bytebase/bytebase/archive/refs/tags/0.12.0.tar.gz"
pkg_set src.sha "b74fb9f05b2fa15ed1b4695573257884b5c159da48b3cdd2f3eb2d660df7ac4d"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -o bytebase-server ./bin/server &&
    gow -o bytebase-bb     ./bin/bb
}
