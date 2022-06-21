pkg_set summary "Syntax-highlighting pager for git and diff output"
pkg_set git.url "https://github.com/dandavison/delta.git"
pkg_set src.url "https://github.com/dandavison/delta/archive/0.13.0.tar.gz"
pkg_set src.sha "5a0ba70a094a7884beb6f1efd4d155861e4b3e3584c452cabbce1607f8eb0f30"
pkg_set license "MIT"
pkg_set bsystem "cargo"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
pkg_set sdk.api 29
