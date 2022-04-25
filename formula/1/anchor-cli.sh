pkg_set summary "Anchor developer tools"
pkg_set git.url "https://github.com/project-serum/anchor.git"
pkg_set src.url "https://github.com/project-serum/anchor/archive/refs/tags/v0.20.1.tar.gz"
pkg_set src.sha "72adec98024338377b207944c764bb4c7180d93a7cb91cb0340f5911a1423e6d"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"

build() {
    cargow build --workspace
}
