package set summary "Validate and define text-based and dynamic configuration"
package set webpage "https://cuelang.org/"
package set src.git "https://github.com/cue-lang/cue.git"
package set src.url "https://github.com/cue-lang/cue/archive/v0.4.0.tar.gz"
package set src.sum "6989ada258115c24da78091e3692b94c54e33129f02e87ca4071240314cefebc"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w -X cuelang.org/go/cmd/cue/cmd.version=$PACKAGE_VERSION'" -o cmd/cue/cue ./cmd/cue &&
    run install_bins cmd/cue/cue
}
