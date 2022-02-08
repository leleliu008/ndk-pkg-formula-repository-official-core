package set summary "Static analysis tool for C and C++ code"
package set webpage "https://sourceforge.net/projects/cppcheck"
package set git.url "https://github.com/danmar/cppcheck.git"
package set src.url "https://github.com/danmar/cppcheck/archive/2.7.tar.gz"
package set src.sum "5fd20549bb2fabf9a8026f772779d8cc6a5782c8f17500408529f7747afbc526"
package set license "GPL-3.0-or-later"
package set dep.pkg "pcre libxml2"
#package set dep.cmd "pkg-config"
package set bsystem "cmake"

# stdlib.h: int getloadavg(double __averages[], int __n) __INTRODUCED_IN(29);
package set sdk.api 29
