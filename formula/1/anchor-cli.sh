package set summary "Anchor developer tools"
package set git.url "https://github.com/project-serum/anchor.git"
package set src.url "https://github.com/project-serum/anchor/archive/refs/tags/v0.20.1.tar.gz"
package set src.sum "72adec98024338377b207944c764bb4c7180d93a7cb91cb0340f5911a1423e6d"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    cargow build --workspace
}
