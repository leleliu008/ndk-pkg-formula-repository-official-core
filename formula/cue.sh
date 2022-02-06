package set summary "Validate and define text-based and dynamic configuration"
package set webpage "https://cuelang.org/"
package set git.url "https://github.com/cue-lang/cue.git"
package set src.url "https://github.com/cue-lang/cue/archive/v0.4.2.tar.gz"
package set src.sum "a45e45552b9b3e104fb65ec85891550d8675656be6dece3837334720be5d8150"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -X cuelang.org/go/cmd/cue/cmd.version=$PACKAGE_VERSION ./cmd/cue
}
