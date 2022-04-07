package set summary "Alternative to backtracking PCRE-style regular expression engines"
package set git.url "https://github.com/google/re2.git"
package set src.url "https://github.com/google/re2/archive/2022-04-01.tar.gz"
package set version "20220401"
package set src.sum "1ae8ccfdb1066a731bba6ee0881baad5efd2cd661acd9569b689f2586e1a50e9"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew -DRE2_BUILD_TESTING=OFF
}
