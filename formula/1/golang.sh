package set summary "Open source programming language to build simple/reliable/efficient software"
package set webpage "https://go.dev/"
package set version "1.17.3"
package set src.url "https://go.dev/dl/go${PACKAGE_VERSION}.src.tar.gz"
package set src.sum "705c64251e5b25d5d55ede1039c6aa22bea40a7a931d14c370339853643c3df0"
package set license "BSD-3-Clause"
package set sourced "src/cmd"
package set bsystem "go"

build() {
    gow
    exit 1
}
