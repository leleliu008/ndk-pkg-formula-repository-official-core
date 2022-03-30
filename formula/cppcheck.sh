package set summary "Static analysis tool for C and C++ code"
package set webpage "https://sourceforge.net/projects/cppcheck"
package set git.url "https://github.com/danmar/cppcheck.git"
package set src.url "https://github.com/danmar/cppcheck/archive/2.7.4.tar.gz"
package set src.sum "f0558c497b7807763325f3a821f1c72b743e5d888b037b8d32157dd07d6c26e1"
package set license "GPL-3.0-or-later"
package set dep.pkg "pcre libxml2"
package set bsystem "cmake"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
package set sdk.api 29
