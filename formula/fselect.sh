pkg_set summary "Find files with SQL-like queries"
pkg_set git.url "https://github.com/jhspetersson/fselect.git"
pkg_set src.url "https://github.com/jhspetersson/fselect/archive/0.8.1.tar.gz"
pkg_set src.sha "1456dd9172903cd997e7ade6ba45b5937cfce023682a2ceb140201b608fbc628"
pkg_set license "MIT"
pkg_set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
pkg_set sdk.api 24
