package set summary "A shell parser, formatter, and interpreter with bash support written in golang"
package set git.url "https://github.com/mvdan/sh.git"
package set src.url "https://github.com/mvdan/sh/archive/refs/tags/v3.4.1.tar.gz"
package set src.sum "a9e7a09dd0b099b8699b54af0e5911c19412dc7cea206e32377d974427688be1"
package set license "BSD-3-Clause"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o gosh  ./cmd/gosh  &&
    run go build -v -trimpath -ldflags="'-s -w'" -o shfmt ./cmd/shfmt &&
    run install_bins gosh shfmt
}
