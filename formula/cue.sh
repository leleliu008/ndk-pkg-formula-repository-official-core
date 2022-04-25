pkg_set summary "Validate and define text-based and dynamic configuration"
pkg_set webpage "https://cuelang.org/"
pkg_set git.url "https://github.com/cue-lang/cue.git"
pkg_set src.url "https://github.com/cue-lang/cue/archive/v0.4.2.tar.gz"
pkg_set src.sha "a45e45552b9b3e104fb65ec85891550d8675656be6dece3837334720be5d8150"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -X cuelang.org/go/cmd/cue/cmd.version=$PACKAGE_VERSION ./cmd/cue
}
