package set summary "Modern shell for the GitHub era"
package set webpage "https://www.nushell.sh"
package set src.git "https://github.com/nushell/nushell.git"
package set src.url "https://github.com/nushell/nushell/archive/0.41.0.tar.gz"
package set src.sum "5730be0ed50069cdc5981097af086592f06a4e5cd1d02bd0ea10fc1860881695"
package set license "MIT"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"
package set binsrcd 'yes'

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
