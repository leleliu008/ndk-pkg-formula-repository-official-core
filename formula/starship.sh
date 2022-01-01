package set summary "Cross-shell prompt for astronauts"
package set webpage "https://starship.rs"
package set git.url "https://github.com/starship/starship.git"
package set src.url "https://github.com/starship/starship/archive/v1.1.1.tar.gz"
package set src.sum "5c3ada4b888068ba41052eb66ddc44c87c9a7428bebcc8a5cb7246db0ed780bb"
package set license "ISC"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"

build() {
    cargow install --no-default-features --features http
}
