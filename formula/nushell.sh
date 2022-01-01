package set summary "Modern shell for the GitHub era"
package set webpage "https://www.nushell.sh"
package set git.url "https://github.com/nushell/nushell.git"
package set src.url "https://github.com/nushell/nushell/archive/0.42.0.tar.gz"
package set src.sum "68efbc58b1f7b4936a2f84903e093d66b172fb3d62f246966b8c5a8f8345eaae"
package set license "MIT"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"
package set binsrcd 'yes'

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
