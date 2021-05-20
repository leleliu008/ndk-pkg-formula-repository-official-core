package set summary "Alternative to backtracking PCRE-style regular expression engines"
package set version "2021-02-02"
package set src.git "https://github.com/google/re2.git"
package set src.url "https://github.com/google/re2/archive/${PACKAGE_VERSION}.tar.gz"
package set src.sum "1396ab50c06c1a8885fb68bf49a5ecfd989163015fd96699a180d6414937f33f"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew -DRE2_BUILD_TESTING=OFF
}
