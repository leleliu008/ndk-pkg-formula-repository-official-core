package set summary "Alternative to backtracking PCRE-style regular expression engines"
package set git.url "https://github.com/google/re2.git"
package set src.url "https://github.com/google/re2/archive/2021-11-01.tar.gz"
package set version "20211101"
package set src.sum "8c45f7fba029ab41f2a7e6545058d9eec94eef97ce70df58e92d85cfc08b4669"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew -DRE2_BUILD_TESTING=OFF
}
