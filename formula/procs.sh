pkg_set summary "Modern replacement for ps written by Rust"
pkg_set git.url "https://github.com/dalance/procs.git"
pkg_set src.url "https://github.com/dalance/procs/archive/v0.12.3.tar.gz"
pkg_set src.sha "59720db4abdff1878492929b1c015dedff7cdc0ea2352b1360084e3bb4fbff33"
pkg_set license "MIT"
pkg_set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
pkg_set sdk.api 24
