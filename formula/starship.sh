package set summary "Cross-shell prompt for astronauts"
package set webpage "https://starship.rs"
package set git.url "https://github.com/starship/starship.git"
package set src.url "https://github.com/starship/starship/archive/v1.1.1.tar.gz"
package set src.sum "5c3ada4b888068ba41052eb66ddc44c87c9a7428bebcc8a5cb7246db0ed780bb"
package set license "ISC"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"

# sys/resource.h: int prlimit(pid_t __pid, int __resource, const struct rlimit* __new_limit, struct rlimit* __old_limit) __INTRODUCED_IN_32(24) __INTRODUCED_IN_64(21);
#package set sdk.api 24

build() {
    cargow install --locked --no-default-features --features http
}
