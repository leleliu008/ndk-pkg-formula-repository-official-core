pkg_set summary "Static analysis tool for C and C++ code"
pkg_set webpage "https://sourceforge.net/projects/cppcheck"
pkg_set git.url "https://github.com/danmar/cppcheck.git"
pkg_set src.url "https://github.com/danmar/cppcheck/archive/2.7.5.tar.gz"
pkg_set src.sha "6c7ac29e57fa8b3ac7be224510200e579d5a90217e2152591ef46ffc947d8f78"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "pcre libxml2"
pkg_set bsystem "cmake"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
pkg_set sdk.api 29
