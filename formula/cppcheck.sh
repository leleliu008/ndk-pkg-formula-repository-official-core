package set summary "Static analysis tool for C and C++ code"
package set webpage "https://sourceforge.net/projects/cppcheck"
package set src.git "https://github.com/danmar/cppcheck.git"
package set src.url "https://github.com/danmar/cppcheck/archive/2.6.1.tar.gz"
package set src.sum "41700db44b349428d5602356b32183b7776380e7a5b0b82a2f2764fadadb015e"
package set license "GPL-3.0-or-later"
package set dep.cmd "pkg-config"
package set dep.pkg "pcre libxml2"
package set bsystem "cmake"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
package set sdk.api 29
