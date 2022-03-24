package set summary "Modern shell for the GitHub era"
package set webpage "https://www.nushell.sh"
package set git.url "https://github.com/nushell/nushell.git"
package set src.url "https://github.com/nushell/nushell/archive/0.44.0.tar.gz"
package set src.sum "94bb003fd05b604a174a686c40286fef460bc06616a7d273c387a54a07576ecc"
package set license "MIT"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"
package set binbstd 'yes'

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
