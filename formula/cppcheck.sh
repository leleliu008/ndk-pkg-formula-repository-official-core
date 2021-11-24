package set summary "Static analysis tool for C and C++ code"
package set webpage "https://sourceforge.net/projects/cppcheck"
package set src.git "https://github.com/danmar/cppcheck.git"
package set src.url "https://github.com/danmar/cppcheck/archive/2.6.2.tar.gz"
package set src.sum "a11602c15bf951ba5bb67655ca6c06986ec64770d8004759a8c53db013286a5e"
package set license "GPL-3.0-or-later"
package set dep.cmd "pkg-config"
package set dep.pkg "pcre libxml2"
package set bsystem "cmake"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
package set sdk.api 29
