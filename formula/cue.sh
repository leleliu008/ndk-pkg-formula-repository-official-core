package set summary "Validate and define text-based and dynamic configuration"
package set webpage "https://cuelang.org/"
package set git.url "https://github.com/cue-lang/cue.git"
package set src.url "https://github.com/cue-lang/cue/archive/v0.4.1.tar.gz"
package set src.sum "40728522fd6a58eeadc0525f07eb7b6b2baabff5cbf458f5c13cf25bbdb820cd"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -X cuelang.org/go/cmd/cue/cmd.version=$PACKAGE_VERSION ./cmd/cue
}
