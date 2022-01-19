package set summary "Fast, efficient and secure backup program"
package set webpage "https://restic.github.io/"
package set git.url "https://github.com/restic/restic.git"
package set src.url "https://github.com/restic/restic/archive/v0.12.1.tar.gz"
package set src.sum "a9c88d5288ce04a6cc78afcda7590d3124966dab3daa9908de9b3e492e2925fb"
package set license "BSD-2-Clause"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION ./cmd/restic
}
