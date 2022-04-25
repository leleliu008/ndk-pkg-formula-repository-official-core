pkg_set summary "A shell parser, formatter, and interpreter with bash support written in golang"
pkg_set git.url "https://github.com/mvdan/sh.git"
pkg_set src.url "https://github.com/mvdan/sh/archive/refs/tags/v3.4.1.tar.gz"
pkg_set src.sha "a9e7a09dd0b099b8699b54af0e5911c19412dc7cea206e32377d974427688be1"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "go"

build() {
    for item in gosh shfmt
    do
        gow ./cmd/$item || return 1
    done
}
