package set summary "Modern replacement for 'ls'"
package set webpage "https://the.exa.website"
package set git.url "https://github.com/ogham/exa.git"
package set src.url "https://github.com/ogham/exa/archive/v0.10.1.tar.gz"
package set src.sum "ff0fa0bfc4edef8bdbbb3cabe6fdbd5481a71abbbcc2159f402dea515353ae7c"
package set license "MIT"
package set dep.pkg "zlib libgit2"
package set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
