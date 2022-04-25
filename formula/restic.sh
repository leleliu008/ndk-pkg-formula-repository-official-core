pkg_set summary "Fast, efficient and secure backup program"
pkg_set webpage "https://restic.github.io/"
pkg_set git.url "https://github.com/restic/restic.git"
pkg_set src.url "https://github.com/restic/restic/archive/v0.12.1.tar.gz"
pkg_set src.sha "a9c88d5288ce04a6cc78afcda7590d3124966dab3daa9908de9b3e492e2925fb"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION ./cmd/restic
}
