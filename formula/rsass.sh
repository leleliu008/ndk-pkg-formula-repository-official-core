package set summary "Sass reimplemented in rust with nom."
package set git.url "https://github.com/kaj/rsass.git"
package set src.url "https://github.com/kaj/rsass/archive/refs/tags/v0.23.0.tar.gz"
package set src.sum "30a1e7c0561a463dce95f93f3faaac4eedee079f10ece08a210fba708704e8c3"
package set license "MIT"
package set bsystem "cargo"

build() {
    cargow install --features=commandline
}
