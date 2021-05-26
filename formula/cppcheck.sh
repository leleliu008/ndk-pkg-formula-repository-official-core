package set summary "Static analysis of C and C++ code"
package set webpage "https://sourceforge.net/projects/cppcheck"
package set src.git "https://github.com/danmar/cppcheck.git"
package set src.url "https://github.com/danmar/cppcheck/archive/2.4.1.tar.gz"
package set src.sum "11a9d9fe5305a105561655c45d2cd83cb30fbc87b41d0569de1b00a1a314867f"
package set license "GPL-3.0-or-later"
package set bsystem "cmake"
package set dep.cmd "pkg-config"
package set dep.pkg "pcre libxml2"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
package set sdk.api 29
