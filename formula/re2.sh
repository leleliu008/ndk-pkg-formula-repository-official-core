package set summary "Alternative to backtracking PCRE-style regular expression engines"
package set git.url "https://github.com/google/re2.git"
package set src.url "https://github.com/google/re2/archive/2022-02-01.tar.gz"
package set version "20220201"
package set src.sum "9c1e6acfd0fed71f40b025a7a1dabaf3ee2ebb74d64ced1f9ee1b0b01d22fd27"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew -DRE2_BUILD_TESTING=OFF
}
