pkg_set summary "Alternative to backtracking PCRE-style regular expression engines"
pkg_set git.url "https://github.com/google/re2.git"
pkg_set src.url "https://github.com/google/re2/archive/2022-04-01.tar.gz"
pkg_set version "20220401"
pkg_set src.sha "1ae8ccfdb1066a731bba6ee0881baad5efd2cd661acd9569b689f2586e1a50e9"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "cmake"

build() {
    cmakew -DRE2_BUILD_TESTING=OFF
}
