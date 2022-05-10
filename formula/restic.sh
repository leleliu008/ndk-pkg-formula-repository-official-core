pkg_set summary "Fast, efficient and secure backup program"
pkg_set webpage "https://restic.github.io/"
pkg_set git.url "https://github.com/restic/restic.git"
pkg_set src.url "https://github.com/restic/restic/archive/v0.13.1.tar.gz"
pkg_set src.sha "8430f80dc17b98fd78aca6f7d635bf12a486687677e15989a891ff4f6d8490a9"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION ./cmd/restic
}
