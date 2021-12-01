package set summary "Cross-shell prompt for astronauts"
package set webpage "https://starship.rs"
package set src.git "https://github.com/starship/starship.git"
package set src.url "https://github.com/starship/starship/archive/v1.0.0.tar.gz"
package set src.sum "a66d47758b3dac4f1a626bb175c4847a2ef266540498a9f25222e715baf9f9db"
package set license "ISC"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"

build() {
    cargow install --no-default-features --features http
}
