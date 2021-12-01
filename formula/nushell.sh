package set summary "Modern shell for the GitHub era"
package set webpage "https://www.nushell.sh"
package set src.git "https://github.com/nushell/nushell.git"
package set src.url "https://github.com/nushell/nushell/archive/0.40.0.tar.gz"
package set src.sum "fe8a7084cf2962b49144971375b7d07f32ba96fca267b5087d03f298ee53d106"
package set license "MIT"
package set dep.pkg "openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"
package set binsrcd 'yes'

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
