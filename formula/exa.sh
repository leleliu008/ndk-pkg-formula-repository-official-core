pkg_set summary "Modern replacement for 'ls'"
pkg_set webpage "https://the.exa.website"
pkg_set git.url "https://github.com/ogham/exa.git"
pkg_set src.url "https://github.com/ogham/exa/archive/v0.10.1.tar.gz"
pkg_set src.sha "ff0fa0bfc4edef8bdbbb3cabe6fdbd5481a71abbbcc2159f402dea515353ae7c"
pkg_set license "MIT"
pkg_set dep.pkg "zlib libgit2"
pkg_set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
pkg_set sdk.api 24

build() {
    cargow install --locked
}
