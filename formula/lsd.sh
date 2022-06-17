pkg_set summary "Next generation ls command"
pkg_set git.url "https://github.com/Peltoche/lsd.git"
pkg_set src.url "https://github.com/Peltoche/lsd/archive/0.22.0.tar.gz"
pkg_set src.sha "30ad1b1d014c7b6a2fca44c6de3b17198c84168d34fc946245d67094ebc0f7ed"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"

# int getgrgid_r(gid_t __gid, struct group* __group, char* __buf, size_t __n, struct group** __result) __INTRODUCED_IN(24);
pkg_set sdk.api 24
