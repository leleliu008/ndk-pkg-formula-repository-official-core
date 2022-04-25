pkg_set summary "Cross-shell prompt for astronauts"
pkg_set webpage "https://starship.rs"
pkg_set git.url "https://github.com/starship/starship.git"
pkg_set src.url "https://github.com/starship/starship/archive/v1.4.2.tar.gz"
pkg_set src.sha "d7d1a4fb661c1612617306f4a99bacccdffca4210a51cb1b91e87fb005bbd32e"
pkg_set license "ISC"
pkg_set dep.pkg "openssl"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cargo"

# sys/resource.h: int prlimit(pid_t __pid, int __resource, const struct rlimit* __new_limit, struct rlimit* __old_limit) __INTRODUCED_IN_32(24) __INTRODUCED_IN_64(21);
pkg_set sdk.api 24

build() {
    cargow install --locked --no-default-features
}
