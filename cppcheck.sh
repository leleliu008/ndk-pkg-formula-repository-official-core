summary "Static analysis of C and C++ code"
webpage "https://sourceforge.net/projects/cppcheck"
src_git "https://github.com/danmar/cppcheck.git"
src_url "https://github.com/danmar/cppcheck/archive/2.4.1.tar.gz"
src_sum "11a9d9fe5305a105561655c45d2cd83cb30fbc87b41d0569de1b00a1a314867f"
license "GPL-3.0-or-later"
bsystem "cmake"
require "pkg-config"
depends "pcre libxml2"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
sdk_api 29
