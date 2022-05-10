pkg_set summary "Modern replacement for ps written by Rust"
pkg_set git.url "https://github.com/dalance/procs.git"
pkg_set src.url "https://github.com/dalance/procs/archive/v0.12.2.tar.gz"
pkg_set src.sha "14be8440fe85dc46e544a3f7e89b887db455a61db981d5f75b91fd89b366d84f"
pkg_set license "MIT"
pkg_set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
pkg_set sdk.api 24
