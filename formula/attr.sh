pkg_set summary "C library and utilities for Manipulating Filesystem Extended Attributes"
pkg_set webpage "https://savannah.nongnu.org/projects/attr"
pkg_set src.url "https://download.savannah.nongnu.org/releases/attr/attr-2.5.1.tar.gz"
pkg_set src.sha "bae1c6949b258a0d68001367ce0c741cebdacdd3b62965d17e5eb23cd78adaf8"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"

# void seekdir(DIR* __dir, long __location) __INTRODUCED_IN(23);
# long telldir(DIR* __dir) __INTRODUCED_IN(23);
pkg_set sdk.api 23
