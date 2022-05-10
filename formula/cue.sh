pkg_set summary "Validate and define text-based and dynamic configuration"
pkg_set webpage "https://cuelang.org/"
pkg_set git.url "https://github.com/cue-lang/cue.git"
pkg_set src.url "https://github.com/cue-lang/cue/archive/v0.4.3.tar.gz"
pkg_set src.sha "3d51f780f6d606a0341a5321b66e7d80bd54c294073c0d381e2ed96a3ae07c6e"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -X cuelang.org/go/cmd/cue/cmd.version=$PACKAGE_VERSION ./cmd/cue
}
