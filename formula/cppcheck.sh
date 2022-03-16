package set summary "Static analysis tool for C and C++ code"
package set webpage "https://sourceforge.net/projects/cppcheck"
package set git.url "https://github.com/danmar/cppcheck.git"
package set src.url "https://github.com/danmar/cppcheck/archive/2.7.1.tar.gz"
package set src.sum "f4d4ec42eb214b113c6a7ca7aaf6bafa92c33029560223049b46ac12f17f54b8"
package set license "GPL-3.0-or-later"
package set dep.pkg "pcre libxml2"
package set bsystem "cmake"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
package set sdk.api 29
