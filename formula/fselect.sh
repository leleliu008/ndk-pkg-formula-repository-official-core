pkg_set summary "Find files with SQL-like queries"
pkg_set git.url "https://github.com/jhspetersson/fselect.git"
pkg_set src.url "https://github.com/jhspetersson/fselect/archive/0.8.0.tar.gz"
pkg_set src.sha "33dfcbbf7e598bce479b1fb5c17429af1bb309beab2e4bc95642e9f4b5c2ffbd"
pkg_set license "MIT"
pkg_set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
pkg_set sdk.api 24
