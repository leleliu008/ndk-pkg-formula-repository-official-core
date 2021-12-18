package set summary "Static analysis tool for C and C++ code"
package set webpage "https://sourceforge.net/projects/cppcheck"
package set src.git "https://github.com/danmar/cppcheck.git"
package set src.url "https://github.com/danmar/cppcheck/archive/2.6.3.tar.gz"
package set src.sum "7a49ebb7a54356ade09867f466cb41ee4020ebf3732582762669e5c8903f16c8"
package set license "GPL-3.0-or-later"
package set dep.cmd "pkg-config"
package set dep.pkg "pcre libxml2"
package set bsystem "cmake"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
package set sdk.api 29
