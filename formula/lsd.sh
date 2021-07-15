package set summary "Next generation ls command"
package set src.git "https://github.com/Peltoche/lsd.git"
package set src.url "https://github.com/Peltoche/lsd/archive/0.20.1.tar.gz"
package set src.sum "a2086aa049b8bd21c880f23b21b0e9ef21d3c3829d40641aa8810c08be936c19"
package set license "Apache-2.0"
package set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
