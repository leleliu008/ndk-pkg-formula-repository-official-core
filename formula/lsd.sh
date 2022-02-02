package set summary "Next generation ls command"
package set git.url "https://github.com/Peltoche/lsd.git"
package set src.url "https://github.com/Peltoche/lsd/archive/0.21.0.tar.gz"
package set src.sum "f500c18221f9c3fd45f88f6f764001e99cf9d6d74af9172cbb9a9ff32f3e5c7d"
package set license "Apache-2.0"
package set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
