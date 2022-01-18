package set summary "Modern replacement for ps written by Rust"
package set git.url "https://github.com/dalance/procs.git"
#package set src.url "https://github.com/dalance/procs/archive/v0.12.0.tar.gz"
#package set src.sum "04dbb3ddc734a9d1305b26b546a913e3e04d556b5863212a2675d29268aebed3"
package set license "MIT"
package set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
