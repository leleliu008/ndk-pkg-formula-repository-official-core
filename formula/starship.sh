pkg_set summary "Cross-shell prompt for astronauts"
pkg_set webpage "https://starship.rs"
pkg_set git.url "https://github.com/starship/starship.git"
pkg_set src.url "https://github.com/starship/starship/archive/v1.8.0.tar.gz"
pkg_set src.sha "398bf5b413ce5dfe4d3c5acceb0025f773478f28016609869821cf385448dcf5"
pkg_set license "ISC"
pkg_set dep.pkg "openssl libgetloadavg"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cargo"

# sys/resource.h: int prlimit(pid_t __pid, int __resource, const struct rlimit* __new_limit, struct rlimit* __old_limit) __INTRODUCED_IN_32(24) __INTRODUCED_IN_64(21);
pkg_set sdk.api 24

build() {
    cargow install --locked --no-default-features
}
