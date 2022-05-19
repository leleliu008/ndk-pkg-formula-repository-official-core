pkg_set summary "Modern shell for the GitHub era"
pkg_set webpage "https://www.nushell.sh"
pkg_set git.url "https://github.com/nushell/nushell.git"
pkg_set src.url "https://github.com/nushell/nushell/archive/0.44.0.tar.gz"
pkg_set src.sha "94bb003fd05b604a174a686c40286fef460bc06616a7d273c387a54a07576ecc"
pkg_set license "MIT"
pkg_set dep.pkg "openssl"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cargo"
pkg_set binbstd "yes"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
pkg_set sdk.api 24
