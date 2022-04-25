pkg_set summary "Open source programming language to build simple/reliable/efficient software"
pkg_set webpage "https://go.dev/"
pkg_set version "1.17.3"
pkg_set src.url "https://go.dev/dl/go${PACKAGE_VERSION}.src.tar.gz"
pkg_set src.sha "705c64251e5b25d5d55ede1039c6aa22bea40a7a931d14c370339853643c3df0"
pkg_set license "BSD-3-Clause"
pkg_set bscript "src/cmd"
pkg_set bsystem "go"

build() {
    gow
    exit 1
}
