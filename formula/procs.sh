package set summary "Modern replacement for ps written by Rust"
package set git.url "https://github.com/dalance/procs.git"
package set src.url "https://github.com/dalance/procs/archive/v0.12.1.tar.gz"
package set src.sum "ce84e98dd85cb8d5afda871ad2ddceb4faec077d9e019469aa668a75821e4fc2"
package set license "MIT"
package set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
package set sdk.api 24
