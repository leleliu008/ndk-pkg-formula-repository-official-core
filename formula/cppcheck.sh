pkg_set summary "Static analysis tool for C and C++ code"
pkg_set webpage "https://sourceforge.net/projects/cppcheck"
pkg_set git.url "https://github.com/danmar/cppcheck.git"
pkg_set src.url "https://github.com/danmar/cppcheck/archive/2.7.4.tar.gz"
pkg_set src.sha "f0558c497b7807763325f3a821f1c72b743e5d888b037b8d32157dd07d6c26e1"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "pcre libxml2"
pkg_set bsystem "cmake"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
pkg_set sdk.api 29
